----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:51:35 12/18/2024 
-- Design Name: 
-- Module Name:    top - Behavioral 
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


entity top is
	 Generic ( n: integer:=32 );
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           writedata : out  STD_LOGIC_VECTOR (31 downto 0);
           dataadr : out  STD_LOGIC_VECTOR (31 downto 0);
           memwrite : out  STD_LOGIC);
end top;

architecture Behavioral of top is
signal pc : STD_LOGIC_VECTOR (n-1 downto 0);
signal instr : STD_LOGIC_VECTOR (n-1 downto 0);
signal aluout : STD_LOGIC_VECTOR (n-1 downto 0);
signal rd : STD_LOGIC_VECTOR (n-1 downto 0);
signal wd : STD_LOGIC_VECTOR (n-1 downto 0);
signal we : STD_LOGIC;

begin


mymips:MIPS Generic map ( n=>n )
    Port map ( clk => clk,
           reset => reset,
           pc => pc,
           instr => instr,
           memwrite => we,
           aluout => aluout,
           writedata => wd,
           readdata => rd
);

myimem: imem port map (
	a => pc(7 downto 2),
	rd => instr
);

mydmem: dmem port map ( 
	clk => clk, 
	we => we,
	a => aluout, 
	wd => wd,
	rd => rd
);

dataadr <= aluout;
memwrite <= we;
writedata <= wd;

end Behavioral;

