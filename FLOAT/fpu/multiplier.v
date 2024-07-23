module multiplier (
    input  logic        clk,     // Clock signal
    input  logic        reset,   // Reset signal
    input  logic        clken,   // Clock enable signal
    input  logic [31:0] in_reg1, // 32-bit input register 1
    input  logic [31:0] in_reg2, // 32-bit input register 2
    output logic [31:0] out_reg  // 32-bit output register
);

    // Internal signals
    logic [31:0] reg1; // Internal register 1
    logic [31:0] reg2; // Internal register 2
    logic ready;       // Ready signal from FPU

    // Capture input values into internal registers
    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            reg1 <= 32'b0;
            reg2 <= 32'b0;
        end else if (clken) begin
            reg1 <= in_reg1;
            reg2 <= in_reg2;
        end
    end

    // Instantiate the VHDL FPU wrapper
    fpu fpu_inst (
        .reset (reset),
        .clock (clk),
        .clken (clken),
        .data1 (reg1),
        .data2 (reg2),
        .d_out (out_reg),
        .ready (ready)
    );

    // Check if FPU is ready to update the output register
    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            out_reg <= 32'b0;
        end else if (ready) begin
            out_reg <= out_reg; // Update output register when FPU is ready
        end
    end

endmodule
