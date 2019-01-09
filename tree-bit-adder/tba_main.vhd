----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:50:04 11/26/2018 
-- Design Name: 
-- Module Name:    tba_main - Behavioral 
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

entity tba_main is
	port(
	A:IN STD_LOGIC_VECTOR (2 DOWNTO 0);
	B:IN STD_LOGIC_VECTOR (2 DOWNTO 0);
	CIN:IN STD_LOGIC;
	S:OUT STD_LOGIC_VECTOR (2 DOWNTO 0);
	C:OUT STD_LOGIC
	);
end tba_main;

architecture Behavioral of tba_main is

	COMPONENT HALF_ADDER
	PORT(
	FA_A:IN STD_LOGIC;
	FA_B:IN STD_LOGIC;
	FA_CIN:IN STD_LOGIC;
	FA_C:OUT STD_LOGIC;
	FA_S:OUT STD_LOGIC
	);
	END COMPONENT;
	
	SIGNAL COUT:STD_LOGIC_VECTOR (1 DOWNTO 0);
	
begin
FA0:HALF_ADDER PORT MAP(A(0),B(0),CIN,COUT(0),S(0));
FA1:HALF_ADDER PORT MAP(A(1),B(1),COUT(0),COUT(1),S(1));
FA2:HALF_ADDER PORT MAP(A(2),B(2),COUT(1),C,S(2));

end Behavioral;
