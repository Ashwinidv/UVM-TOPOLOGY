 // -------------------------------------------------------------------------------------------------------//
 //---------------------------------------- UVM_DRIVER ----------------------------------------------------//
 //--------------------------------------------------------------------------------------------------------//



    class basic_driver extends uvm_driver#(basic_sequence_item);
      `uvm_component_utils(basic_driver)

    function new(string name = "basic_driver",uvm_component parent= null);
       super.new(name ,parent);
    endfunction :new


    virtual basic_interface b_intf;

    virtual function void build_phase(uvm_phase phase);
      if(uvm_config_db #(virtual basic_interface)::get(this, "*", "basic_interface", b_intf))
       `uvm_fatal("NOVIF"," get the virtual interface in driver  from UVM_CONGIF_DB.\n ")
    endfunction: build_phase


      function void connect_phase(uvm_phase phase);
      super.connect_phase(phase);
	  `uvm_info ( get_type_name (), $sformatf ("Connect Phase"), UVM_MEDIUM)
     endfunction : connect_phase

     function void end_of_elaboration_phase(uvm_phase phase);
	  super.end_of_elaboration_phase(phase); 
          // uvm_top.print_topology();

          `uvm_info (get_type_name (), $sformatf ("End of Elaboration"), UVM_MEDIUM)
     endfunction : end_of_elaboration_phase	  
  
    function void start_of_simulation_phase (uvm_phase phase);
      super.start_of_simulation_phase(phase);
     
     `uvm_info (get_type_name (), $sformatf ("start_of_simulation_phase_1"), UVM_MEDIUM)
     endfunction : start_of_simulation_phase 
  
   task run_phase (uvm_phase phase);
      super.run_phase (phase);
      forever begin
         `uvm_info (get_type_name (), $sformatf ("Waiting for data from sequencer"), UVM_MEDIUM)
         seq_item_port.get_next_item (req);
         drive_item ();
         seq_item_port.item_done ();
      end
   endtask

   virtual task drive_item ();
      // Drive based on bus protocol
    endtask
 

   
 endclass: basic_driver



    

    
