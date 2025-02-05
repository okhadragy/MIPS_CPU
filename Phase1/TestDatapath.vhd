-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;

  ENTITY testbench IS
  END testbench;

  ARCHITECTURE behavior OF testbench IS 

  -- Component Declaration
   COMPONENT Datapath
		Generic ( n: integer:=32 );
		Port ( 
			  clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           instr : in  STD_LOGIC_VECTOR (n-1 downto 0);
           aluoperation : in  STD_LOGIC_VECTOR (3 downto 0);
           zero : out  STD_LOGIC;
           regwrite : in  STD_LOGIC;
           aluout : buffer  STD_LOGIC_VECTOR (n-1 downto 0));
    END COMPONENT;
	 
	 COMPONENT RegisterFile
		Generic(n:integer:=32);
		port(
			clk:in std_logic;
			rst:in std_logic;
			--regs selection
			write_sel:in std_logic_vector(4 downto 0);
			read_sel1:in std_logic_vector(4 downto 0);
			read_sel2:in std_logic_vector(4 downto 0);
			
			--writing
			write_ena: in std_logic;
			write_data:in std_logic_vector(n-1 downto 0);
			
			--muxs out
			
			data1:out std_logic_vector(n-1 downto 0);
			data2:out std_logic_vector(n-1 downto 0)
			);
    END COMPONENT;
    

   --Inputs
   signal instr : std_logic_vector(31 downto 0) := (others => '0');
   signal aluoperation : std_logic_vector(3 downto 0) := (others => '0');
   signal regwrite : std_logic := '0';
   signal clk : std_logic := '0';
	signal reset : std_logic := '1';
	
 	--Outputs
   signal zero : std_logic;
   signal aluout : std_logic_vector(31 downto 0);

   -- Clock period definitions
  constant clk_period : time := 10ps;
          

  BEGIN
-- Component Instantiation
          uut: Datapath PORT MAP (
          instr => instr,
          aluoperation => aluoperation,
          regwrite => regwrite,
          clk => clk,
			 reset => reset,
          zero => zero,
          aluout => aluout
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
 		
		--Write value in $t0
			reset <= '0';
			regwrite <= '1';
			wait for clk_period - 3ps;	
			instr <= "00000000000000000100000000000000";
			aluoperation <= "1100";
			
			wait for clk_period * 1;
			instr <= "00000001000000000100100000000000";
			aluoperation <= "0000";
			
			
			
			wait for clk_period * 1;
			
     END PROCESS tb;
  --  End Test Bench 


  END;
