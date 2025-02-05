----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:24:42 10/13/2024 
-- Design Name: 
-- Module Name:    sl2 - Behavioral 
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

entity Mux is
	 Generic(n: integer:=32);
    Port (	 I0 : in  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				 I1 : in  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				 I2 : in  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				 I3 : in  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				 I4 : in  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				 I5 : in  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				 I6 : in  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				 I7 : in  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				 I8 : in  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				 I9 : in  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				 I10 : in  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				 I11 : in  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				 I12 : in  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				 I13 : in  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				 I14 : in  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				 I15 : in  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				 I16 : in  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				 I17 : in  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				 I18 : in  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				 I19 : in  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				 I20 : in  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				 I21 : in  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				 I22 : in  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				 I23 : in  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				 I24 : in  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				 I25 : in  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				 I26 : in  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				 I27 : in  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				 I28 : in  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				 I29 : in  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				 I30 : in  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				 I31 : in  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				 readReg : in  STD_LOGIC_vector(4 downto 0);
             muxDataOut : out STD_LOGIC_VECTOR(n-1 DOWNTO 0));
end Mux;

architecture Behavioral of Mux is

begin

	muxDataOut <= I0 WHEN readReg="00000" ELSE
		           I1 WHEN readReg="00001" ELSE
		           I2  WHEN readReg = "00010" ELSE
					  I3  WHEN readReg = "00011" ELSE
                 I4  WHEN readReg = "00100" ELSE
                 I5  WHEN readReg = "00101" ELSE
                 I6  WHEN readReg = "00110" ELSE
                 I7  WHEN readReg = "00111" ELSE
                 I8  WHEN readReg = "01000" ELSE
                 I9  WHEN readReg = "01001" ELSE
                 I10 WHEN readReg = "01010" ELSE
                 I11 WHEN readReg = "01011" ELSE
                 I12 WHEN readReg = "01100" ELSE
                 I13 WHEN readReg = "01101" ELSE
                 I14 WHEN readReg = "01110" ELSE
                 I15 WHEN readReg = "01111" ELSE
                 I16 WHEN readReg = "10000" ELSE
                 I17 WHEN readReg = "10001" ELSE
                 I18 WHEN readReg = "10010" ELSE
                 I19 WHEN readReg = "10011" ELSE
                 I20 WHEN readReg = "10100" ELSE
                 I21 WHEN readReg = "10101" ELSE
                 I22 WHEN readReg = "10110" ELSE
                 I23 WHEN readReg = "10111" ELSE
                 I24 WHEN readReg = "11000" ELSE
                 I25 WHEN readReg = "11001" ELSE
                 I26 WHEN readReg = "11010" ELSE
                 I27 WHEN readReg = "11011" ELSE
                 I28 WHEN readReg = "11100" ELSE
                 I29 WHEN readReg = "11101" ELSE
                 I30 WHEN readReg = "11110" ELSE
                 I31 WHEN readReg = "11111" ELSE
					  "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";

end Behavioral;

