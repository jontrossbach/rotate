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
-- use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity circular_left_rotate is
 Port (a: in STD_LOGIC_VECTOR(31 DOWNTO 0);
       b: in STD_LOGIC_VECTOR(31 DOWNTO 0);
       o: out STD_LOGIC_VECTOR(31 DOWNTO 0));
end circular_left_rotate;

architecture Behavioral of circular_left_rotate is
 -- should Behavioral be RTL?
begin
  WITH b(4 DOWNTO 0) SELECT
    O<=	a(30 DOWNTO 0) & a(31) WHEN "00001",
	a(29 DOWNTO 0) & a(31 DOWNTO 30) WHEN "00010",
	a(28 DOWNTO 0) & a(31 DOWNTO 29) WHEN "00011",
	a(27 DOWNTO 0) & a(31 DOWNTO 28) WHEN "00100",
	a(26 DOWNTO 0) & a(31 DOWNTO 27) WHEN "00101",
	a(25 DOWNTO 0) & a(31 DOWNTO 26) WHEN "00110",
	a(24 DOWNTO 0) & a(31 DOWNTO 25) WHEN "00111",
	a(23 DOWNTO 0) & a(31 DOWNTO 24) WHEN "01000",
	a(22 DOWNTO 0) & a(31 DOWNTO 23) WHEN "01001",
	a(21 DOWNTO 0) & a(31 DOWNTO 22) WHEN "01010",
	a(20 DOWNTO 0) & a(31 DOWNTO 21) WHEN "01011",
	a(19 DOWNTO 0) & a(31 DOWNTO 20) WHEN "01100",
	a(18 DOWNTO 0) & a(31 DOWNTO 19) WHEN "01101",
	a(17 DOWNTO 0) & a(31 DOWNTO 18) WHEN "01110",
	a(16 DOWNTO 0) & a(31 DOWNTO 17) WHEN "01111",
	a(15 DOWNTO 0) & a(31 DOWNTO 16) WHEN "10000",
	a(14 DOWNTO 0) & a(31 DOWNTO 15) WHEN "10001",
	a(13 DOWNTO 0) & a(31 DOWNTO 14) WHEN "10010",
	a(12 DOWNTO 0) & a(31 DOWNTO 13) WHEN "10011",
	a(11 DOWNTO 0) & a(31 DOWNTO 12) WHEN "10100",
	a(10 DOWNTO 0) & a(31 DOWNTO 11) WHEN "10101",
	a(9 DOWNTO 0) & a(31 DOWNTO 10) WHEN "10110",
	a(8 DOWNTO 0) & a(31 DOWNTO 9) WHEN "10111",
	a(7 DOWNTO 0) & a(31 DOWNTO 8) WHEN "11000",
	a(6 DOWNTO 0) & a(31 DOWNTO 7) WHEN "11001",
	a(5 DOWNTO 0) & a(31 DOWNTO 6) WHEN "11010",
	a(4 DOWNTO 0) & a(31 DOWNTO 5) WHEN "11011",
	a(3 DOWNTO 0) & a(31 DOWNTO 4) WHEN "11100",
	a(2 DOWNTO 0) & a(31 DOWNTO 3) WHEN "11101",
	a(1 DOWNTO 0) & a(31 DOWNTO 2) WHEN "11110",
	a(0) & a(31 DOWNTO 1) WHEN "11111",
	a WHEN OTHERS;
end Behavioral;
