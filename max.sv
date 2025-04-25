`timescale 1ps / 1ps

module max
#(
    parameter D_W = 32
)
(
    input logic                  clk,
    input logic                  rst,
    input logic                  initialize,
    input logic signed [D_W-1:0] in_data,
    output logic signed [D_W-1:0] result
);

    always_ff @(posedge clk) begin
        if (rst) begin
            result <= 0; // Reset result to 0
        end else if (initialize) begin
            result <= in_data;
        end else begin
            result <= (in_data > result) ? in_data : result;
        end
    end

endmodule