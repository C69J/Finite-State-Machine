`timescale 1ns / 1ps
module FSM(
    input clk, reset, inp,
    output reg outp,
    output reg [1:0] state
);

always @(posedge clk or posedge reset) begin
    if (reset)
        state <= 2'b00;
    else begin
        case(state)
            2'b00: state <= inp ? 2'b01 : 2'b10;
            2'b01: state <= inp ? 2'b11 : 2'b10;
            2'b10: state <= inp ? 2'b01 : 2'b11;
            2'b11: state <= inp ? 2'b11 : 2'b00;
            default: state <= 2'b00;
        endcase
    end
end

// Moore output
always @(*) 
   begin
      outp = (state == 2'b11);
   end

endmodule
