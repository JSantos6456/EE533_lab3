////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1
//  \   \         Application : sch2verilog
//  /   /         Filename : dropfifo.vf
// /___/   /\     Timestamp : 01/28/2025 22:02:06
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2verilog.exe -intstyle ise -family spartan3a -w "C:/Documents and Settings/student/Lab3/dropfifo.sch" dropfifo.vf
//Design Name: dropfifo
//Device: spartan3a
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 100 ps / 10 ps

module FD8CE_HXILINX_dropfifo(Q, C, CE, CLR, D);

   
   output [7:0]       Q;

   input 	      C;	
   input 	      CE;	
   input 	      CLR;	
   input  [7:0]       D;
   
   reg    [7:0]       Q;
   
   always @(posedge C or posedge CLR)
     begin
	if (CLR)
	  Q <= 8'b0000_0000;
	else if (CE)
          Q <= D;
     end
   
   
endmodule
`timescale  100 ps / 10 ps

module COMP8_HXILINX_dropfifo (EQ, A, B);
    

   output EQ;

   input  [7:0] A;
   input  [7:0] B;

   assign EQ = (A==B) ;

endmodule
`timescale 100 ps / 10 ps

module CB8CLE_HXILINX_dropfifo(CEO, Q, TC, C, CE, CLR, D, L);
   
   parameter TERMINAL_COUNT = 8'b1111_1111;
   
   output             CEO;
   output [7:0]       Q;
   output             TC;

   input 	      C;	
   input 	      CE;	
   input 	      CLR;	
   input  [7:0]       D;
   input              L;
   
   reg    [7:0]       Q;
   
   always @(posedge C or posedge CLR)
     begin
	if (CLR)
	  Q <= 8'b0000_0000;
        else if (L)
          Q <= D;
	else if (CE)
	  Q <= Q + 1;
     end
   
   assign CEO = TC & CE;
   assign TC = Q == TERMINAL_COUNT;
   
endmodule
`timescale 100 ps / 10 ps

module CB8CE_HXILINX_dropfifo(CEO, Q, TC, C, CE, CLR);
   
   parameter TERMINAL_COUNT = 8'b1111_1111;
   
   output             CEO;
   output [7:0]       Q;
   output             TC;

   input 	      C;	
   input 	      CE;	
   input 	      CLR;	
   
   reg   [7:0]        Q;
   
   always @(posedge C or posedge CLR)
     begin
	if (CLR)
	  Q <= 8'b0000_0000;
	else if (CE)
	  Q <= Q + 1;
     end
   
   assign CEO = TC & CE;
   assign TC = Q == TERMINAL_COUNT;
   
endmodule
`timescale 1ns / 1ps

module dropfifo(clk, 
                drop_pkt, 
                fiforead, 
                fifowrite, 
                firstword, 
                in_fifo, 
                lastword, 
                rst, 
                out_fifo, 
                valid_data);

    input clk;
    input drop_pkt;
    input fiforead;
    input fifowrite;
    input firstword;
    input [71:0] in_fifo;
    input lastword;
    input rst;
   output [71:0] out_fifo;
   output valid_data;
   
   wire [71:0] in_fifo0;
   wire [7:0] waddr;
   wire XLXN_10;
   wire XLXN_11;
   wire XLXN_12;
   wire XLXN_14;
   wire [7:0] XLXN_16;
   wire XLXN_17;
   wire XLXN_18;
   wire [0:0] XLXN_22;
   wire XLXN_24;
   wire [7:0] XLXN_32;
   wire XLXN_45;
   wire XLXN_52;
   
   FD XLXI_1 (.C(clk), 
              .D(firstword), 
              .Q(XLXN_10));
   defparam XLXI_1.INIT = 1'b0;
   FD XLXI_2 (.C(clk), 
              .D(lastword), 
              .Q(XLXN_11));
   defparam XLXI_2.INIT = 1'b0;
   FD8CE_HXILINX_dropfifo XLXI_3 (.C(clk), 
                                  .CE(XLXN_14), 
                                  .CLR(rst), 
                                  .D(waddr[7:0]), 
                                  .Q(XLXN_16[7:0]));
   // synthesis attribute HU_SET of XLXI_3 is "XLXI_3_0"
   FD XLXI_4 (.C(clk), 
              .D(drop_pkt), 
              .Q(XLXN_52));
   defparam XLXI_4.INIT = 1'b0;
   OR2 XLXI_5 (.I0(XLXN_11), 
               .I1(XLXN_10), 
               .O(XLXN_12));
   AND2B1 XLXI_6 (.I0(XLXN_52), 
                  .I1(XLXN_12), 
                  .O(XLXN_14));
   FD XLXI_7 (.C(clk), 
              .D(fifowrite), 
              .Q(XLXN_22[0]));
   defparam XLXI_7.INIT = 1'b0;
   COMP8_HXILINX_dropfifo XLXI_8 (.A(waddr[7:0]), 
                                  .B(XLXN_32[7:0]), 
                                  .EQ(XLXN_17));
   // synthesis attribute HU_SET of XLXI_8 is "XLXI_8_1"
   COMP8_HXILINX_dropfifo XLXI_9 (.A(XLXN_32[7:0]), 
                                  .B(XLXN_16[7:0]), 
                                  .EQ(XLXN_18));
   // synthesis attribute HU_SET of XLXI_9 is "XLXI_9_2"
   CB8CLE_HXILINX_dropfifo XLXI_10 (.C(clk), 
                                    .CE(XLXN_22[0]), 
                                    .CLR(rst), 
                                    .D(XLXN_16[7:0]), 
                                    .L(XLXN_52), 
                                    .CEO(), 
                                    .Q(waddr[7:0]), 
                                    .TC());
   // synthesis attribute HU_SET of XLXI_10 is "XLXI_10_3"
   CB8CE_HXILINX_dropfifo XLXI_11 (.C(clk), 
                                   .CE(XLXN_24), 
                                   .CLR(rst), 
                                   .CEO(), 
                                   .Q(XLXN_32[7:0]), 
                                   .TC());
   // synthesis attribute HU_SET of XLXI_11 is "XLXI_11_4"
   FDC XLXI_12 (.C(clk), 
                .CLR(rst), 
                .D(XLXN_24), 
                .Q(valid_data));
   defparam XLXI_12.INIT = 1'b0;
   reg9B XLXI_13 (.ce(XLXN_45), 
                  .clk(clk), 
                  .clr(rst), 
                  .d(in_fifo[71:0]), 
                  .q(in_fifo0[71:0]));
   AND3B2 XLXI_14 (.I0(XLXN_18), 
                   .I1(XLXN_17), 
                   .I2(fiforead), 
                   .O(XLXN_24));
   VCC XLXI_17 (.P(XLXN_45));
   dual_port_mem_72bit XLXI_19 (.addra(waddr[7:0]), 
                                .addrb(XLXN_32[7:0]), 
                                .clka(clk), 
                                .clkb(clk), 
                                .dina(in_fifo0[71:0]), 
                                .wea(XLXN_22[0]), 
                                .doutb(out_fifo[71:0]));
endmodule
