////---------------------------------------------------------------------------------------------////
////----------------------------------UVM_MONITOR-----------------------------------------------////
////--------------------------------------------------------------------------------------------////

 class basic_monitor extends uvm_monitor;
   `uvm_component_utils(basic_monitor)

  function new(string name = "basic_monitor", uvm_component parent =  null);
   super.new(name, parent);
  endfunction : new

  virtual basic_interface  b_intf;

  uvm_analysis_port#(basic_sequence_item) mon_analysis_port;

  virtual function void build_phase(uvm_phase phase);
   mon_analysis_port = new("mon_analysis_port", this);

   if(uvm_config_db #(virtual basic_interface)::get(this, "*", "basic_interface", b_intf))
    `uvm_fatal("NOVIF","Didn't get the virtual interface in monitor from UVM_CONGIF_DB.\n ")
  endfunction:build_phase

 
  virtual task run_phase(uvm_phase phase);
   
  // fork
  //  mon_analysis_port.write();
 //  join
  
  endtask : run_phase


 endclass : basic_monitor
