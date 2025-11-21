module moore_fsm(clk,rst,din,pd);
	parameter S1=5'b00001;
	parameter S2=5'b00010;
	parameter S3=5'b00100;
	parameter S4=5'b01000;
	parameter S5=5'b10000;
	input clk,rst,din;
	output reg pd;
	reg [4:0]state,nxt_state;

	always@(posedge clk) begin
		if(rst) begin
			pd=0;
			state=S1;
			nxt_state=S1;
		end
		else begin
			case(state)
				S1:begin
					pd=0;
					if(din) begin
						nxt_state=S2;
					end
					else begin
						nxt_state=S1;
					end
				end
				S2:begin
						pd=0;
					if(din) begin
						nxt_state=S2;
					end
					else begin
						nxt_state=S3;
						pd=0;
					end
				end
				S3:begin
						pd=0;
					if(din) begin
						nxt_state=S4;
					end
					else begin
						nxt_state=S1;
					end
				end
				S4:begin
						pd=0;
					if(din) begin
						nxt_state=S2;
					end
					else begin
						nxt_state=S5;
					end
				end
				S5:begin
						pd=1;
					if(din) begin
						nxt_state=S2;
					end
					else begin
						nxt_state=S1;
					end
				end
			endcase
		end
	end
	always@(nxt_state) state=nxt_state;
endmodule

				

	
