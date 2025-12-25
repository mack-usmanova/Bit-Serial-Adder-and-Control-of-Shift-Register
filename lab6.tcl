restart  
add_force clk {0 0ns} {1 10ns} -repeat_every 20ns  
add_force reset {0 0ns} 
 run 20ns  
add_force A {0 0ns}  
add_force B {0 0ns}  
add_force sin {00 0ns} 
 run 40ns 
add_force reset {1 0ns}  
add_force MR {1 0ns}  
add_force A {1 0ns}  
add_force B {0 0ns}  
add_force sin {11 0ns} 
run 40ns 
add_force A {1 0ns}  
add_force B {1 0ns}  
add_force sin {10 0ns}  
run 40ns 
add_force A {0 0ns}  
add_force B {0 0ns}  
add_force sin {01 0ns} 
run 40ns 