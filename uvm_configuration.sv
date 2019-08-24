////-------------------------------------------------------------------------------------------------------////
////--------------------------------------------UVM_CONFIGURATION------------------------------------------////
////-------------------------------------------------------------------------------------------------------////


  class basic_configuration extends uvm_object;
    `uvm_object_utils(basic_configuration)

  uvm_active_passive_enum is_active = UVM_ACTIVE;

  function new(string name ="basic_configuration", uvm_object = null);
    super.new(name);
  endfunction :new

 endclass : basic_configuration
