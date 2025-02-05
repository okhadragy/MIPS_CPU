----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:55:46 12/10/2024 
-- Design Name: 
-- Module Name:    MAINDECODER - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MAINDECODER is
    Port ( opcode : in  STD_LOGIC_VECTOR (5 downto 0);
            memwrite : out  STD_LOGIC;
           memtoreg  : out  STD_LOGIC;
           regdst  : out  STD_LOGIC;
           regwrite  : out  STD_LOGIC;
           alusrc  : out  STD_LOGIC;
           branch  : out  STD_LOGIC;
           aluop  : out  STD_LOGIC_VECTOR (1 downto 0);
           jump  : out  STD_LOGIC);
end MAINDECODER;

architecture Behavioral of MAINDECODER is

signal controls : STD_LOGIC_VECTOR (8 downto 0);
begin
process(opcode)

  begin
		case opcode is
		when "000000" =>  controls <= "110000010";    --R type --regwrite regdst
		when "100011" =>  controls <= "101001000";		--LW regwrite alusrc memtoreg
		when "101011" =>  controls <= "001010000"	;	--sW	alusrc memwrite 2 don't cares regdst,memtoreg
		when "000100" =>  controls <= "000100001"	;	--BEQ branch   2 don't cares regdst,memtoreg
		when "001000" =>  controls <= "101000000"	;	--ADDI regwrite alusrc
		when "000010" =>  controls <= "000000100"	;	--JUMP  jump  all don't care except regwrite memwrite
		when others => controls <= "---------"; 
		end case;
		end process;
   regwrite <= controls(8);
	regdst <= controls(7);
	alusrc <= controls(6);
	branch <= controls(5);
	memwrite <= controls(4);
	memtoreg <= controls(3);
	jump <= controls(2);
	aluop <= controls(1 downto 0);
	
end Behavioral;

