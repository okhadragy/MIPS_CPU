----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:27:39 12/15/2024 
-- Design Name: 
-- Module Name:    Controller - Behavioral 
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

entity Controller is
    Port ( op : in  STD_LOGIC_VECTOR (5 downto 0);
           funct : in  STD_LOGIC_VECTOR (5 downto 0);
           zero : in  STD_LOGIC;
           memtoreg : out  STD_LOGIC;
           memwrite : out  STD_LOGIC;
           pcsrc : out  STD_LOGIC;
           alusrc : out  STD_LOGIC;
           regdst : out  STD_LOGIC;
           regwrite : out  STD_LOGIC;
           jump : out  STD_LOGIC;
           alucontrol : out  STD_LOGIC_VECTOR (3 downto 0));
end Controller;

architecture Behavioral of Controller is
signal aluop: STD_LOGIC_VECTOR (1 downto 0);

begin
maindecobj:MAINDECODER Port map ( 
			  opcode => op,
           memwrite => memwrite,
           memtoreg => memtoreg,
           regdst => regdst,
           regwrite => regwrite,
           alusrc => alusrc,
           branch => pcsrc,
           aluop => aluop,
           jump => jump
);

alucontrolobj:alucontrol2 port map ( 
			  aluop => aluop,
           funct => funct,
           alucontrol => alucontrol
);

end Behavioral;

