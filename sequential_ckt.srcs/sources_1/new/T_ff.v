`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.09.2025 14:29:07
// Design Name: 
// Module Name: T_ff
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


module T_ff(T,Q,Qnot,clk,rst);
input T,clk,rst;
output reg Q; output Qnot;
always@(posedge clk, posedge rst)
begin
if(rst)
Q<=0;
else
begin
case(T)
1'b0: Q<=Q;
1'b1: Q<=~Q;
endcase
end
end
assign Qnot=~Q;
endmodule
