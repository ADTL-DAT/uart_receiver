`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2018 12:13:59 AM
// Design Name: 
// Module Name: top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top(input clk,reset,RxD ,output TxD,empty,full);
   wire [7:0] datain,dataout;

    receiver inst1 (.clk(clk),.reset(reset),.RxD(RxD),.RxData(datain));
    fifo1 inst2(.clk(clk),.reset(reset),.dataIn(datain),.dataOut(dataout),.Rd(1'b0),.WR(1'b1),.EMPTY(empty),.FULL(full));
    fifo1 inst3(.clk(clk),.reset(reset),.dataIn(datain),.dataOut(dataout),.Rd(1'b1),.WR(1'b0),.EMPTY(empty),.FULL(full));
    transmitter1 inst4 (.clk(clk),.reset(reset),.data(dataout),.TxD(TxD));

endmodule
