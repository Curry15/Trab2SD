----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:28:02 04/16/2024 
-- Design Name: 
-- Module Name:    contador_4bits - Behavioral 
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
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity contador is PORT(	
	erro:					IN STD_LOGIC;
	saida_contador: 	OUT STD_LOGIC_VECTOR( 2 DOWNTO 0)
	);
end contador;

architecture Behavioral of contador is

	signal count: natural := 5;
	
begin
	marcador:PROCESS(erro)
	begin
		IF( rising_edge(erro) ) THEN	
			IF (count <= 5) THEN
				count <= count - 1;
			ELSE
				count <= 5;
			END IF;
		END IF; --if clock
	end PROCESS marcador;
	
	saida_contador <= std_logic_vector(to_unsigned(count,3));

end Behavioral;

