----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.05.2023 14:49:50
-- Design Name: 
-- Module Name: sdram_io - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sdram_io is
    Port ( I : out STD_LOGIC_VECTOR (15 downto 0);
           O : in STD_LOGIC_VECTOR (15 downto 0);
           OE : in STD_LOGIC;
           IO_I : in STD_LOGIC_VECTOR (15 downto 0);
           IO_O : out STD_LOGIC_VECTOR (15 downto 0);
           IO_T : out STD_LOGIC_VECTOR (15 downto 0));
end sdram_io;

architecture Behavioral of sdram_io is

  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO of io_t: SIGNAL is "xilinx.com:interface:gpio:1.0 io TRI_T";
  ATTRIBUTE X_INTERFACE_INFO of io_o: SIGNAL is "xilinx.com:interface:gpio:1.0 io TRI_O";
  ATTRIBUTE X_INTERFACE_INFO of io_i: SIGNAL is "xilinx.com:interface:gpio:1.0 io TRI_I";


begin
  IO_O <= O;
  I    <= IO_I;
  IO_T <= X"FFFF" when OE='0' else X"0000";
    



end Behavioral;
