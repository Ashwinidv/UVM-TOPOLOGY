   ////-------------------------------------------------------------------------------------------------------------//
   ///----------------------------------------------UVM_SEQUENCER--------------------------------------------------//
   ///-------------------------------------------------------------------------------------------------------------//

  class basic_sequencer extends uvm_sequencer#(basic_sequence_item);
   `uvm_component_utils(basic_sequencer)
  
    function new(string name = "basic_sequencer", uvm_component parent=null);
     super.new(name,parent);
    endfunction :new

  endclass:basic_sequencer
