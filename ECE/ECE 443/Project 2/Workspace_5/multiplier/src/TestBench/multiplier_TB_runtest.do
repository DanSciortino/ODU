SetActiveLib -work
comp -include "$dsn\src\mult.vhd" 
comp -include "$dsn\src\TestBench\multiplier_TB.vhd" 
asim +access +r TESTBENCH_FOR_multiplier 
wave 
wave -noreg a
wave -noreg b
wave -noreg s
wave -noreg overflow
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$dsn\src\TestBench\multiplier_TB_tim_cfg.vhd" 
# asim +access +r TIMING_FOR_multiplier 
