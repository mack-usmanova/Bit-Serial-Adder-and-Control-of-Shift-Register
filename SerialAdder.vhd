----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/24/2025 10:28:07 PM
-- Design Name: 
-- Module Name: SerialAdder - Behavioral
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

entity SerialAdder is  
Port ( A, B : in std_logic;  
clk : in std_logic;  
reset : in std_logic;  
sum, cy : out std_logic); 
end SerialAdder; 
architecture Behavioral of SerialAdder is 
 type state_type is (S1, S2, S3, S4);  
signal next_state, present_state: state_type := S1; 
begin 
process (present_state, next_state, A, B) 
begin 
case present_state is  
    when S1 => 
        if A ='1' AND B = '1' then 
            next_state <= S3; 
        elsif A = '1' AND B = '0' then 
            next_state <= S2; 
        elsif A = '0' AND B = '1' then 
            next_state <= S2; 
        else 
            next_state <= S1; 
        end if; 
         
     
     
    when S2 => 
        sum <= A XOR B; 
        if A ='1' AND B = '1' then 
            next_state <= S3; 
        elsif A = '1' AND B = '0' then 
            next_state <= S2; 
        elsif A = '0' AND B = '1' then 
            next_state <= S2; 
        else 
            next_state <= S1; 
        end if; 
         
         
    when S3 => 
        cy <= (A and B); 
        if A ='1' AND B = '1' then 
            next_state <= S4; 
        elsif A = '1' AND B = '0' then 
            next_state <= S3; 
        elsif A = '0' AND B = '1' then 
            next_state <= S3; 
        else 
            next_state <= S2; 
        end if; 
         
         
         
    when S4 =>  
        sum <= A xor B; 
        cy <= (A and B); 
        if A ='1' AND B = '1' then 
            next_state <= S4; 
        elsif A = '1' AND B = '0' then 
            next_state <= S3; 
        elsif A = '0' AND B = '1' then 
            next_state <= S3; 
        else 
            next_state <= S2; 
        end if; 
         
   when others => next_state <= S1; 
   end case; 
   end process; 
  
  
  
clk_process : process  
begin  
wait until (CLK'event and CLK = '1'); 
 if reset = '0' then 
 present_state <= S1;  
else present_state <= next_state;  
end if;  
end process clk_process; 
end Behavioral; 
