// 
// Designer: P76124215
//

`include "ALU.v"
`include "Q_CMP.v"

module MAS_2input(
    input signed [4:0] Din1,
    input signed [4:0] Din2,
    input [1:0] Sel,
    input signed [4:0] Q,
    output [1:0] Tcmp,
    // Original outputs, do not know why they can not be used
    // -----
    // output signed reg [4:0] TDout,
    // output signed reg [3:0] Dout
    // -----

    // My new outputs
    // -----
    output signed [4:0] TDout,
    output signed [3:0] Dout
    // -----
);

    ALU alu_1(
        .var_1(Din1),
        .var_2(Din2),
        .mode(Sel),
        .result(TDout)
    );

    Q_CMP q_cmp(
        .var_1(TDout),
        .q(Q),
        .result(Tcmp)
    );

    ALU alu_2(
        .var_1(TDout),
        .var_2(Q),
        .mode(Tcmp),
        .result(Dout)
    );
endmodule
