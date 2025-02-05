----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:21:11 11/18/2024 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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
use IEEE.STD_LOGIC_unsigned.ALL;

entity ALU is
	 generic (n:integer:=32);
    Port ( data1 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           data2 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           aluop : in  STD_LOGIC_VECTOR (3 downto 0);
           dataout : out  STD_LOGIC_VECTOR (n-1 downto 0);
           zflag : out  STD_LOGIC);
end ALU;

architecture Behavioral of ALU is

signal data : STD_LOGIC_VECTOR (n-1 downto 0);
signal data_1 : STD_LOGIC_VECTOR (n-1 downto 0);
signal data_2 : STD_LOGIC_VECTOR (n-1 downto 0);
signal sum : STD_LOGIC_VECTOR (n-1 downto 0);

begin

data_1 <= data1 when aluop(3)='0' Else
			 not data1;
			 
data_2 <= data2 when aluop(2)='0' Else
			 not data2;

sum <= data_1 + data_2 + aluop(3) + aluop(2);

data <= data_1 and data_2 when aluop(1 downto 0) = "00" Else
		  data_1 or data_2 when aluop(1 downto 0) = "01" Else
		  sum when aluop(1 downto 0) = "10" Else
		  x"0000000" & "000" & sum(31) when aluop(1 downto 0) = "11";

dataout <= data;

zflag <= '1' when data = X"00000000" Else
			'0';

end Behavioral; 

