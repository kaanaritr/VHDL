library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity multiplexer is
port(
a,b,c,d : in std_logic;
s1,s2 : in std_logic;
z : out std_logic
);
end multiplexer;

architecture Behavioral of multiplexer is
signal sg : stD_logic_vector (3 downto 0);
begin
sg(0) <= a and (not s1) and (not s2);
sg(1) <= b and (not s1) and (s2);
sg(2) <= c and (s1) and (not s2);
sg(3) <= d and (s1) and (s2);
z <= sg(0) or sg(1) or sg(2) or sg(3);
end Behavioral;

-------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity funct is
    Port ( x : in  STD_LOGIC;
           y : in  STD_LOGIC;
           z : in  STD_LOGIC;
           f : out  STD_LOGIC);
end funct;

architecture Behavioral of funct is

component multiplexer is
	port(
		a,b,c,d : in std_logic;
		s1,s2 : in std_logic;
		z : out std_logic
	);
end component;
signal sg : std_logic;
begin
f0 : multiplexer port map ('0','1','1','0',x,y,sg);
f <= z or sg;
end Behavioral;
