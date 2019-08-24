////----------------------------------------------------------------------------------------------------------------////
///-----------------------------------------------------UVM_INTERFACE-----------------------------------------------////
///-----------------------------------------------------------------------------------------------------------------////

interface basic_interface(input logic clk, rst);

//logic in_data;
//logic out_data;
//logic in_reg;

//PIXEL VALUE
/*logic [ 23:0]pixel_val_i;
logic [ 23:0]pixel_val_o;

//CONTROL SIGNALS
logic        ivalid;
logic        iready;
logic        ovalid;
logic        oready;

//REGISTER ,DATA, RW
logic [15:0] addr;
logic [15:0] data;
logic        rw;

//MODPORT DECLARTION
//modport DUT( input clk, rst, pixel_val_i, ivalid, output iready ) ;
//modport TB( input clk, rst, oready, output pixel_val_o, ovalid ) ;

modport input_data_intf ( input clk, rst, pixel_val_i, ivalid, output iready );
modport reg_intf (input clk, rst,addr,data,rw);
modport output_data_intf(input clk, rst, oready, output pixel_val_o, ovalid);*/


endinterface :basic_interface

