`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.03.2021 16:10:33
// Design Name: 
// Module Name: vsevenseg
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
You should now populate the vsevenseg.v source module with a single always @ * block, that contains
a case statement. The case statement should switch on x, and for each case, make a fixed assignment
to the 7 bits of seg_L. Remember that the order of the bits is segments “gfedcba” and the segments
are active low (that is, they are inverted from Table 1 of Lab 3). For example, the 1st entry in the case
statement should be “4'd0: seg_L = 7'b100_0000;”. Remember your seg_L output in the module
statement will need to be declared as type reg. Your case statement should have 16 possible entries
for the values 0 to F.  Don’t forget to add a default statement, as “default: seg_L = 7'b111_1111;”
*/

module vsevenseg(
    input [3:0] x,
    output reg [6:0] seg_L
    );
    
    always @ * begin
    case (x)
        4'd0:       seg_L = 7'b100_0000;
        4'd1:       seg_L = 7'b111_1001;
        4'd2:       seg_L = 7'b010_0100;
        4'd3:       seg_L = 7'b011_0000;
        4'd4:       seg_L = 7'b001_1001;
        4'd5:       seg_L = 7'b001_0010;
        4'd6:       seg_L = 7'b000_0010;
        4'd7:       seg_L = 7'b111_1000;
        4'd8:       seg_L = 7'b000_0000;
        4'd9:       seg_L = 7'b001_0000;
        4'd10:      seg_L = 7'b000_1000;
        4'd11:      seg_L = 7'b000_0011;
        4'd12:      seg_L = 7'b100_0110;
        4'd13:      seg_L = 7'b010_0001;
        4'd14:      seg_L = 7'b000_0110;
        4'd15:      seg_L = 7'b000_1110;     
        default:    seg_L = 7'b111_1111;
    endcase
    end
    
endmodule
