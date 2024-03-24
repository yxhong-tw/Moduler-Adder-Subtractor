// 
// Designer: P76124215
//

module Q_CMP(
    input signed [4:0] var_1,
    input signed [4:0] q,
    output [1:0] result
);

    reg [1:0] reg_result;

    always @(var_1 or q)
    begin
        if(var_1 >= 0)
        begin
            reg_result[0] = 1;
        end
        else
        begin
            reg_result[0] = 0;
        end

        if(var_1 >= q)
        begin
            reg_result[1] = 1;
        end
        else
        begin
            reg_result[1] = 0;
        end
    end

    assign result = reg_result;
endmodule
