`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.09.2025 14:35:03
// Design Name: 
// Module Name: top_module
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


module top_module(D,Q1,Qnot1,clk,rst,J,K,Q2,Qnot2,S,R,Q3,Qnot3,T,Q4,Qnot4);
input D;
output Q1,Qnot1; 
input clk,rst; 
input J,K; 
output Q2,Qnot2;
input S,R; 
output Q3,Qnot3; 
input T; output Q4,Qnot4;
D_ff D_ff(D,Q1,Qnot1,clk,rst);
JK_ff JK_ff(J,K,clk,Q2,Qnot2,rst);
SR SR_ff(S,R,clk,Q3,Qnot3,rst);
T_ff T_ff(T,Q4,Qnot4,clk,rst);
endmodule
