--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:31:56 07/16/2024
-- Design Name:   
-- Module Name:   /home/sd/Desktop/jogo_da_forca/kbteste.vhd
-- Project Name:  jogo_da_forca
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: kb_code
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
 
ENTITY kbteste IS
END kbteste;
 
ARCHITECTURE behavior OF kbteste IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT kb_code
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         ps2d : IN  std_logic;
         ps2c : IN  std_logic;
         key_code : OUT  std_logic_vector(7 downto 0);
         kb_buf_empty : OUT  std_logic;
         full : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal ps2d : std_logic := '0';
   signal ps2c : std_logic := '0';

 	--Outputs
   signal key_code : std_logic_vector(7 downto 0);
   signal kb_buf_empty : std_logic;
   signal full : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: kb_code PORT MAP (
          clk => clk,
          reset => reset,
          ps2d => ps2d,
          ps2c => ps2c,
          key_code => key_code,
          kb_buf_empty => kb_buf_empty,
          full => full
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
