--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:00:27 07/16/2024
-- Design Name:   
-- Module Name:   /home/sd/Desktop/jogo_da_forca/lcdtest.vhd
-- Project Name:  jogo_da_forca
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: lcd
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
 
ENTITY lcdtest IS
END lcdtest;
 
ARCHITECTURE behavior OF lcdtest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT lcd
    PORT(
         LCD_DB : OUT  std_logic_vector(7 downto 0);
         RS : OUT  std_logic;
         RW : OUT  std_logic;
         CLK : IN  std_logic;
         OE : OUT  std_logic;
         rst : IN  std_logic;
         mask : IN  std_logic_vector(7 downto 0);
         hearts : IN  std_logic_vector(2 downto 0);
         submit : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal rst : std_logic := '0';
   signal mask : std_logic_vector(7 downto 0) := (others => '0');
   signal hearts : std_logic_vector(2 downto 0) := "101";
   signal submit : std_logic := '0';

 	--Outputs
   signal LCD_DB : std_logic_vector(7 downto 0);
   signal RS : std_logic;
   signal RW : std_logic;
   signal OE : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: lcd PORT MAP (
          LCD_DB => LCD_DB,
          RS => RS,
          RW => RW,
          CLK => CLK,
          OE => OE,
          rst => rst,
          mask => mask,
          hearts => hearts,
          submit => submit
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for CLK_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
