----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:41:59 11/21/2024 
-- Design Name: 
-- Module Name:    decoderBehaves - Behavioral 
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

entity Decoder is
	 Generic(n:integer:=5);
    Port (  x : in  STD_LOGIC_vector(n-1 downto 0);
            y0 : out STD_LOGIC;
			   y1 : out STD_LOGIC;
            y2 : out STD_LOGIC;
				y3 : out STD_LOGIC;
				y4 : out STD_LOGIC;
				y5 : out STD_LOGIC;
				y6 : out STD_LOGIC;
				y7 : out STD_LOGIC;
				y8 : out STD_LOGIC;
				y9 : out STD_LOGIC;
				y10 : out STD_LOGIC;
				y11 : out STD_LOGIC;
				y12 : out STD_LOGIC;
				y13 : out STD_LOGIC;
				y14 : out STD_LOGIC;
				y15 : out STD_LOGIC;
				y16 : out STD_LOGIC;
				y17 : out STD_LOGIC;
				y18 : out STD_LOGIC;
				y19 : out STD_LOGIC;
				y20 : out STD_LOGIC;
				y21 : out STD_LOGIC;
				y22 : out STD_LOGIC;
				y23 : out STD_LOGIC;
				y24 : out STD_LOGIC;
				y25 : out STD_LOGIC;
				y26 : out STD_LOGIC;
				y27 : out STD_LOGIC;
				y28 : out STD_LOGIC;
				y29 : out STD_LOGIC;
				y30 : out STD_LOGIC;
				y31 : out STD_LOGIC );
end Decoder;

architecture Behavioral of Decoder is

begin
		y0<='0';
		y1 <= '1' when x = "00001" else '0';
		y2 <= '1' when x = "00010" else '0';
		y3 <= '1' when x = "00011" else '0';
		y4 <= '1' when x = "00100" else '0';
		y5 <= '1' when x = "00101" else '0';
		y6 <= '1' when x = "00110" else '0';
		y7 <= '1' when x = "00111" else '0';
		y8 <= '1' when x = "01000" else '0';
		y9 <= '1' when x = "01001" else '0';
		y10 <= '1' when x = "01010" else '0';
		y11 <= '1' when x = "01011" else '0';
		y12 <= '1' when x = "01100" else '0';
		y13 <= '1' when x = "01101" else '0';
		y14 <= '1' when x = "01110" else '0';
		y15 <= '1' when x = "01111" else '0';
		y16 <= '1' when x = "10000" else '0';
		y17 <= '1' when x = "10001" else '0';
		y18 <= '1' when x = "10010" else '0';
		y19 <= '1' when x = "10011" else '0';
		y20 <= '1' when x = "10100" else '0';
		y21 <= '1' when x = "10101" else '0';
		y22 <= '1' when x = "10110" else '0';
		y23 <= '1' when x = "10111" else '0';
		y24 <= '1' when x = "11000" else '0';
		y25 <= '1' when x = "11001" else '0';
		y26 <= '1' when x = "11010" else '0';
		y27 <= '1' when x = "11011" else '0';
		y28 <= '1' when x = "11100" else '0';
		y29 <= '1' when x = "11101" else '0';
		y30 <= '1' when x = "11110" else '0';
		y31 <= '1' when x = "11111" else '0';
		



end Behavioral;

