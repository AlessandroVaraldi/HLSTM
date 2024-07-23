module multiplier (
    input  logic        clk,     // Clock signal
    input  logic        reset,   // Reset signal
    input  logic [31:0] in_reg1, // 32-bit input register 1
    input  logic [31:0] in_reg2, // 32-bit input register 2
    output logic [63:0] out_reg  // 64-bit output register
);

    logic [31:0] reg1; // Internal register 1
    logic [31:0] reg2; // Internal register 2
    logic [63:0] product; // Product of reg1 and reg2

    // Capture input values into internal registers
    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            reg1 <= 32'b0;
            reg2 <= 32'b0;
        end else begin
            reg1 <= in_reg1;
            reg2 <= in_reg2;
        end
    end

    // Perform multiplication
    always_comb begin
        product = reg1 * reg2;
    end

    // Capture the product into the output register
    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            out_reg <= 64'b0;
        end else begin
            out_reg <= product;
        end
    end

endmodule
