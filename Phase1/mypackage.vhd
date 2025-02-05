--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package mypackage is

COMPONENT ALU
	 generic(
		n: integer:=32
	 );
    PORT(
         data1 : IN  std_logic_vector(n-1 downto 0);
         data2 : IN  std_logic_vector(n-1 downto 0);
         aluop : IN  std_logic_vector(3 downto 0);
         dataout : OUT  std_logic_vector(n-1 downto 0);
         zflag : OUT  std_logic
        );
END COMPONENT;

COMPONENT Sign_extension is
	 Generic (i_n : integer:=16;
				 o_n : integer:=32);
    Port ( I : in  STD_LOGIC_VECTOR (i_n-1 downto 0);
           O : out  STD_LOGIC_VECTOR (o_n-1 downto 0));
end COMPONENT;

COMPONENT Adder is
	 Generic ( n: integer:=32 ); 
    Port ( I0 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I1 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           O : out  STD_LOGIC_VECTOR (n-1 downto 0));
end COMPONENT;

COMPONENT Shifter is
	 Generic ( i_n : integer:=32;
				  o_n : integer:=32;
				  shift_n : integer:=2);
    Port ( I : in  STD_LOGIC_VECTOR (i_n-1 downto 0);
           O : out  STD_LOGIC_VECTOR (o_n-1 downto 0));
end COMPONENT;

COMPONENT Mux is
		Generic(n: integer:=32);
	   Port ( I0 : in  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				 I1 : in  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				 I2 : in  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				 I3 : in  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				 I4 : in  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				 I5 : in  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				 I6 : in  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				 I7 : in  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				 I8 : in  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				 I9 : in  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				 I10 : in  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				 I11 : in  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				 I12 : in  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				 I13 : in  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				 I14 : in  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				 I15 : in  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				 I16 : in  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				 I17 : in  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				 I18 : in  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				 I19 : in  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				 I20 : in  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				 I21 : in  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				 I22 : in  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				 I23 : in  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				 I24 : in  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				 I25 : in  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				 I26 : in  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				 I27 : in  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				 I28 : in  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				 I29 : in  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				 I30 : in  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				 I31 : in  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				 readReg : in  STD_LOGIC_vector(4 downto 0);
             muxDataOut : out STD_LOGIC_VECTOR(n-1 DOWNTO 0));
END COMPONENT;

COMPONENT Mux2x1 is
	 Generic (n: integer:=32 );
    Port ( I0 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I1 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           S : in  STD_LOGIC;
           O : out  STD_LOGIC_VECTOR (n-1 downto 0));
end COMPONENT;

COMPONENT Decoder is
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
END COMPONENT;

COMPONENT flopr is
	generic(n:integer:=32);
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
			  regWrite:in std_logic;
           q : out  STD_LOGIC_vector(n-1 downto 0);
           d : in  STD_LOGIC_vector(n-1 downto 0));
END COMPONENT;

COMPONENT RegisterFile
	 generic (n:integer:=32);
    Port ( clk:in std_logic;
			  rst:in std_logic;
			  write_sel : in  STD_LOGIC_VECTOR (4 downto 0);
			  read_sel1 : in  STD_LOGIC_VECTOR (4 downto 0);
           read_sel2 : in  STD_LOGIC_VECTOR (4 downto 0);
           write_ena : in  STD_LOGIC;
           write_data : in  STD_LOGIC_VECTOR (n-1 downto 0);
           data1 : out  STD_LOGIC_VECTOR (n-1 downto 0);
           data2 : out  STD_LOGIC_VECTOR (n-1 downto 0));
end COMPONENT;

component MAINDECODER is
    Port ( opcode : in  STD_LOGIC_VECTOR (5 downto 0);
            memwrite : out  STD_LOGIC;
           memtoreg  : out  STD_LOGIC;
           regdst  : out  STD_LOGIC;
           regwrite  : out  STD_LOGIC;
           alusrc  : out  STD_LOGIC;
           branch  : out  STD_LOGIC;
           aluop  : out  STD_LOGIC_VECTOR (1 downto 0);
           jump  : out  STD_LOGIC);
end component;
 
component alucontrol2
    Port ( aluop : in  STD_LOGIC_vector(1 downto 0);
           funct : in  STD_LOGIC_vector(5 downto 0);
           alucontrol : out  STD_LOGIC_vector(3 downto 0));
end component;

component Controller is
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
end component;

component Datapath is
	 Generic ( n: integer:=32 );
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           instr : in  STD_LOGIC_VECTOR (n-1 downto 0);
           alucontrol : in  STD_LOGIC_VECTOR (3 downto 0);
           zero : out  STD_LOGIC;
			  pc : inout  STD_LOGIC_VECTOR (n-1 downto 0);
			  RegDst : in  STD_LOGIC;
			  Jump : in  STD_LOGIC;
			  Branch : in  STD_LOGIC;
			  memtoreg : in  STD_LOGIC;
			  ALUsrc : in  STD_LOGIC;
           regwrite : in  STD_LOGIC;
           aluout, writedata : inout  STD_LOGIC_VECTOR (n-1 downto 0);
			  readdata : in STD_LOGIC_VECTOR (n-1 downto 0));
end component;

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


component imem is
port(a: in STD_LOGIC_VECTOR(5 downto 0);
rd: out STD_LOGIC_VECTOR(31 downto 0));
end component;

component dmem is
port(clk, we: in STD_LOGIC;
a, wd: in STD_LOGIC_VECTOR (31 downto 0);
rd: out STD_LOGIC_VECTOR (31 downto 0));
end component;

end mypackage;
