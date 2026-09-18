`timescale 1ns / 1ps

module testbench;

reg clk;
reg reset;
reg inp;
reg [15:0] sequence;

wire outp;
wire [1:0] state;

integer i;

FSM dut (
    .clk(clk),
    .reset(reset),
    .inp(inp),
    .outp(outp),
    .state(state)
);

// clock generation
always #2 clk = ~clk;

initial begin
    clk = 0;
    reset = 1;
    sequence = 16'b0101001110001101;
    inp = 0;

    #5 reset = 0;

    // predefined sequence
    for(i=0; i<16; i=i+1) begin
        inp = sequence[i];
        #4;
        $display("State=%b Input=%b Output=%b", state, inp, outp);
    end

    // random inputs
    for(i=0; i<16; i=i+1) begin
        inp = $random % 2;
        #4;
        $display("State=%b Input=%b Output=%b", state, inp, outp);
    end

    $finish;
end

endmodule
