SetActiveLib -work
comp -include "$dsn\src\RegisterFile.vhd" 
comp -include "$dsn\src\TestBench\reg_TB.vhd" 
asim +access +r TESTBENCH_FOR_reg 
wave 
wave -noreg clk
wave -noreg regWrite
wave -noreg WriteData
wave -noreg WriteRegister
wave -noreg Reg1
wave -noreg Reg2
wave -noreg Reg1Data
wave -noreg Reg2Data
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$dsn\src\TestBench\reg_TB_tim_cfg.vhd" 
# asim +access +r TIMING_FOR_reg 
