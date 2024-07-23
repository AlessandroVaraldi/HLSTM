module top_M3booth_multiplier (
    input  logic         clk,  // Clock signal
    input  logic         rst,  // Reset signal
    input  logic [23:0]  x,    // x is the multiplicand
    input  logic [23:0]  y,    // y is the multiplier
    output logic [47:0]  z     // z is the result of the multiplication
);

    // Register declarations
    logic [23:0] x_reg;
    logic [23:0] y_reg;
    logic [47:0] z_reg;

    // Instantiation of the M3booth_multiplier component
    // Here, we assume the tool supports direct instantiation of VHDL entities in SystemVerilog
    M3booth_multiplier multiplier_inst (
        .x(x_reg),
        .y(y_reg),
        .z(z_reg)
    );

    // Sequential logic for registers
    always_ff @(posedge clk or posedge rst) begin
        if (rst) begin
            x_reg <= 24'b0;
            y_reg <= 24'b0;
            z_reg <= 48'b0;
        end else begin
            x_reg <= x;
            y_reg <= y;
        end
    end

    // Output assignment
    assign z = z_reg;

endmodule
