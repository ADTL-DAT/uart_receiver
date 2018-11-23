module fifotb;

 // Inputs

 reg Clk;

 reg [7:0] dataIn;

 reg RD;

 reg WR;

 reg EN;

 reg Rst;

 // Outputs

 wire [7:0] dataOut;

 wire EMPTY;

 wire FULL;

 // Instantiate the Unit Under Test (UUT)

 fifo uut (

                  .Clk(Clk), 

                  .dataIn(dataIn), 

                  .RD(RD), 

                  .WR(WR), 

                  .EN(EN), 

                  .dataOut(dataOut), 

                  .Rst(Rst), 

                  .EMPTY(EMPTY), 

                  .FULL(FULL)

                  );

 initial begin

  // Initialize Inputs

  Clk  = 1'b0;

  dataIn  = 8'h0;

  RD  = 1'b0;

  WR  = 1'b0;

  EN  = 1'b0;

  Rst  = 1'b1;

  // Wait 100 ns for global reset to finish

  #100;        

  // Add stimulus here

  EN  = 1'b1;

  Rst  = 1'b1;

  #20;

  Rst  = 1'b0;

  WR  = 1'b1;

  dataIn  = 8'h0;

  #20;

  dataIn  = 8'h1;

  #20;

  dataIn  = 8'h2;

  #20;

  dataIn  = 8'h3;

  #20;

  dataIn  = 8'h4;

  #20;

  WR = 1'b0;

  RD = 1'b1;  

 end 

   always #10 Clk = ~Clk;    

endmodule
