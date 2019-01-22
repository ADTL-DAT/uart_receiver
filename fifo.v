`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/22/2019 12:58:48 PM
// Design Name: 
// Module Name: fifo1
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


module fifo1( clk,dataIn,RD,WR,dataOut,reset,EMPTY,FULL); 

input  clk,RD,WR,reset;

output  EMPTY,FULL;

input   [7:0]    dataIn;

output reg [7:0] dataOut; 

// internal registers 

reg [31:0]  Count = 0; 

reg [7:0] FIFO [0:1119]; 

  reg [31:0]  readCounter = 0,writeCounter = 0; 

assign EMPTY = (Count==0)? 1'b1:1'b0; 

assign FULL = (Count==1200)? 1'b1:1'b0; 

always @ (posedge clk) 

begin 

  if (reset) begin 

   readCounter = 0; 

   writeCounter = 0; 

  end 

  else if (RD ==1'b1 && Count!=0) begin 

   dataOut  = FIFO[readCounter]; 

   readCounter = readCounter+1; 

  end 

  else if (WR==1'b1 && Count<1200) begin
   FIFO[writeCounter]  = dataIn; 

   writeCounter  = writeCounter+1; 

  end 

  else; 

 

 if (writeCounter==1200) 

  writeCounter=0; 

 else if (readCounter==1200) 

  readCounter=0; 

 else;

 if (readCounter > writeCounter) begin 

  Count=readCounter-writeCounter; 

 end 

 else if (writeCounter > readCounter) 

  Count=writeCounter-readCounter; 

 else;

end 

endmodule
