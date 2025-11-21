`timescale 1ns/1ns
`include "moore_fsm.v"
module top;
	parameter S1=5'b00001;
	parameter S2=5'b00010;
	parameter S3=5'b00100;
	parameter S4=5'b01000;
	parameter S5=5'b10000;

	reg clk,rst,din;
	wire pd;
	integer c=0;

	moore_fsm dut(clk,rst,din,pd);
	initial begin
		clk=0;
		forever #5 clk=~clk;
	end

	initial begin
		rst=1;
		repeat(2)@(posedge clk);
		rst=0;
	end
	initial begin
		repeat(200)begin
			@(posedge clk);
			din=$random;
		end
	end

	always@(posedge pd) c=c+1;

	initial begin
		#1000;
		$display("count=%0d",c);
		$finish();
	end
endmodule


