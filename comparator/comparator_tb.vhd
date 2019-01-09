--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:59:05 12/02/2018
-- Design Name:   
-- Module Name:   D:/Xilinx/comparator/comparator_tb.vhd
-- Project Name:  comparator
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: comparator
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
 
ENTITY comparator_tb IS
END comparator_tb;
 
ARCHITECTURE behavior OF comparator_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT comparator
    PORT(
         a : IN  std_logic_vector(1 downto 0);
         b : IN  std_logic_vector(1 downto 0);
         g : OUT  std_logic;
         e : OUT  std_logic;
         l : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(1 downto 0) := (others => '0');
   signal b : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal g : std_logic;
   signal e : std_logic;
   signal l : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: comparator PORT MAP (
          a => a,
          b => b,
          g => g,
          e => e,
          l => l
        );


 

   -- Stimulus process
   stim_proc: process
   begin		
      a <= "00";
		b <= "00";
      wait for 100 ns;
      a <= "01";
		b <= "00";
      wait for 100 ns;
      a <= "10";
		b <= "00";
      wait for 100 ns;
      a <= "11";
		b <= "00";
      wait for 100 ns;
      a <= "00";
		b <= "01";
      wait for 100 ns;
      a <= "00";
		b <= "01";
      wait for 100 ns;
      a <= "00";
		b <= "10";
      wait for 100 ns;
      a <= "00";
		b <= "11";
      wait for 100 ns;
      a <= "01";
		b <= "01";
      wait for 100 ns;
      a <= "10";
		b <= "01";
      wait for 100 ns;
      a <= "10";
		b <= "11";
      wait for 100 ns;
      a <= "11";
		b <= "11";
      wait for 100 ns;	
      wait;
   end process;

END;
