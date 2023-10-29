# TCL File Generated by Component Editor 18.1
# Wed Oct 25 15:16:02 CEST 2023
# DO NOT MODIFY


# 
# Parallel_Port "parallel_port" v1.0
#  2023.10.25.15:16:02
# 
# 

# 
# request TCL package from ACDS 16.1
# 
package require -exact qsys 16.1


# 
# module Parallel_Port
# 
set_module_property DESCRIPTION ""
set_module_property NAME Parallel_Port
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME parallel_port
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL simplePIO
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file "parPort _irq.vhdl" VHDL PATH "parPort _irq.vhdl" TOP_LEVEL_FILE


# 
# parameters
# 


# 
# display items
# 


# 
# connection point interrupt_sender
# 
add_interface interrupt_sender interrupt end
set_interface_property interrupt_sender associatedAddressablePoint ""
set_interface_property interrupt_sender associatedClock clock
set_interface_property interrupt_sender associatedReset reset
set_interface_property interrupt_sender bridgedReceiverOffset ""
set_interface_property interrupt_sender bridgesToReceiver ""
set_interface_property interrupt_sender ENABLED true
set_interface_property interrupt_sender EXPORT_OF ""
set_interface_property interrupt_sender PORT_NAME_MAP ""
set_interface_property interrupt_sender CMSIS_SVD_VARIABLES ""
set_interface_property interrupt_sender SVD_ADDRESS_GROUP ""

add_interface_port interrupt_sender irq irq Output 1


# 
# connection point av
# 
add_interface av avalon end
set_interface_property av addressUnits WORDS
set_interface_property av associatedClock clock
set_interface_property av associatedReset reset
set_interface_property av bitsPerSymbol 8
set_interface_property av burstOnBurstBoundariesOnly false
set_interface_property av burstcountUnits WORDS
set_interface_property av explicitAddressSpan 0
set_interface_property av holdTime 0
set_interface_property av linewrapBursts false
set_interface_property av maximumPendingReadTransactions 0
set_interface_property av maximumPendingWriteTransactions 0
set_interface_property av readLatency 0
set_interface_property av readWaitTime 1
set_interface_property av setupTime 0
set_interface_property av timingUnits Cycles
set_interface_property av writeWaitTime 0
set_interface_property av ENABLED true
set_interface_property av EXPORT_OF ""
set_interface_property av PORT_NAME_MAP ""
set_interface_property av CMSIS_SVD_VARIABLES ""
set_interface_property av SVD_ADDRESS_GROUP ""

add_interface_port av av_address address Input 3
add_interface_port av av_read read Input 1
add_interface_port av av_readdata readdata Output 8
add_interface_port av av_write write Input 1
add_interface_port av av_writedata writedata Input 8
set_interface_assignment av embeddedsw.configuration.isFlash 0
set_interface_assignment av embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment av embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment av embeddedsw.configuration.isPrintableDevice 0


# 
# connection point pio_port
# 
add_interface pio_port conduit end
set_interface_property pio_port associatedClock clock
set_interface_property pio_port associatedReset reset
set_interface_property pio_port ENABLED true
set_interface_property pio_port EXPORT_OF ""
set_interface_property pio_port PORT_NAME_MAP ""
set_interface_property pio_port CMSIS_SVD_VARIABLES ""
set_interface_property pio_port SVD_ADDRESS_GROUP ""

add_interface_port pio_port conduit_data export Bidir 8


# 
# connection point clock
# 
add_interface clock clock end
set_interface_property clock clockRate 0
set_interface_property clock ENABLED true
set_interface_property clock EXPORT_OF ""
set_interface_property clock PORT_NAME_MAP ""
set_interface_property clock CMSIS_SVD_VARIABLES ""
set_interface_property clock SVD_ADDRESS_GROUP ""

add_interface_port clock clk clk Input 1


# 
# connection point reset
# 
add_interface reset reset end
set_interface_property reset associatedClock clock
set_interface_property reset synchronousEdges DEASSERT
set_interface_property reset ENABLED true
set_interface_property reset EXPORT_OF ""
set_interface_property reset PORT_NAME_MAP ""
set_interface_property reset CMSIS_SVD_VARIABLES ""
set_interface_property reset SVD_ADDRESS_GROUP ""

add_interface_port reset reset_n reset_n Input 1

