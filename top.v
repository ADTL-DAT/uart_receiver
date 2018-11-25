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


module top(input clk,reset,RxD ,output wire TxD);
   wire [7:0] Data;

    receiver inst1 (.clk(clk),.reset(reset),.RxD(RxD),.RxData(Data));
    transmitter inst2 (.clk(clk),.reset(reset),.data(Data),.TxD(TxD));
endmodule
