----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:18:44 12/05/2024 
-- Design Name: 
-- Module Name:    Sign_extension - Behavioral 
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


entity Sign_extension is
	 Generic (i_n : integer:=16;
				 o_n : integer:=32);
    Port ( I : in  STD_LOGIC_VECTOR (i_n-1 downto 0);
           O : out  STD_LOGIC_VECTOR (o_n-1 downto 0));
end Sign_extension;

architecture Behavioral of Sign_extension is

signal sign : STD_LOGIC_VECTOR (i_n-1 downto 0);
begin

sign <= (others => I(i_n-1));
O <= sign & I;

end Behavioral;

