////--------------------------------------------------------------------------------------------------------------////
////-----------------------------------------------UVM_AGENT----------------------------------------------------- ////
////--------------------------------------------------------------------------------------------------------------////

  class basic_agent extends uvm_agent;
    protected uvm_active_passive_enum is_active = UVM_ACTIVE;

    basic_sequencer sqr;
    basic_driver    drv;
    basic_monitor   mon; 
   
   `uvm_component_utils_begin(basic_agent)
     `uvm_field_enum(uvm_active_passive_enum , is_active, UVM_ALL_ON)
   `uvm_component_utils_end

   function new(string name = "basic_agent", uvm_component parent = null);
    super.new(name, parent);
   endfunction:new

   function void build_phase(uvm_phase phase);
     super.build_phase(phase);
 // if(is_active == UVM_ACTIVE)
   begin
    sqr = basic_sequencer::type_id::create("sqr",this);
    drv = basic_driver ::type_id::create("drv",this);
   end
    
   mon = basic_monitor ::type_id::create("mon",this);
 
  `uvm_info(get_full_name(),"BUILD PHASE OF MONITOR IS COMPLETED", UVM_LOW)
   endfunction: build_phase

   function void connect_phase(uvm_phase phase);
    if(is_active == UVM_ACTIVE)
    drv.seq_item_port.connect(sqr.seq_item_export);
   `uvm_info(get_full_name(),"CONNECT PHASE OF MONITOR IS COMPLETED", UVM_LOW) 
  
  endfunction : connect_phase
      
   

  
  
  endclass : basic_agent
