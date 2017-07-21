SetActiveLib -work
comp -include "$dsn\src\ControlUnit.vhd" 
comp -include "$dsn\src\TestBench\controlunit_TB.vhd" 
asim +access +r TESTBENCH_FOR_controlunit 
wave 
wave -noreg S
wave -noreg MemRead
wave -noreg MemToReg
wave -noreg MemWrite
wave -noreg ALUsource
wave -noreg RegWrite
wave -noreg ALUop
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$dsn\src\TestBench\controlunit_TB_tim_cfg.vhd" 
# asim +access +r TIMING_FOR_controlunit 
