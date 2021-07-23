`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.03.2021 16:51:07
// Design Name: 
// Module Name: vaddoflow
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

/*
Create a new Verilog source module called vaddoflow with two 4?bit inputs, a and b, a 7?bit output,
seg_L, and a 1?bit output, oflow, as detailed in the figure above.
*/

/*
Then open the file and create a simple adder using an assign statement. First declare a 5?bit internal
wire, x, then use an assign statement to assign the sum of the two inputs to it. Then, instantiate your
vsevenseg module from Part 1, using named instantiation. Its output should be connected to the
module output. Its input should be connected to the four least significant bits of the adder output.
Then using another assign statement, connect the oflow output to the most significant bit of the adder
result. Verify that vaddoflow is the top module (in the Sources window).
*/

module vaddoflow(
        input [3:0] a, b,
        output [6:0] seg_L,
        output oflow
        );
        
        wire [4:0] x;
        assign x = a+b;
        
        vsevenseg NamedInst (
                    .x(x[3:0]),
                    .seg_L(seg_L)
                    );
        
        assign oflow = x[4];

    
endmodule
