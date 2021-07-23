`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.04.2021 16:59:11
// Design Name: 
// Module Name: scroll
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


module scroll(
    input clk,
    input rst,
    output [15:0] display
    );
    
    
    // Add a 4-bit up counter (count, which counts 0 to 15), 
    // triggered on the positive edge of clk with active high reset (rst).
    // See slow_clkgen.v for a counter example (there is no need for the assign statement
    reg [3:0] count;
    
	always @(posedge clk)
	begin
         if (rst) 
             count <= 4'd0;
         else
             count <= count + 1'b1;
	end
	
	
	// Then, we need to generate the 4 active digits that will be displayed on the four 7-segment displays.
	// Declare a wire, with four 4-bit values called a, b, c and d, as "wire [3:0] a, b, c, d;". 
	// Using a continuous assign statement, assign the current count value to a. 
	// Using three other continuous assign statements, assign count+1 to b, count+2 to c 
	// and count+3 to d. So, if count is "0", a=0, b=1, c=2 and d=3. 
	// If count is '14", a=14, b=15, c=0 and d=1, etc. 
	// That is, as count increments, we have a sequence of 4 sequential values 
	// starting with the current value of count.  
    wire [3:0] a,b,c,d;
    assign a = count;
    assign b = count+1;
    assign c = count+2;
    assign d = count+3;
    
    
    // Then, we need to instantiate four convert modules, with inputs a, b, c and d, respectively. 
    // Each of the instantiated modules will output 4 bits of the 16-bit display output, 
    // with the a value corresponding to the 4 MSBs (display [15:12]) and the 
    // d module corresponding to the  4 LSBs (display [3:0]).
    convert convA (.in(a), .out(display[15:12])); //MSB
    convert convB (.in(b), .out(display[11:8]));
    convert convC (.in(c), .out(display[7:4]));
    convert convD (.in(d), .out(display[3:0])); //LSB
    
    
endmodule
