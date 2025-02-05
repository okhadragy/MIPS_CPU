----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:23:04 11/17/2024 
-- Design Name: 
-- Module Name:    flopr - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity flopr is
	 generic(n:integer:=32);
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
			  regWrite:in std_logic;

           q : out  STD_LOGIC_vector(n-1 downto 0);
           d : in  STD_LOGIC_vector(n-1 downto 0));
end flopr;

architecture Behavioral of flopr is

begin
process(clk,rst)
begin
if(rst='1') then
	q<=(others=>'0');
elsif(clk'event and clk='0' and regWrite='1') then
	q<=d;
elsif(clk'event and clk='1') then
	null;

end if;
end process;

end Behavioral;

