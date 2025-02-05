-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;

  ENTITY testbench1 IS
  END testbench1;

  ARCHITECTURE behavior OF testbench1 IS 

  -- Component Declaration

component MIPS is
	 Generic ( n: integer:=32 );
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           pc : out  STD_LOGIC_VECTOR (n-1 downto 0);
           instr : in  STD_LOGIC_VECTOR (n-1 downto 0);
           memwrite : out  STD_LOGIC;
           aluout : out  STD_LOGIC_VECTOR (n-1 downto 0);
           writedata : out  STD_LOGIC_VECTOR (n-1 downto 0);
           readdata : in  STD_LOGIC_VECTOR (n-1 downto 0));
end component;
   signal pc : std_logic_vector(31 downto 0) := (others => '0');
	signal instr : std_logic_vector(31 downto 0) := (others => '0');
	signal aluout : std_logic_vector(31 downto 0) := (others => '0');
	signal writedata : std_logic_vector(31 downto 0) := (others => '0');
	signal readdata : std_logic_vector(31 downto 0) := (others => '0');
	signal clk : std_logic := '0';
	signal rst : std_logic := '1';
	signal memwrite : std_logic := '0';
  constant clk_period : time := 10 ns;


  BEGIN

  -- Component Instantiation
          uut: Mips generic map (n=>32) port map (
				clk => clk,
           reset => rst,
           pc => pc,
           instr => instr,
           memwrite => memwrite,
           aluout => aluout,
           writedata => writedata,
           readdata => readdata
			 
			 );

-- Clock process definitions
	clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
	
	
  --  Test Bench Statements
     tb : PROCESS
     BEGIN

        wait for 10 ns;
		  rst <= '0';
		  instr <= x"20020005";

        -- Add user defined stimulus here

        wait; -- will wait forever
     END PROCESS tb;
  --  End Test Bench 

  END;
