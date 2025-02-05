----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:18:35 11/18/2024 
-- Design Name: 
-- Module Name:    RegisterFile - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RegisterFile is	
	Generic(n:integer:=32);
	port(
	clk:in std_logic;
	rst:in std_logic;
	--regs selection
	write_sel:in std_logic_vector(4 downto 0);
	read_sel1:in std_logic_vector(4 downto 0);
	read_sel2:in std_logic_vector(4 downto 0);
	
	--writing
	write_ena: in std_logic;
	write_data:in std_logic_vector(n-1 downto 0);
	
	--muxs out
	
	data1:out std_logic_vector(n-1 downto 0);
	data2:out std_logic_vector(n-1 downto 0)
	
);

end RegisterFile;

architecture Behavioral of RegisterFile is



--decoder out
signal r0 : std_logic;
signal r1 : std_logic;
signal r2 : std_logic;
signal r3 : std_logic;
signal r4 : std_logic;
signal r5 : std_logic;
signal r6 : std_logic;
signal r7 : std_logic;
signal r8 : std_logic;
signal r9 : std_logic;
signal r10 : std_logic;
signal r11 : std_logic;
signal r12 : std_logic;
signal r13 : std_logic;
signal r14 : std_logic;
signal r15 : std_logic;
signal r16 : std_logic;
signal r17 : std_logic;
signal r18 : std_logic;
signal r19 : std_logic;
signal r20 : std_logic;
signal r21 : std_logic;
signal r22 : std_logic;
signal r23 : std_logic;
signal r24 : std_logic;
signal r25 : std_logic;
signal r26 : std_logic;
signal r27 : std_logic;
signal r28 : std_logic;
signal r29 : std_logic;
signal r30 : std_logic;
signal r31 : std_logic;

--regs out

signal rOut0 : std_logic_vector(n-1 downto 0);
signal rOut1 : std_logic_vector(n-1 downto 0);
signal rOut2 : std_logic_vector(n-1 downto 0);
signal rOut3 : std_logic_vector(n-1 downto 0);
signal rOut4 : std_logic_vector(n-1 downto 0);
signal rOut5 : std_logic_vector(n-1 downto 0);
signal rOut6 : std_logic_vector(n-1 downto 0);
signal rOut7 : std_logic_vector(n-1 downto 0);
signal rOut8 : std_logic_vector(n-1 downto 0);
signal rOut9 : std_logic_vector(n-1 downto 0);
signal rOut10 : std_logic_vector(n-1 downto 0);
signal rOut11 : std_logic_vector(n-1 downto 0);
signal rOut12 : std_logic_vector(n-1 downto 0);
signal rOut13 : std_logic_vector(n-1 downto 0);
signal rOut14 : std_logic_vector(n-1 downto 0);
signal rOut15 : std_logic_vector(n-1 downto 0);
signal rOut16 : std_logic_vector(n-1 downto 0);
signal rOut17 : std_logic_vector(n-1 downto 0);
signal rOut18 : std_logic_vector(n-1 downto 0);
signal rOut19 : std_logic_vector(n-1 downto 0);
signal rOut20 : std_logic_vector(n-1 downto 0);
signal rOut21 : std_logic_vector(n-1 downto 0);
signal rOut22 : std_logic_vector(n-1 downto 0);
signal rOut23 : std_logic_vector(n-1 downto 0);
signal rOut24 : std_logic_vector(n-1 downto 0);
signal rOut25 : std_logic_vector(n-1 downto 0);
signal rOut26 : std_logic_vector(n-1 downto 0);
signal rOut27 : std_logic_vector(n-1 downto 0);
signal rOut28 : std_logic_vector(n-1 downto 0);
signal rOut29 : std_logic_vector(n-1 downto 0);
signal rOut30 : std_logic_vector(n-1 downto 0);
signal rOut31 : std_logic_vector(n-1 downto 0);


begin


--decoder
dec: Decoder generic map(n =>5) port map(write_sel,r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31);

--registers and connection between deoder and registers

zero: flopr generic map(n => 32) port map(clk, '1', r0 and write_ena, rOut0, write_data);
at: flopr generic map(n => 32) port map(clk, rst, r1 and write_ena, rOut1, write_data);
v0: flopr generic map(n => 32) port map(clk, rst, r2 and write_ena, rOut2, write_data);
v1: flopr generic map(n => 32) port map(clk, rst, r3 and write_ena, rOut3, write_data);
a0: flopr generic map(n => 32) port map(clk, rst, r4 and write_ena, rOut4, write_data);
a1: flopr generic map(n => 32) port map(clk, rst, r5 and write_ena, rOut5, write_data);
a2: flopr generic map(n => 32) port map(clk, rst, r6 and write_ena, rOut6, write_data);
a3: flopr generic map(n => 32) port map(clk, rst, r7 and write_ena, rOut7, write_data);
t0: flopr generic map(n => 32) port map(clk, rst, r8 and write_ena, rOut8, write_data);
t1: flopr generic map(n => 32) port map(clk, rst, r9 and write_ena, rOut9, write_data);
t2: flopr generic map(n => 32) port map(clk, rst, r10 and write_ena, rOut10, write_data);
t3: flopr generic map(n => 32) port map(clk, rst, r11 and write_ena, rOut11, write_data);
t4: flopr generic map(n => 32) port map(clk, rst, r12 and write_ena, rOut12, write_data);
t5: flopr generic map(n => 32) port map(clk, rst, r13 and write_ena, rOut13, write_data);
t6: flopr generic map(n => 32) port map(clk, rst, r14 and write_ena, rOut14, write_data);
t7: flopr generic map(n => 32) port map(clk, rst, r15 and write_ena, rOut15, write_data);
s0: flopr generic map(n => 32) port map(clk, rst, r16 and write_ena, rOut16, write_data);
s1: flopr generic map(n => 32) port map(clk, rst, r17 and write_ena, rOut17, write_data);
s2: flopr generic map(n => 32) port map(clk, rst, r18 and write_ena, rOut18, write_data);
s3: flopr generic map(n => 32) port map(clk, rst, r19 and write_ena, rOut19, write_data);
s4: flopr generic map(n => 32) port map(clk, rst, r20 and write_ena, rOut20, write_data);
s5: flopr generic map(n => 32) port map(clk, rst, r21 and write_ena, rOut21, write_data);
s6: flopr generic map(n => 32) port map(clk, rst, r22 and write_ena, rOut22, write_data);
s7: flopr generic map(n => 32) port map(clk, rst, r23 and write_ena, rOut23, write_data);
t8: flopr generic map(n => 32) port map(clk, rst, r24 and write_ena, rOut24, write_data);
t9: flopr generic map(n => 32) port map(clk, rst, r25 and write_ena, rOut25, write_data);
k0: flopr generic map(n => 32) port map(clk, rst, r26 and write_ena, rOut26, write_data);
k1: flopr generic map(n => 32) port map(clk, rst, r27 and write_ena, rOut27, write_data);
gp: flopr generic map(n => 32) port map(clk, rst, r28 and write_ena, rOut28, write_data);
sp: flopr generic map(n => 32) port map(clk, rst, r29 and write_ena, rOut29, write_data);
fp: flopr generic map(n => 32) port map(clk, rst, r30 and write_ena, rOut30, write_data);
ra: flopr generic map(n => 32) port map(clk, rst, r31 and write_ena, rOut31, write_data);

-- the two multiplexers

mux1:Mux generic map(n=>32) port map(rOut0,rOut1,rOut2,rOut3,rOut4,rOut5,rOut6,rOut7,rOut8,rOut9,rOut10,rOut11,rOut12,rOut13,rOut14,rOut15,rOut16,rOut17,rOut18,rOut19,rOut20,rOut21,rOut22,rOut23,rOut24,rOut25,rOut26,rOut27,rOut28,rOut29,rOut30,rOut31,read_sel1,data1);
mux2:Mux generic map(n=>32) port map(rOut0,rOut1,rOut2,rOut3,rOut4,rOut5,rOut6,rOut7,rOut8,rOut9,rOut10,rOut11,rOut12,rOut13,rOut14,rOut15,rOut16,rOut17,rOut18,rOut19,rOut20,rOut21,rOut22,rOut23,rOut24,rOut25,rOut26,rOut27,rOut28,rOut29,rOut30,rOut31,read_sel2,data2);

end Behavioral;

