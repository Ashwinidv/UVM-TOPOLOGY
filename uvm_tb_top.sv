////------------------------------------------------------------------------------------------------////
////-----------------------------------TOP_MODULE---------------------------------------------------//// 
// -------------------------------------------------------------------------------------------------////
 `include "C:/Users/dell/Desktop/semidigit/UVMTB/GC/src/uvm_pkg.sv"
  import uvm_pkg::*;
 
 `include "C:/Users/dell/Desktop/semidigit/UVMTB/GC/U_TB/basic_uvm_pkg.sv"
  import basic_pkg::* ;

  `include "uvm_interface.sv"

 
  //`timescale 1ns/ns

module top;

       

    reg clk;
    reg rst;

  
     basic_interface  b_intf(clk, rst);

           
        
       
   /* gamma_corr DUT (
                   i_intf.input_data_intf,
                   i_intf.reg_intf,
                   i_intf.output_data_intf
                  );*/

    initial begin
        clk = 0;
        forever begin
            #10 clk = ~clk;
        end
    end

    initial begin
        rst = 1'b0;
        #100
        rst = 1'b1;
    end

 

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars;

       // Interface connect testbench and dut
        uvm_config_db #(virtual basic_interface)::set(null, "*","basic_interface ",b_intf);
     /*   uvm_config_db #(virtual )::set(null, " ", " ", );
        uvm_config_db #(virtual )::set(null, " ", " ", );
        uvm_config_db #(virtual )::set(null, " ", " ", );*/




       run_test();
    end



        
    initial begin
     # 1000 $finish;
    end
      




endmodule : top
