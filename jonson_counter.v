`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.07.2026 22:41:07
// Design Name: 
// Module Name: jonson_counter
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
module johnson_counter (input clk, input reset,output reg [3:0]X
);
always @(posedge clk or posedge reset)
begin
 if (reset)
 X <= 4'b0000;       
 else
 X<= {~X[0], X[3:1]};
end
endmodule