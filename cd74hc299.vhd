----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/24/2025 10:26:25 PM
-- Design Name: 
-- Module Name: cd74hc299 - Behavioral
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

entity cd74hc299 is 
Port ( A, B, clk, reset : in std_logic; 
 sin : in std_logic_vector(1 downto 0);  
MR : in std_logic;  
oe : out std_logic;  
cy, ds0, MR_out, sum : out std_logic;  
sout : out std_logic_vector(1 downto 0)); 
 
end cd74hc299; 
 
architecture Behavioral of cd74hc299 is  
signal ds_in : std_logic;  
 
component SerialAdder 
 Port ( A, B : in std_logic;  
clk : in std_logic; 
 reset : in std_logic;  
sum, cy : out std_logic);  
 
end component; 
 
Begin 
 
sout <= sin; 
MR_out <= not reset;  
oe <= sin(0) and sin(1); 
 
SBA: SerialAdder port map(          --port map connection with serial adder 
    clk => clk, 
    reset => MR, 
    A => A,   
    B => B, 
    cy => cy, 
    sum => ds_in); 
     
     
    ds0 <= ds_in; 
    sum <= ds_in; 
 
        
  
end Behavioral; 