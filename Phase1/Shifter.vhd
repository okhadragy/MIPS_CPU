----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:10:27 12/05/2024 
-- Design Name: 
-- Module Name:    Shifter - Behavioral 
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

entity Shifter is
	 Generic ( i_n : integer:=32;
				  o_n : integer:=32;
				  shift_n : integer:=2);
    Port ( I : in  STD_LOGIC_VECTOR (i_n-1 downto 0);
           O : out  STD_LOGIC_VECTOR (o_n-1 downto 0));
end Shifter;

architecture Behavioral of Shifter is
signal shift: STD_LOGIC_VECTOR (shift_n-1 downto 0);
begin
shift <= (others => '0');
O <= I((o_n-shift_n-1) downto 0) & shift;

end Behavioral;

