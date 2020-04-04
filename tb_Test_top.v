`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/04 18:55:42
// Design Name: 
// Module Name: tb_Test_top
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


module tb_Test_top();

// reg rst_n;
reg clk1 = 1'b0;
reg clk2 = 1'b0;
reg data = 1'b0;

initial
begin
       #130
       data=1'b1;
       #20
       data=1'b0;
       #120
       data=1'b1;
       #20
       data=1'b0;
       #260
       data=1'b1;
       #20
       data=1'b0;
       #120
       data=1'b1;
       #20
       data=1'b0;
       #130
       data=1'b1;
       #20
       data=1'b0;
       #120
       data=1'b1;
       #20
       data=1'b0;
end

initial begin
    forever clk1 = #(20/2) ~ clk1;//50m
end

initial begin
    forever clk2 = #(40/2) ~ clk2;//20m
    
end

Test_top Test_1bit_sync(
    .clk1(clk1),//fast clk 50m
    .clk2(clk2),//slow clk 25m
    .data(data)
    // .data_out
);

endmodule
