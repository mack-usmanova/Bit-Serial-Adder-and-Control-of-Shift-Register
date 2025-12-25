set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clk];  
set_property -dict { PACKAGE_PIN G16 IOSTANDARD LVCMOS33 } [get_ports { clk }]; #IO_L13N_T2_MRCC_15 Sch=jb[3] 
set_property -dict { PACKAGE_PIN H17 IOSTANDARD LVCMOS33 } [get_ports { sum }]; #IO_L18P_T2_A24_15 Sch=led[0]  
set_property -dict { PACKAGE_PIN K15 IOSTANDARD LVCMOS33 } [get_ports { cy }]; #IO_L24P_T3_RS1_15 Sch=led[1] 
set_property -dict { PACKAGE_PIN R17 IOSTANDARD LVCMOS33 } [get_ports { A }]; #IO_L12N_T1_MRCC_14 Sch=sw[4] 
set_property -dict { PACKAGE_PIN U18 IOSTANDARD LVCMOS33 } [get_ports { B }]; #IO_L17N_T2_A13_D29_14 Sch=sw[6] 
set_property -dict { PACKAGE_PIN C12 IOSTANDARD LVCMOS33 } [get_ports { reset }]; #IO_L3P_T0_DQS_AD1P_15 Sch=cpu_resetn 
set_property -dict { PACKAGE_PIN N17 IOSTANDARD LVCMOS33 } [get_ports { MR_out }]; #IO_L9P_T1_DQS_14 Sch=btnc 
set_property -dict { PACKAGE_PIN U8 IOSTANDARD LVCMOS18 } [get_ports { sin[0] }]; #IO_25_34 Sch=sw[9] 
set_property -dict { PACKAGE_PIN T13 IOSTANDARD LVCMOS33 } [get_ports { sin[1] }]; #IO_L23P_T3_A03_D19_14 Sch=sw[11] 
set_property -dict { PACKAGE_PIN C17 IOSTANDARD LVCMOS33 } [get_ports { MR }]; #IO_L20N_T3_A19_15 Sch=ja[1] 
set_property -dict { PACKAGE_PIN D18 IOSTANDARD LVCMOS33 } [get_ports { sout[0] }]; #IO_L21N_T3_DQS_A18_15 Sch=ja[2] 
set_property -dict { PACKAGE_PIN E18 IOSTANDARD LVCMOS33 } [get_ports { sout[1] }]; #IO_L21P_T3_DQS_15 Sch=ja[3] 
set_property -dict { PACKAGE_PIN G17 IOSTANDARD LVCMOS33 } [get_ports { oe}]; #IO_L18N_T2_A23_15 Sch=ja[4] 
set_property -dict { PACKAGE_PIN D17 IOSTANDARD LVCMOS33 } [get_ports { ds0 }]; #IO_L16N_T2_A27_15 Sch=ja[7] 