# SDRAM
     set_location_assignment PIN_T1   -to clk_50M
     set_location_assignment PIN_B11   -to nReset
     set_location_assignment PIN_AA3  -to SDRAM_Clk

     set_location_assignment PIN_Y4   -to SDRAM_AD[0]
     set_location_assignment PIN_Y3   -to SDRAM_AD[1]
     set_location_assignment PIN_W6   -to SDRAM_AD[2]
     set_location_assignment PIN_Y6   -to SDRAM_AD[3]
     set_location_assignment PIN_Y8   -to SDRAM_AD[4]
     set_location_assignment PIN_W10  -to SDRAM_AD[5]
     set_location_assignment PIN_W8   -to SDRAM_AD[6]
     set_location_assignment PIN_AA4  -to SDRAM_AD[7]
     set_location_assignment PIN_Y10  -to SDRAM_AD[8]
     set_location_assignment PIN_Y7   -to SDRAM_AD[9]
     set_location_assignment PIN_U7   -to SDRAM_AD[10]
     set_location_assignment PIN_AA5  -to SDRAM_AD[11]
#     set_location_assignment PIN_AB4 -to SDRAM_AD[12]

     set_location_assignment PIN_V7   -to SDRAM_DQ[0]
     set_location_assignment PIN_T8   -to SDRAM_DQ[1]
     set_location_assignment PIN_U8   -to SDRAM_DQ[2]
     set_location_assignment PIN_T9   -to SDRAM_DQ[3]
     set_location_assignment PIN_V8   -to SDRAM_DQ[4]
     set_location_assignment PIN_T10  -to SDRAM_DQ[5]
     set_location_assignment PIN_U9   -to SDRAM_DQ[6]
     set_location_assignment PIN_T11  -to SDRAM_DQ[7]
     set_location_assignment PIN_AA7  -to SDRAM_DQ[8]
     set_location_assignment PIN_AA8  -to SDRAM_DQ[9]
     set_location_assignment PIN_AB7 -to SDRAM_DQ[10]
     set_location_assignment PIN_AA9  -to SDRAM_DQ[11]
     set_location_assignment PIN_AB8  -to SDRAM_DQ[12]
     set_location_assignment PIN_AA10 -to SDRAM_DQ[13]
     set_location_assignment PIN_AB9  -to SDRAM_DQ[14]
     set_location_assignment PIN_AB10 -to SDRAM_DQ[15]

     set_location_assignment PIN_V9   -to SDRAM_DQM[0]
     set_location_assignment PIN_AB5  -to SDRAM_DQM[1]

     set_location_assignment PIN_V11  -to SDRAM_BA[0]
     set_location_assignment PIN_U11  -to SDRAM_BA[1]

     set_location_assignment PIN_W7   -to SDRAM_CKE
     set_location_assignment PIN_V6   -to SDRAM_CS_n
     set_location_assignment PIN_U10  -to SDRAM_RAS_n
     set_location_assignment PIN_V10  -to SDRAM_CAS_n
     set_location_assignment PIN_V5   -to SDRAM_WE_n
	
# LCD
set_location_assignment PIN_A18  -to ldc_driver_resetbar
set_location_assignment PIN_G14  -to ldc_driver_chipselectbar
set_location_assignment PIN_H14  -to ldc_driver_datacommandbar
set_location_assignment PIN_G15  -to ldc_driver_writebar
set_location_assignment PIN_H15  -to ldc_driver_readbar
set_location_assignment PIN_G13  -to ldc_driver_im0

set_location_assignment PIN_G16  -to ldc_driver_databus[0]
set_location_assignment PIN_E12  -to ldc_driver_databus[1]
set_location_assignment PIN_E13  -to ldc_driver_databus[2]
set_location_assignment PIN_F14  -to ldc_driver_databus[3]
set_location_assignment PIN_E15  -to ldc_driver_databus[4]
set_location_assignment PIN_F15  -to ldc_driver_databus[5]
set_location_assignment PIN_E16  -to ldc_driver_databus[6]
set_location_assignment PIN_F16  -to ldc_driver_databus[7]
set_location_assignment PIN_C15  -to ldc_driver_databus[8]
set_location_assignment PIN_D15  -to ldc_driver_databus[9]
set_location_assignment PIN_C17  -to ldc_driver_databus[10]
set_location_assignment PIN_D17  -to ldc_driver_databus[11]
set_location_assignment PIN_C19  -to ldc_driver_databus[12]
set_location_assignment PIN_D19  -to ldc_driver_databus[13]
set_location_assignment PIN_A16  -to ldc_driver_databus[14]
set_location_assignment PIN_B16  -to ldc_driver_databus[15]
