/////-------------------------------------------------------------------------------------------------------------------////
////--------------------------------------------------UVM_SEQUENCE_ITEM-------------------------------------------------////
////--------------------------------------------------------------------------------------------------------------------////


class basic_sequence_item extends uvm_sequence_item;
  `uvm_object_utils_begin(basic_sequence_item)
   `uvm_object_utils_end
  

  function new( string name = "basic_sequence_item");
   super.new(name);
  endfunction :new

 endclass : basic_sequence_item 
