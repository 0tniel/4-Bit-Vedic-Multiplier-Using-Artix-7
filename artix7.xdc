#######################################################################################
## WWW.FPGATECHSOLUTION.COM
## EISLER ARTIX7 FPGA BOARD
## PART NUMBER XC7A35TCSG324-1
## Constraints for: 4-Bit Vedic Multiplier
## Input A  -> SLIDE_SW[3:0]
## Input B  -> SLIDE_SW[7:4]
## Product  -> LED[7:0]
#######################################################################################

set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 33 [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]

#######################################################################################
## Input A — 4-bit (a0..a3)
#######################################################################################
set_property -dict { PACKAGE_PIN F4 IOSTANDARD LVCMOS33 } [get_ports { a0 }];
set_property -dict { PACKAGE_PIN H4 IOSTANDARD LVCMOS33 } [get_ports { a1 }];
set_property -dict { PACKAGE_PIN G3 IOSTANDARD LVCMOS33 } [get_ports { a2 }];
set_property -dict { PACKAGE_PIN G4 IOSTANDARD LVCMOS33 } [get_ports { a3 }];

#######################################################################################
## Input B — 4-bit (b0..b3)
#######################################################################################
set_property -dict { PACKAGE_PIN F3 IOSTANDARD LVCMOS33 } [get_ports { b0 }];
set_property -dict { PACKAGE_PIN E3 IOSTANDARD LVCMOS33 } [get_ports { b1 }];
set_property -dict { PACKAGE_PIN D3 IOSTANDARD LVCMOS33 } [get_ports { b2 }];
set_property -dict { PACKAGE_PIN D4 IOSTANDARD LVCMOS33 } [get_ports { b3 }];

#######################################################################################
## Output Product — 8-bit (c0..c7) mapped to LED[7:0]
#######################################################################################
set_property -dict { PACKAGE_PIN U11 IOSTANDARD LVCMOS33 } [get_ports { c0 }];
set_property -dict { PACKAGE_PIN V11 IOSTANDARD LVCMOS33 } [get_ports { c1 }];
set_property -dict { PACKAGE_PIN V10 IOSTANDARD LVCMOS33 } [get_ports { c2 }];
set_property -dict { PACKAGE_PIN T10 IOSTANDARD LVCMOS33 } [get_ports { c3 }];
set_property -dict { PACKAGE_PIN T9  IOSTANDARD LVCMOS33 } [get_ports { c4 }];
set_property -dict { PACKAGE_PIN G6  IOSTANDARD LVCMOS33 } [get_ports { c5 }];
set_property -dict { PACKAGE_PIN H5  IOSTANDARD LVCMOS33 } [get_ports { c6 }];
set_property -dict { PACKAGE_PIN J5  IOSTANDARD LVCMOS33 } [get_ports { c7 }];
