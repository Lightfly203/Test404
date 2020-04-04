`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/04 18:54:26
// Design Name: 
// Module Name: Test_top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Test_top(//快转慢单bit信号仿真测试
    input clk1,//fast clk 50m
    input clk2,//slow clk 25m
    input data,
    output data_out
    );

    wire D;// D=1'b0;
    reg Q=1'b0,Q2=1'b0,Q3=1'b0,Q4=1'b0;

    always @(posedge clk1) begin
        Q <= D;
    end

    always @(posedge clk2) begin
        Q2 <= Q;
        Q3 <= Q2;
        Q4 <= Q3;
    end

    // always @(data or D or Q) begin
    //     if (data==1'b0) begin
    //         D = Q;
    //     end else begin
    //         D = ~Q;
    //     end
    // end
assign D =(data==1'b1)?(~Q):Q;
    assign data_out = (Q4 & (~Q3)) | ((~Q4) & Q3);

endmodule
