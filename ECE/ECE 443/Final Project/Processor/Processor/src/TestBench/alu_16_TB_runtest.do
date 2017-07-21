SetActiveLib -work
comp -include "$dsn\src\ALU_16.vhd" 
comp -include "$dsn\src\TestBench\alu_16_TB.vhd" 
asim +access +r TESTBENCH_FOR_alu_16 
wave 
wave -noreg A
wave -noreg B
wave -noreg R
wave -noreg S0
wave -noreg S1
wave -noreg S2
wave -noreg Status
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$dsn\src\TestBench\alu_16_TB_tim_cfg.vhd" 
# asim +access +r TIMING_FOR_alu_16 
