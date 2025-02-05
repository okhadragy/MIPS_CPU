----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:25:12 11/18/2024 
-- Design Name: 
-- Module Name:    datapath - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.mypackage.all;

entity Datapath is
	 Generic ( n: integer:=32 );
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           instr : in  STD_LOGIC_VECTOR (n-1 downto 0);
           alucontrol : in  STD_LOGIC_VECTOR (3 downto 0);
           zero : out  STD_LOGIC;
			  pc : inout  STD_LOGIC_VECTOR (n-1 downto 0);
			  RegDst : in  STD_LOGIC;
			  Jump : in  STD_LOGIC;
			  Branch : in  STD_LOGIC;
			  memtoreg : in  STD_LOGIC;
			  ALUsrc : in  STD_LOGIC;
           regwrite : in  STD_LOGIC;
           aluout, writedata : inout  STD_LOGIC_VECTOR (n-1 downto 0);
			  readdata : in STD_LOGIC_VECTOR (n-1 downto 0));
end Datapath;

architecture Behavioral of datapath is

signal next_address : STD_LOGIC_VECTOR (n-1 downto 0);
signal pc_out_address : STD_LOGIC_VECTOR (n-1 downto 0);
signal read_address_4 : STD_LOGIC_VECTOR (n-1 downto 0);
signal data_1 : STD_LOGIC_VECTOR (n-1 downto 0);
signal alu_data_2 : STD_LOGIC_VECTOR (n-1 downto 0);
signal read_sel1 : STD_LOGIC_VECTOR (4 downto 0);
signal read_sel2 : STD_LOGIC_VECTOR (4 downto 0);
signal write_sel : STD_LOGIC_VECTOR (4 downto 0);
signal offset : STD_LOGIC_VECTOR (n-1 downto 0);
signal shifted_offset : STD_LOGIC_VECTOR (n-1 downto 0);
signal offset_address : STD_LOGIC_VECTOR (n-1 downto 0);
signal jump_address : STD_LOGIC_VECTOR (27 downto 0);
signal final_jump_address : STD_LOGIC_VECTOR (n-1 downto 0);
signal mux3_result : STD_LOGIC_VECTOR (n-1 downto 0);
signal mux4_result : STD_LOGIC_VECTOR (n-1 downto 0);
signal zflag : STD_LOGIC;

begin
	
	-- Register file
	read_sel1 <= instr(25 downto 21); 
	read_sel2 <= instr(20 downto 16);
	mux1: Mux2x1 generic map (n=>5) port map(instr(20 downto 16),instr(15 downto 11), RegDst, write_sel);
			
	myregisterfile: RegisterFile generic map (
			n => n
	)
	PORT MAP (
			 rst => reset,
          read_sel1 => read_sel1,
          read_sel2 => read_sel2,
          write_sel => write_sel,
          write_ena => regwrite,
          clk => clk,
          write_data => mux3_result,
          data1 => data_1,
          data2 => writedata
        );
	
	-- Alu
	mysign_extension: Sign_extension generic map (16,n) port map(instr(15 downto 0), offset);
	mux2: Mux2x1 generic map (n) port map(writedata, offset, ALUsrc, alu_data_2);
	
	myalu: ALU generic map (
			n => 32
	)
	PORT MAP (
          data1 => data_1,
          data2 => alu_data_2,
          aluop => alucontrol,
          dataout => aluout,
          zflag => zflag
        );
		  
	zero <= zflag;
	
	-- Mmeory
	mux3: Mux2x1 generic map (n) port map(aluout, readdata, memtoreg, mux3_result);
	
	-- PC
	pc1: flopr generic map(n => n) port map(clk, reset, '1', pc, next_address);
   adder1: Adder generic map(n => n) port map(pc,x"0000000"&"0100",read_address_4);
	shifter1: Shifter generic map(26,28,2) port map(instr(25 downto 0),jump_address);
	final_jump_address <= read_address_4(31 downto 28) & jump_address;
	shifter2: Shifter generic map(n,n,2) port map(offset,shifted_offset);
	adder2: Adder generic map(n => n) port map(read_address_4,shifted_offset,offset_address);
	mux4: Mux2x1 generic map (n) port map(read_address_4, offset_address, Branch and zflag, mux4_result);
	mux5: Mux2x1 generic map (n) port map(mux4_result, final_jump_address, Jump, next_address);
	
			
end Behavioral;
	