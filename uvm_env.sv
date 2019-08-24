///- -----------------------------------------------------------------------------------------------////
///---------------------------------------------------- UVM_ENVIRONMENT-----------------------------////
/// ------------------------------------------------------------------------------------------------////
class basic_Env extends uvm_env;
    `uvm_component_utils(basic_Env)

    
    basic_agent agent;
    basic_scoreboard scoreboard;

       function new(string name = "basic_Env", uvm_component parent = null);
        super.new(name, parent);
    endfunction

    function void build_phase(uvm_phase phase);

        // create objects
        agent = basic_agent::type_id::create("agent", this);
        scoreboard = basic_scoreboard::type_id::create("scoreboard", this);
    
    endfunction : build_phase

    function void connect_phase(uvm_phase phase);
      agent.mon.mon_analysis_port.connect(scoreboard.basic_export);
     endfunction : connect_phase

endclass : basic_Env
