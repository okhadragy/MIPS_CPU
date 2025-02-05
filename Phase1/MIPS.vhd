----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:30:01 12/18/2024 
-- Design Name: 
-- Module Name:    MIPS - Behavioral 
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


entity MIPS is
	 Generic ( n: integer:=32 );
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           pc : out  STD_LOGIC_VECTOR (n-1 downto 0);
           instr : in  STD_LOGIC_VECTOR (n-1 downto 0);
           memwrite : out  STD_LOGIC;
           aluout : out  STD_LOGIC_VECTOR (n-1 downto 0);
           writedata : out  STD_LOGIC_VECTOR (n-1 downto 0);
           readdata : in  STD_LOGIC_VECTOR (n-1 downto 0));
end MIPS;

architecture Behavioral of MIPS is

signal pcsignal : STD_LOGIC_VECTOR (n-1 downto 0);
signal RegDst : STD_LOGIC;
signal Jump : STD_LOGIC;
signal Branch : STD_LOGIC;
signal memtoreg : STD_LOGIC;
signal ALUsrc : STD_LOGIC;
signal regwrite : STD_LOGIC;
signal alucontrol : STD_LOGIC_VECTOR (3 downto 0);
signal aluoutsignal : STD_LOGIC_VECTOR (n-1 downto 0);
signal writedatasignal : STD_LOGIC_VECTOR (n-1 downto 0);
signal zero : STD_LOGIC;


begin
mydatapath: Datapath generic map (
			n => n
	)
	PORT MAP (
			 clk => clk,
          reset => reset,
          instr => instr,
          alucontrol => alucontrol,
          zero => zero,
			 pc => pcsignal,
			 RegDst => RegDst,
			 Jump => Jump,
			 Branch => Branch,
			 memtoreg => memtoreg,
			 ALUsrc => ALUsrc,
          regwrite => regwrite,
          aluout => aluoutsignal,
			 writedata => writedatasignal,
			 readdata => readdata
        );

pc <= pcsignal;
aluout <= aluoutsignal;
writedata <= writedatasignal;

mycontroller: Controller
	PORT MAP (
			 op => instr(31 downto 26),
          funct => instr(5 downto 0),
          zero => zero,
          memtoreg => memtoreg,
          memwrite => memwrite,
          pcsrc => Branch,
          alusrc => ALUsrc,
          regdst => RegDst,
          regwrite => regwrite,
          jump => Jump,
          alucontrol => alucontrol
        );


end Behavioral;

