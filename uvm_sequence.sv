////-------------------------------------------------------------------------------------------------------/////
///----------------------------------------------UVM_SEQUENCE----------------------------------------------////
///--------------------------------------------------------------------------------------------------------////

 class basic_sequence extends uvm_sequence#(basic_sequence_item);
  `uvm_object_utils_begin(basic_sequence)
   `uvm_object_utils_end
  

  function new(string name = "basic_sequence");
   super.new(name);
    endfunction :new

  virtual task body();
     `uvm_do(req);
  endtask : body
  
 endclass : basic_sequence  
