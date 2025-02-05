--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:51:22 11/19/2024
-- Design Name:   
-- Module Name:   C:/Projects/Phase1/TestALU.vhd
-- Project Name:  Phase1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TestALU IS
END TestALU;
 
ARCHITECTURE behavior OF TestALU IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
	 generic(
		n: natural
	 );
    PORT(
         data1 : IN  std_logic_vector(n-1 downto 0);
         data2 : IN  std_logic_vector(n-1 downto 0);
         aluop : IN  std_logic_vector(3 downto 0);
         dataout : OUT  std_logic_vector(31 downto 0);
         zflag : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal data1 : std_logic_vector(31 downto 0) := (others => '0');
   signal data2 : std_logic_vector(31 downto 0) := (others => '0');
   signal aluop : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal dataout : std_logic_vector(31 downto 0);
   signal zflag : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU generic map (
			n => 32
	)
	PORT MAP (
          data1 => data1,
          data2 => data2,
          aluop => aluop,
          dataout => dataout,
          zflag => zflag
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- AND testcase
		data1 <= "1100" & X"0000000";
		data2 <= "1010" & X"0000000";
		aluop <= "0000";
		wait for 10 ns;
		report "Test1";
		assert (dataout = "1000" & X"0000000" and zflag = '0') report "1:fail" severity error;	
		wait for 1 ns;
		
		-- OR testcase
		data1 <= "1100" & X"0000000";
		data2 <= "1010" & X"0000000";
		aluop <= "0001";
		wait for 10 ns;
		report "Test2";
		assert (dataout = "1110" & X"0000000" and zflag = '0') report "2:fail" severity error;
		wait for 1 ns;
		
		-- ADD testcase1 (overflow = 1, cout=0)
		data1 <= "0111" & X"0000000";
		data2 <= "0110" & X"0000000";
		aluop <= "0010";
		wait for 10 ns;
		report "Test3";
		assert (dataout = "1101" & X"0000000" and zflag = '0') report "3:fail" severity error;
		wait for 1 ns;
		
		-- ADD testcase2 (zero = 1, cout=1)
		data1 <= "1111" & X"0000000";
		data2 <= "0001" & X"0000000";
		aluop <= "0010";
		wait for 10 ns;
		report "Test4";
		assert (dataout = "0000" & X"0000000" and zflag = '1') report "4:fail" severity error;
		wait for 1 ns;
		
		-- SUdata2testcase1 (cout=1)
		data1 <= X"0000000" & "0111";
		data2 <= X"0000000" & "0110";
		aluop <= "0110";
		wait for 10 ns;
		report "Test5";
		assert (dataout = X"0000000" & "0001" and zflag = '0') report "5:fail" severity error;
		wait for 1 ns;
		
		-- SUdata2testcase2 (cout=0)
		data1 <= X"0000000" & "0110";
		data2 <= X"0000000" & "0111";
		aluop <= "0110";
		wait for 10 ns;
		report "Test6";
		assert (dataout = X"FFFFFFFF" and zflag = '0') report "6:fail" severity error;
		wait for 1 ns;
	
		report "Test Complete";
   end process;

END;
