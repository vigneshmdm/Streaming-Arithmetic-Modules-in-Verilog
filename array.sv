timescale 1ps / 1ps

module array
#(
    parameter D_W     = 8,
    parameter D_W_ACC = 16,
    parameter N       = 3
)
(
    input logic                      clk,
    input logic                      rst,
    input logic                      initialize [N-1:0],
    input logic signed [D_W-1:0]     a [N-1:0],
    input logic signed [D_W-1:0]     b [N-1:0],
    output logic signed [D_W_ACC-1:0] result [N-1:0]
);

    genvar i;
    generate
        for (i = 0; i < N; i = i + 1) begin : mac_array
            always_ff @(posedge clk) begin
                if (rst) begin
                    result[i] <= 0;
                end else if (initialize[i]) begin
                    result[i] <= a[i] * b[i];
                end else begin
                    result[i] <= result[i] + (a[i] * b[i]);
                end
            end
        end
    endgenerate
endmodule
