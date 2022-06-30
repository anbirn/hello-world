//-------------------------------------------
// Project: Guthub test
// Purpose: Implement a majority voter
// Author: ANM
//-------------------------------------------
module maj_vote(
    input   logic             x0_i,
    input   logic             x1_i,
    input   logic             x2_i,
    output  logic             y_o
);

logic [2:0]     xbus;
logic           y;
assign xbus = {x2_i, x1_i, x0_i};

always_comb begin : majority_logic
    case (xbus)
        3'b011:     y = 1'b1;
        3'b110:     y = 1'b1;
        3'b101:     y = 1'b1;
        3'b111:     y = 1'b1;
        default:    y = 1'b0;
    endcase
end
assign y_o = y;

endmodule
