////--------------------------------------------------------------------------------------------------////
////-------------------------------------------UVM_SCOREBOARD-----------------------------------------////
////--------------------------------------------------------------------------------------------------////


  class basic_scoreboard extends uvm_scoreboard;
   `uvm_component_utils(basic_scoreboard)

   

   function new(string name = "basic_scoreboard", uvm_component parent = null);
   super.new(name, parent);
   endfunction :new
 
   uvm_analysis_imp #(basic_sequence_item, basic_scoreboard) basic_export;

  function void build_phase (uvm_phase phase);
    basic_export = new("basic_export",this);
  endfunction : build_phase

   

   function void write(basic_sequence_item tx );
   `uvm_info ("write", $sformatf("Basic Transaction  received = 0x%0h", tx), UVM_MEDIUM)
   endfunction

   virtual task run_phase(uvm_phase phase);
   endtask: run_phase


   virtual function void check_phase(uvm_phase phase);
   endfunction : check_phase

   

  
 
  endclass : basic_scoreboard

