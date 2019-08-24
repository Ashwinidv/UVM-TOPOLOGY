vlog +incdir+C:/Users/dell/Desktop/semidigit/UVMTB/GC/src uvm_tb_top.sv
vsim -novopt +UVM_TESTNAME=basic_Test top -sv_lib C:/Users/dell/Desktop/semidigit/UVMTB/GC/uvm-1.1d/win32/uvm_dpi  +UVM_VERBOSITY=UVM_MEDIUM -l elab.log

run -all
