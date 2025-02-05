----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:06:15 12/05/2024 
-- Design Name: 
-- Module Name:    Mux2x1 - Behavioral 
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

entity Mux2x1 is
	 Generic (n: integer:=32 );
    Port ( I0 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I1 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           S : in  STD_LOGIC;
           O : out  STD_LOGIC_VECTOR (n-1 downto 0));
end Mux2x1;

architecture Behavioral of MUX2x1 is

begin
O <= I0 WHEN s = '0' ELSE
     I1 WHEN s = '1' ELSE
	  (others => 'Z');

end Behavioral;

