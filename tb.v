`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.07.2026 22:45:47
// Design Name: 
// Module Name: tb
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

module tb_counter;
reg clk;
reg reset;
wire [3:0] ring_out;
wire [3:0] johnson_out;

ring_counter RC (.clk(clk),.reset(reset),.X(ring_out));

johnson_counter JC (.clk(clk),.reset(reset),.X(johnson_out));
always #5 clk = ~clk;
initial
begin
 clk = 0;
 reset = 1;
 #10;
 reset = 0;
 #100;
   $finish;
end


initial
begin
    $monitor("Time=%0t | Reset=%b | Ring=%b | Johnson=%b",
              $time, reset, ring_out, johnson_out);
              
end

endmodule