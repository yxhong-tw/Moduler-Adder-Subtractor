// 
// Designer: P76124215
//

module ALU(
    input signed [4:0] var_1,
    input signed [4:0] var_2,
    input [1:0] mode,
    output signed [4:0] result
);

    reg signed [4:0] reg_result;

    always @(var_1 or var_2 or mode)
    begin
        if(mode == 0)
        begin
            reg_result = var_1 + var_2;
        end
        else if(mode == 2'b11)
        begin
            reg_result = var_1 - var_2;
        end
        else
        begin
            reg_result = var_1;
        end
    end

    assign result = reg_result;
endmodule
