----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/04/2020 04:10:37 PM
-- Design Name: 
-- Module Name: circular_left_rotate - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity circular_right_rotate is
 Port (a: in BIT_VECTOR(31 DOWNTO 0);
       b: in integer range 0 to 31;
       o: out BIT_VECTOR(31 DOWNTO 0));
end circular_right_rotate;

architecture Behavioral of circular_right_rotate is
 -- should Behavioral be RTL?
begin
  o<= a ROR b;
end Behavioral;
