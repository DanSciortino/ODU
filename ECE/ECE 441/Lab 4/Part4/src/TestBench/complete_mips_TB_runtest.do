SetActiveLib -work
comp -include "$dsn\src\9-6.vhd" 
comp -include "$dsn\src\9-7.vhd" 
comp -include "$dsn\src\9-8.vhd" 
comp -include "$dsn\src\9-9.vhd" 
comp -include "$dsn\src\TestBench\complete_mips_TB.vhd" 
asim +access +r TESTBENCH_FOR_complete_mips 
wave 
wave -noreg CLOCK_50
wave -noreg RST
wave -noreg A_Out
wave -noreg D_Out
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$dsn\src\TestBench\complete_mips_TB_tim_cfg.vhd" 
# asim +access +r TIMING_FOR_complete_mips 
