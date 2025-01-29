////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1
//  \   \         Application : sch2verilog
//  /   /         Filename : comparator.vf
// /___/   /\     Timestamp : 01/28/2025 21:37:09
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2verilog.exe -intstyle ise -family spartan3a -w "C:/Documents and Settings/student/Lab3/comparator.sch" comparator.vf
//Design Name: comparator
//Device: spartan3a
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale  100 ps / 10 ps

module COMP8_HXILINX_comparator (EQ, A, B);
    

   output EQ;

   input  [7:0] A;
   input  [7:0] B;

   assign EQ = (A==B) ;

endmodule
`timescale  100 ps / 10 ps

module AND7_HXILINX_comparator (O, I0, I1, I2, I3, I4, I5, I6);
    

   output O;

   input I0;
   input I1;
   input I2;
   input I3;
   input I4;
   input I5;
   input I6;

assign O = I0 && I1 && I2 && I3 && I4 && I5 && I6;

endmodule
`timescale 1ns / 1ps

module comparator(a, 
                  amask, 
                  b, 
                  match);

    input [55:0] a;
    input [6:0] amask;
    input [55:0] b;
   output match;
   
   wire XLXN_18;
   wire XLXN_19;
   wire XLXN_20;
   wire XLXN_21;
   wire XLXN_35;
   wire XLXN_36;
   wire XLXN_37;
   wire XLXN_44;
   wire XLXN_45;
   wire XLXN_46;
   wire XLXN_47;
   wire XLXN_48;
   wire XLXN_49;
   wire XLXN_50;
   
   COMP8_HXILINX_comparator XLXI_1 (.A(a[55:48]), 
                                    .B(b[55:48]), 
                                    .EQ(XLXN_21));
   // synthesis attribute HU_SET of XLXI_1 is "XLXI_1_0"
   COMP8_HXILINX_comparator XLXI_2 (.A(a[47:40]), 
                                    .B(b[47:40]), 
                                    .EQ(XLXN_20));
   // synthesis attribute HU_SET of XLXI_2 is "XLXI_2_1"
   COMP8_HXILINX_comparator XLXI_3 (.A(a[39:32]), 
                                    .B(b[39:32]), 
                                    .EQ(XLXN_19));
   // synthesis attribute HU_SET of XLXI_3 is "XLXI_3_2"
   COMP8_HXILINX_comparator XLXI_4 (.A(a[31:24]), 
                                    .B(b[31:24]), 
                                    .EQ(XLXN_18));
   // synthesis attribute HU_SET of XLXI_4 is "XLXI_4_3"
   OR2B1 XLXI_5 (.I0(amask[6]), 
                 .I1(XLXN_21), 
                 .O(XLXN_45));
   OR2B1 XLXI_6 (.I0(amask[5]), 
                 .I1(XLXN_20), 
                 .O(XLXN_47));
   OR2B1 XLXI_7 (.I0(amask[4]), 
                 .I1(XLXN_19), 
                 .O(XLXN_48));
   OR2B1 XLXI_8 (.I0(amask[3]), 
                 .I1(XLXN_18), 
                 .O(XLXN_50));
   COMP8_HXILINX_comparator XLXI_9 (.A(a[23:16]), 
                                    .B(b[23:16]), 
                                    .EQ(XLXN_37));
   // synthesis attribute HU_SET of XLXI_9 is "XLXI_9_4"
   COMP8_HXILINX_comparator XLXI_10 (.A(a[15:8]), 
                                     .B(b[15:8]), 
                                     .EQ(XLXN_36));
   // synthesis attribute HU_SET of XLXI_10 is "XLXI_10_5"
   COMP8_HXILINX_comparator XLXI_11 (.A(a[7:0]), 
                                     .B(b[7:0]), 
                                     .EQ(XLXN_35));
   // synthesis attribute HU_SET of XLXI_11 is "XLXI_11_6"
   OR2B1 XLXI_13 (.I0(amask[2]), 
                  .I1(XLXN_37), 
                  .O(XLXN_44));
   OR2B1 XLXI_14 (.I0(amask[1]), 
                  .I1(XLXN_36), 
                  .O(XLXN_46));
   OR2B1 XLXI_16 (.I0(amask[0]), 
                  .I1(XLXN_35), 
                  .O(XLXN_49));
   AND7_HXILINX_comparator XLXI_17 (.I0(XLXN_50), 
                                    .I1(XLXN_49), 
                                    .I2(XLXN_48), 
                                    .I3(XLXN_47), 
                                    .I4(XLXN_46), 
                                    .I5(XLXN_45), 
                                    .I6(XLXN_44), 
                                    .O(match));
   // synthesis attribute HU_SET of XLXI_17 is "XLXI_17_7"
endmodule
