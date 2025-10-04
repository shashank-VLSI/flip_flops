`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.09.2025 14:24:54
// Design Name: 
// Module Name: JK_ff
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


module JK_ff(J,K,clk,Q,Qnot,rst);
input J,K,clk,rst;
output reg Q; output Qnot;
always@(posedge clk,posedge rst)
begin
if(rst)
Q<=0;
else
begin
case({J,K})
2'b00: Q<=Q;
2'b01: Q<=1'b0;
2'b10: Q<=1'b1;
2'b11: Q<=~Q;
endcase
end
end
assign Qnot=~Q;
endmodule
