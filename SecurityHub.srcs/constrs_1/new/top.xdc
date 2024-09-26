## ----------------------------------------------------------------------------
## USB OTG Reset - Bank 35
## ----------------------------------------------------------------------------
set_property PACKAGE_PIN G17 [get_ports r_Rst_L]
set_property PACKAGE_PIN Y9 [get_ports r_Clk]

set_property PACKAGE_PIN Y11 [get_ports w_SPI_Clk]
set_property PACKAGE_PIN AA11 [get_ports w_SPI_MOSI]
set_property PACKAGE_PIN Y10 [get_ports r_Master_CS_n]
set_property PACKAGE_PIN AA9 [get_ports w_SPI_MISO]


set_property PACKAGE_PIN W11 [get_ports ssc_car]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets w_SPI_Clk_IBUF]

# Set the bank voltage for IO Bank 34 to 1.8V by default.
# set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 34]];
# set_property IOSTANDARD LVCMOS25 [get_ports -of_objects [get_iobanks 34]];
#set_property IOSTANDARD LVCMOS18 [get_ports -of_objects [get_iobanks 34]]

# Note that the bank voltage for IO Bank 13 is fixed to 3.3V on ZedBoard.
set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 13]]

# Set the bank voltage for IO Bank 35 to 1.8V by default.
set_property IOSTANDARD LVCMOS18 [get_ports -of_objects [get_iobanks 35]]






