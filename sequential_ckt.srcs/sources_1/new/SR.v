`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.09.2025 11:47:52
// Design Name: 
// Module Name: SR
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


module SR(S,R,clk,Q,Qnot,rst);
input S,R,clk,rst;
output reg Q; output Qnot;
always@(posedge clk,posedge rst)
begin
if(rst)
Q<=0;
else
begin
case({S,R})
2'b00: Q<=Q;
2'b01: Q<=1'b0;
2'b10: Q<=1'b1;
2'b11: Q<=1'bx;
endcase
end
end
assign Qnot=~Q;
endmodule
