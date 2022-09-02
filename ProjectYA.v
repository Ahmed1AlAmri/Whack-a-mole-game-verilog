//-----------------------------------------------------------------------------
//
// Title       : No Title
// Design      : ProjectYA
// Author      : amr
// Company     : ksu
//
//-----------------------------------------------------------------------------
//
// File        : c:\My_Designs\ProjectYA\ProjectYA\compile\ProjectYA.v
// Generated   : Wed Jan  1 23:35:56 2014
// From        : c:\My_Designs\ProjectYA\ProjectYA\src\ProjectYA.bde
// By          : Bde2Verilog ver. 2.01
//
//-----------------------------------------------------------------------------
//
// Description : 
//
//-----------------------------------------------------------------------------

`ifdef _VCP
`else
`define library(a,b)
`endif


// ---------- Design Unit Header ---------- //
`timescale 1ps / 1ps

module ProjectYA (B0,B1,B2,B3,clock,reset,green0,green1,green2,green3,
Out) ;

// ------------ Port declarations --------- //
input B0;
wire B0;
input B1;
wire B1;
input B2;
wire B2;
input B3;
wire B3;
input clock;
wire clock;
input reset;
wire reset;
output green0;
wire green0;
output green1;
wire green1;
output green2;
wire green2;
output green3;
wire green3;
output [6:0] Out;
wire [6:0] Out;

// ----------- Signal declarations -------- //
wire NET219;
wire NET75;
wire NET78;
wire NET86;
wire [3:0] BUS196;

// -------- Component instantiations -------//

StateB U1
(
	.B0(B0),
	.B1(B1),
	.B2(B2),
	.B3(B3),
	.CLK(NET75),
	.counter(NET78),
	.green0(green0),
	.green1(green1),
	.green2(green2),
	.green3(green3),
	.res(NET86),
	.reset(reset),
	.valid(NET219),
	.zabal(BUS196)
);



clk2 U2
(
	.Oclock(NET75),
	.clock(clock)
);



counter U3
(
	.clk(NET75),
	.out(NET78),
	.reset(NET86)
);



counter2 U4
(
	.inp(NET219),
	.out(BUS196),
	.reset(reset)
);



Segment U5
(
	.D(BUS196),
	.Out(Out)
);



endmodule 
