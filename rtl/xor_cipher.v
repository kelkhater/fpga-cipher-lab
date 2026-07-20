`timescale 1ns / 1ps
module xor_cipher #(parameter WIDTH = 8)(
input [WIDTH - 1 : 0] key,
input [WIDTH - 1 : 0] data_in,
output [WIDTH - 1: 0] data_out
);


assign data_out = key ^ data_in;

endmodule
