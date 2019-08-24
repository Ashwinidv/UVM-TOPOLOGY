////--------------------------------------------------------------------------------------------////
////------------------------------------------UVM_BASIC_TEST------------------------------------////
//// -------------------------------------------------------------------------------------------////
class basic_Test extends uvm_test;
    `uvm_component_utils(basic_Test)

   basic_Env env;
   basic_sequence seq;

    function new(string name="", uvm_component parent);
        super.new(name, parent);
    endfunction


    function void build_phase(uvm_phase phase);
       super.build_phase(phase);
        env = basic_Env::type_id::create("env", this);
    endfunction

    virtual function void connect_phase(uvm_phase phase);
      super.connect_phase(phase);
	  `uvm_info ( get_name (),  "Connect Phase", UVM_MEDIUM)
    endfunction : connect_phase

      virtual function void end_of_elaboration_phase (uvm_phase phase);
       uvm_top.print_topology();
      endfunction :end_of_elaboration_phase



    function void start_of_simulation_phase(uvm_phase phase);

        // print classes that are registered in UVM factory
        if (uvm_report_enabled(UVM_HIGH)) begin
            this.print;
            factory.print;
        end
    endfunction

    task run_phase(uvm_phase phase);
      seq = basic_sequence::type_id::create("seq",this);

        // start  sequences 
        phase.raise_objection(this);
        assert(seq.randomize());
        seq.start(env.agent.sqr);
        phase.drop_objection(this);
    endtask : run_phase
endclass : basic_Test
