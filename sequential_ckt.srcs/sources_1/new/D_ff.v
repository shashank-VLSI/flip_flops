`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.09.2025 14:20:02
// Design Name: 
// Module Name: D_ff
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


module D_ff(D,Q,Qnot,clk,rst);
input D,clk,rst;
output reg Q; output Qnot;

always@(posedge clk, posedge rst)
begin 
if(rst)
Q<=0;
else
begin
case(D)
1'b0: Q<=1'b0;
1'b1: Q<=1'b1;
endcase
end
end

assign Qnot=~Q;
endmodule
