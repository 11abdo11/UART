/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Wed Sep 20 00:42:44 2023
/////////////////////////////////////////////////////////////


module sysctrl ( sync_en, clk, rst, alu_out, sync_data, read_data, read_valid, 
        full, alu_valid, alu_fun, write_en, read_en, gate_en, alu_en, 
        write_inc, CLK_DIV_EN, write_data, write_fifo, address );
  input [15:0] alu_out;
  input [7:0] sync_data;
  input [7:0] read_data;
  output [3:0] alu_fun;
  output [7:0] write_data;
  output [7:0] write_fifo;
  output [3:0] address;
  input sync_en, clk, rst, read_valid, full, alu_valid;
  output write_en, read_en, gate_en, alu_en, write_inc, CLK_DIV_EN;
  wire   n9, n11, n12, n13, n14, n23, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n3, n4, n5, n6, n7, n8, n10, n15, n16,
         n17, n18, n19, n20, n21, n22, n24, n81, n82, n83, n84, n85, n86, n87;
  wire   [4:0] current_state;
  wire   [7:0] sync_data_int;
  wire   [4:0] next_state;

  DFFRX4M \current_state_reg[1]  ( .D(next_state[1]), .CK(clk), .RN(n7), .QN(
        n9) );
  NOR4BX4M U63 ( .AN(n77), .B(n16), .C(n72), .D(n21), .Y(n74) );
  OAI22X8M U74 ( .A0(n12), .A1(n79), .B0(n20), .B1(n61), .Y(alu_fun[2]) );
  OAI22X8M U75 ( .A0(n13), .A1(n79), .B0(n19), .B1(n61), .Y(alu_fun[1]) );
  OAI22X8M U76 ( .A0(n14), .A1(n79), .B0(n17), .B1(n61), .Y(alu_fun[0]) );
  NOR2X12M U84 ( .A(n21), .B(n43), .Y(address[3]) );
  NOR2X12M U85 ( .A(n20), .B(n43), .Y(address[2]) );
  DFFRQX2M \sync_data_int_reg[7]  ( .D(sync_data[7]), .CK(clk), .RN(n7), .Q(
        sync_data_int[7]) );
  DFFRQX2M \sync_data_int_reg[4]  ( .D(sync_data[4]), .CK(clk), .RN(n7), .Q(
        sync_data_int[4]) );
  DFFRQX2M \sync_data_int_reg[6]  ( .D(sync_data[6]), .CK(clk), .RN(n7), .Q(
        sync_data_int[6]) );
  DFFRQX2M \sync_data_int_reg[5]  ( .D(sync_data[5]), .CK(clk), .RN(n7), .Q(
        sync_data_int[5]) );
  DFFRX1M \sync_data_int_reg[3]  ( .D(sync_data[3]), .CK(clk), .RN(n7), .QN(
        n11) );
  DFFRX1M \sync_data_int_reg[2]  ( .D(sync_data[2]), .CK(clk), .RN(n7), .QN(
        n12) );
  DFFRX1M \sync_data_int_reg[1]  ( .D(sync_data[1]), .CK(clk), .RN(n7), .QN(
        n13) );
  DFFRX1M \sync_data_int_reg[0]  ( .D(sync_data[0]), .CK(clk), .RN(n7), .QN(
        n14) );
  DFFRQX2M \current_state_reg[3]  ( .D(next_state[3]), .CK(clk), .RN(n7), .Q(
        current_state[3]) );
  DFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .CK(clk), .RN(n7), .Q(
        current_state[2]) );
  DFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .CK(clk), .RN(n7), .Q(
        current_state[0]) );
  DFFRQX2M \current_state_reg[4]  ( .D(n83), .CK(clk), .RN(n7), .Q(
        current_state[4]) );
  INVX2M U3 ( .A(1'b0), .Y(CLK_DIV_EN) );
  NOR3X8M U5 ( .A(current_state[3]), .B(current_state[4]), .C(n9), .Y(n71) );
  NAND2X4M U6 ( .A(n38), .B(n60), .Y(n79) );
  NAND2X2M U7 ( .A(sync_data[0]), .B(sync_data[4]), .Y(n45) );
  OAI21X1M U8 ( .A0(sync_data[4]), .A1(sync_data[0]), .B0(n45), .Y(n69) );
  OR3X1M U9 ( .A(n46), .B(sync_data[0]), .C(sync_data[4]), .Y(n55) );
  NOR2X2M U10 ( .A(n72), .B(n86), .Y(n73) );
  NOR2BX4M U11 ( .AN(n80), .B(n9), .Y(n36) );
  AND2X2M U12 ( .A(n80), .B(n9), .Y(n60) );
  NOR2X6M U13 ( .A(current_state[2]), .B(current_state[0]), .Y(n38) );
  NOR2X4M U14 ( .A(n84), .B(current_state[2]), .Y(n42) );
  INVX2M U15 ( .A(sync_data[3]), .Y(n21) );
  INVX4M U16 ( .A(n41), .Y(n82) );
  NAND2BX2M U17 ( .AN(alu_en), .B(n82), .Y(gate_en) );
  INVX4M U18 ( .A(n3), .Y(n6) );
  NAND2X4M U19 ( .A(n54), .B(n50), .Y(n41) );
  NAND2X4M U20 ( .A(n79), .B(n61), .Y(alu_en) );
  NAND2X2M U21 ( .A(n82), .B(n4), .Y(write_en) );
  INVX2M U22 ( .A(n43), .Y(read_en) );
  INVX4M U23 ( .A(n39), .Y(n85) );
  AND2X2M U24 ( .A(n33), .B(n34), .Y(n3) );
  NAND2X2M U25 ( .A(n54), .B(n51), .Y(n65) );
  INVX2M U26 ( .A(n34), .Y(n83) );
  NAND2X4M U27 ( .A(n71), .B(n44), .Y(n50) );
  NAND2X2M U28 ( .A(n71), .B(n35), .Y(n54) );
  NOR2X4M U29 ( .A(n84), .B(n86), .Y(n44) );
  NAND2X4M U30 ( .A(n38), .B(n36), .Y(n61) );
  NAND2X4M U31 ( .A(n73), .B(n84), .Y(n43) );
  OAI21X2M U32 ( .A0(n17), .A1(n43), .B0(n50), .Y(address[0]) );
  NOR2X2M U33 ( .A(n19), .B(n43), .Y(address[1]) );
  NAND2X2M U34 ( .A(n44), .B(n60), .Y(n33) );
  NAND2X2M U35 ( .A(n35), .B(n60), .Y(n39) );
  NAND2X2M U36 ( .A(n44), .B(n36), .Y(n34) );
  CLKBUFX6M U37 ( .A(n40), .Y(n4) );
  NAND2X2M U38 ( .A(n42), .B(n36), .Y(n40) );
  OR3X2M U39 ( .A(n5), .B(n85), .C(n6), .Y(write_inc) );
  OAI2B11X2M U40 ( .A1N(n42), .A0(n72), .B0(n53), .C0(n49), .Y(n64) );
  NAND2X2M U41 ( .A(n71), .B(n42), .Y(n56) );
  NAND2X2M U42 ( .A(n71), .B(n38), .Y(n51) );
  NAND2X2M U43 ( .A(n42), .B(n60), .Y(n49) );
  NAND2X2M U44 ( .A(n46), .B(n66), .Y(n68) );
  INVX2M U45 ( .A(n66), .Y(n15) );
  INVX6M U46 ( .A(n8), .Y(n7) );
  INVX2M U47 ( .A(rst), .Y(n8) );
  NOR2X4M U48 ( .A(n86), .B(current_state[0]), .Y(n35) );
  NOR2X2M U49 ( .A(n87), .B(current_state[4]), .Y(n80) );
  INVX2M U50 ( .A(current_state[0]), .Y(n84) );
  INVX2M U51 ( .A(current_state[2]), .Y(n86) );
  INVX2M U52 ( .A(current_state[3]), .Y(n87) );
  INVX2M U53 ( .A(sync_data[0]), .Y(n17) );
  INVX2M U54 ( .A(sync_data[1]), .Y(n19) );
  OAI22X1M U55 ( .A0(n11), .A1(n79), .B0(n21), .B1(n61), .Y(alu_fun[3]) );
  NAND3BX2M U56 ( .AN(current_state[4]), .B(n87), .C(n9), .Y(n72) );
  INVX2M U57 ( .A(sync_data[2]), .Y(n20) );
  OAI22X2M U58 ( .A0(n4), .A1(n17), .B0(n82), .B1(n14), .Y(write_data[0]) );
  OAI22X2M U59 ( .A0(n4), .A1(n19), .B0(n82), .B1(n13), .Y(write_data[1]) );
  OAI22X2M U60 ( .A0(n4), .A1(n20), .B0(n82), .B1(n12), .Y(write_data[2]) );
  OAI22X2M U61 ( .A0(n4), .A1(n21), .B0(n82), .B1(n11), .Y(write_data[3]) );
  CLKBUFX6M U62 ( .A(n23), .Y(n5) );
  OAI2BB1X2M U64 ( .A0N(n35), .A1N(n36), .B0(n37), .Y(n23) );
  NAND4X2M U65 ( .A(current_state[4]), .B(n38), .C(n9), .D(n87), .Y(n37) );
  AO2B2X2M U66 ( .B0(sync_data_int[7]), .B1(n41), .A0(sync_data[7]), .A1N(n4), 
        .Y(write_data[7]) );
  AND2X2M U67 ( .A(n38), .B(sync_data[7]), .Y(n77) );
  OAI2BB1X2M U68 ( .A0N(read_data[0]), .A1N(n85), .B0(n32), .Y(write_fifo[0])
         );
  AOI22X1M U69 ( .A0(alu_out[8]), .A1(n5), .B0(alu_out[0]), .B1(n6), .Y(n32)
         );
  OAI2BB1X2M U70 ( .A0N(read_data[1]), .A1N(n85), .B0(n31), .Y(write_fifo[1])
         );
  AOI22X1M U71 ( .A0(alu_out[9]), .A1(n5), .B0(alu_out[1]), .B1(n6), .Y(n31)
         );
  OAI2BB1X2M U72 ( .A0N(read_data[2]), .A1N(n85), .B0(n30), .Y(write_fifo[2])
         );
  AOI22X1M U73 ( .A0(alu_out[10]), .A1(n5), .B0(alu_out[2]), .B1(n6), .Y(n30)
         );
  OAI2BB1X2M U77 ( .A0N(read_data[3]), .A1N(n85), .B0(n29), .Y(write_fifo[3])
         );
  AOI22X1M U78 ( .A0(alu_out[11]), .A1(n5), .B0(alu_out[3]), .B1(n6), .Y(n29)
         );
  OAI2BB1X2M U79 ( .A0N(read_data[4]), .A1N(n85), .B0(n28), .Y(write_fifo[4])
         );
  AOI22X1M U80 ( .A0(alu_out[12]), .A1(n5), .B0(alu_out[4]), .B1(n6), .Y(n28)
         );
  OAI2BB1X2M U81 ( .A0N(read_data[5]), .A1N(n85), .B0(n27), .Y(write_fifo[5])
         );
  AOI22X1M U82 ( .A0(alu_out[13]), .A1(n5), .B0(alu_out[5]), .B1(n6), .Y(n27)
         );
  OAI2BB1X2M U83 ( .A0N(read_data[6]), .A1N(n85), .B0(n26), .Y(write_fifo[6])
         );
  AOI22X1M U86 ( .A0(alu_out[14]), .A1(n5), .B0(alu_out[6]), .B1(n6), .Y(n26)
         );
  OAI2BB1X2M U87 ( .A0N(read_data[7]), .A1N(n85), .B0(n25), .Y(write_fifo[7])
         );
  AOI22X1M U88 ( .A0(alu_out[15]), .A1(n5), .B0(alu_out[7]), .B1(n6), .Y(n25)
         );
  OAI2BB2X1M U89 ( .B0(n4), .B1(n22), .A0N(sync_data_int[5]), .A1N(n41), .Y(
        write_data[5]) );
  OAI2B11X2M U90 ( .A1N(n65), .A0(n16), .B0(n57), .C0(n67), .Y(next_state[0])
         );
  AOI22X1M U91 ( .A0(n68), .A1(n69), .B0(n70), .B1(n16), .Y(n67) );
  NAND2BX2M U92 ( .AN(n64), .B(n56), .Y(n70) );
  OAI2BB2X1M U93 ( .B0(n4), .B1(n24), .A0N(sync_data_int[6]), .A1N(n41), .Y(
        write_data[6]) );
  NAND3X2M U94 ( .A(n74), .B(sync_data[2]), .C(n76), .Y(n46) );
  NOR3X2M U95 ( .A(n24), .B(sync_data[5]), .C(sync_data[1]), .Y(n76) );
  NAND3X2M U96 ( .A(n74), .B(sync_data[1]), .C(n75), .Y(n66) );
  NOR3X2M U97 ( .A(n22), .B(sync_data[6]), .C(sync_data[2]), .Y(n75) );
  INVX4M U98 ( .A(sync_en), .Y(n16) );
  OAI211X2M U99 ( .A0(n45), .A1(n46), .B0(n10), .C0(n47), .Y(next_state[3]) );
  AOI211X2M U100 ( .A0(sync_en), .A1(n48), .B0(alu_en), .C0(n81), .Y(n47) );
  INVX2M U101 ( .A(n49), .Y(n81) );
  NAND2X2M U102 ( .A(n50), .B(n51), .Y(n48) );
  NAND4BX1M U103 ( .AN(n52), .B(n53), .C(n54), .D(n55), .Y(next_state[2]) );
  OAI211X2M U104 ( .A0(n56), .A1(n16), .B0(n57), .C0(n10), .Y(n52) );
  NAND2X2M U105 ( .A(n73), .B(current_state[0]), .Y(n53) );
  OA21X2M U106 ( .A0(sync_en), .A1(n50), .B0(n78), .Y(n57) );
  NAND3BX2M U107 ( .AN(full), .B(alu_en), .C(alu_valid), .Y(n78) );
  NAND4X2M U108 ( .A(n61), .B(n33), .C(n62), .D(n63), .Y(next_state[1]) );
  OAI2BB1X2M U109 ( .A0N(n56), .A1N(n50), .B0(n16), .Y(n62) );
  AOI221X2M U110 ( .A0(n15), .A1(n18), .B0(sync_en), .B1(n64), .C0(n65), .Y(
        n63) );
  INVX2M U111 ( .A(n45), .Y(n18) );
  INVX2M U112 ( .A(n58), .Y(n10) );
  OAI211X2M U113 ( .A0(n59), .A1(n39), .B0(n43), .C0(n33), .Y(n58) );
  NOR2BX2M U114 ( .AN(read_valid), .B(full), .Y(n59) );
  AO2B2X2M U115 ( .B0(sync_data_int[4]), .B1(n41), .A0(sync_data[4]), .A1N(n4), 
        .Y(write_data[4]) );
  INVX2M U116 ( .A(sync_data[6]), .Y(n24) );
  INVX2M U117 ( .A(sync_data[5]), .Y(n22) );
endmodule


module CLK_DIV_0_DW01_inc_0 ( A, SUM );
  input [8:0] A;
  output [8:0] SUM;

  wire   [8:2] carry;

  ADDHX1M U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
endmodule


module CLK_DIV_0_DW01_inc_1 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKXOR2X2M U1 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module CLK_DIV_0 ( i_ref_clk, i_rst, i_clk_en, i_div_ratio, o_div_clk );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst, i_clk_en;
  output o_div_clk;
  wire   N0, o_div_clk1, N7, N8, N9, N10, N11, N12, N13, N14, N17, N19, N20,
         N21, N22, N23, N24, N25, N26, n9, n10, n15, n16, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n1, n3, n4, n5, n6, n7, n8, n11,
         n12, n13, n14, n17, n18, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53;
  wire   [7:0] count;
  wire   SYNOPSYS_UNCONNECTED__0;

  CLK_DIV_0_DW01_inc_0 add_36_round ( .A({1'b0, i_div_ratio}), .SUM({N14, N13, 
        N12, N11, N10, N9, N8, N7, SYNOPSYS_UNCONNECTED__0}) );
  CLK_DIV_0_DW01_inc_1 add_42_aco ( .A({n11, n8, n7, n6, n5, n4, n3, n1}), 
        .SUM({N26, N25, N24, N23, N22, N21, N20, N19}) );
  DFFSRHQX2M o_div_clk1_reg ( .D(n19), .CK(i_ref_clk), .SN(n10), .RN(n9), .Q(
        o_div_clk1) );
  DFFSQX2M \count_reg[0]  ( .D(n22), .CK(i_ref_clk), .SN(n13), .Q(count[0]) );
  DFFRQX2M \count_reg[6]  ( .D(n28), .CK(i_ref_clk), .RN(n13), .Q(count[6]) );
  DFFRQX2M \count_reg[5]  ( .D(n27), .CK(i_ref_clk), .RN(n13), .Q(count[5]) );
  DFFRQX2M \count_reg[4]  ( .D(n26), .CK(i_ref_clk), .RN(n13), .Q(count[4]) );
  DFFRQX2M \count_reg[3]  ( .D(n25), .CK(i_ref_clk), .RN(n13), .Q(count[3]) );
  DFFRQX2M \count_reg[2]  ( .D(n24), .CK(i_ref_clk), .RN(n13), .Q(count[2]) );
  DFFRQX2M \count_reg[1]  ( .D(n23), .CK(i_ref_clk), .RN(n13), .Q(count[1]) );
  DFFRQX4M \count_reg[7]  ( .D(n29), .CK(i_ref_clk), .RN(n13), .Q(count[7]) );
  AOI22X1M U10 ( .A0(i_ref_clk), .A1(n12), .B0(N0), .B1(n53), .Y(n15) );
  AND2X2M U3 ( .A(count[0]), .B(N17), .Y(n1) );
  AND2X2M U4 ( .A(count[1]), .B(N17), .Y(n3) );
  AND2X2M U6 ( .A(count[2]), .B(N17), .Y(n4) );
  AND2X2M U7 ( .A(count[3]), .B(N17), .Y(n5) );
  AND2X2M U8 ( .A(count[4]), .B(N17), .Y(n6) );
  AND2X2M U9 ( .A(count[5]), .B(N17), .Y(n7) );
  AND2X2M U11 ( .A(count[6]), .B(N17), .Y(n8) );
  AND2X2M U12 ( .A(N17), .B(count[7]), .Y(n11) );
  INVX4M U13 ( .A(n18), .Y(N17) );
  MXI2X2M U14 ( .A(n30), .B(n31), .S0(n53), .Y(n18) );
  INVX2M U15 ( .A(o_div_clk1), .Y(n53) );
  INVX6M U16 ( .A(n14), .Y(n13) );
  INVX2M U17 ( .A(i_rst), .Y(n14) );
  CLKBUFX6M U18 ( .A(n16), .Y(n12) );
  OAI21X2M U19 ( .A0(n51), .A1(n52), .B0(i_clk_en), .Y(n16) );
  MX2X6M U20 ( .A(i_ref_clk), .B(o_div_clk1), .S0(N0), .Y(o_div_clk) );
  CLKINVX1M U21 ( .A(n20), .Y(n9) );
  CLKMX2X2M U22 ( .A(N26), .B(count[7]), .S0(n12), .Y(n29) );
  CLKMX2X2M U23 ( .A(N25), .B(count[6]), .S0(n12), .Y(n28) );
  CLKMX2X2M U24 ( .A(N24), .B(count[5]), .S0(n12), .Y(n27) );
  CLKMX2X2M U25 ( .A(N23), .B(count[4]), .S0(n12), .Y(n26) );
  CLKMX2X2M U26 ( .A(N22), .B(count[3]), .S0(n12), .Y(n25) );
  CLKMX2X2M U27 ( .A(N21), .B(count[2]), .S0(n12), .Y(n24) );
  CLKMX2X2M U28 ( .A(N20), .B(count[1]), .S0(n12), .Y(n23) );
  CLKMX2X2M U29 ( .A(N19), .B(count[0]), .S0(n12), .Y(n22) );
  NOR2X1M U30 ( .A(n13), .B(i_ref_clk), .Y(n20) );
  MXI2X1M U31 ( .A(n15), .B(n53), .S0(n17), .Y(n19) );
  NOR2X1M U32 ( .A(n12), .B(n18), .Y(n17) );
  CLKINVX1M U33 ( .A(n21), .Y(n10) );
  NOR2BX1M U34 ( .AN(i_ref_clk), .B(n13), .Y(n21) );
  CLKNAND2X2M U35 ( .A(n32), .B(n33), .Y(n31) );
  NOR4X1M U36 ( .A(n34), .B(n35), .C(n36), .D(n37), .Y(n33) );
  CLKXOR2X2M U37 ( .A(count[6]), .B(N13), .Y(n37) );
  CLKXOR2X2M U38 ( .A(count[5]), .B(N12), .Y(n36) );
  CLKXOR2X2M U39 ( .A(count[4]), .B(N11), .Y(n35) );
  CLKXOR2X2M U40 ( .A(count[3]), .B(N10), .Y(n34) );
  NOR4X1M U41 ( .A(n38), .B(n39), .C(n40), .D(n41), .Y(n32) );
  CLKXOR2X2M U42 ( .A(count[2]), .B(N9), .Y(n41) );
  CLKXOR2X2M U43 ( .A(count[1]), .B(N8), .Y(n40) );
  CLKXOR2X2M U44 ( .A(count[0]), .B(N7), .Y(n39) );
  CLKXOR2X2M U45 ( .A(count[7]), .B(N14), .Y(n38) );
  CLKNAND2X2M U46 ( .A(n42), .B(n43), .Y(n30) );
  NOR4X1M U47 ( .A(count[7]), .B(n44), .C(n45), .D(n46), .Y(n43) );
  CLKXOR2X2M U48 ( .A(i_div_ratio[3]), .B(count[2]), .Y(n46) );
  CLKXOR2X2M U49 ( .A(i_div_ratio[2]), .B(count[1]), .Y(n45) );
  CLKXOR2X2M U50 ( .A(i_div_ratio[1]), .B(count[0]), .Y(n44) );
  NOR4X1M U51 ( .A(n47), .B(n48), .C(n49), .D(n50), .Y(n42) );
  CLKXOR2X2M U52 ( .A(i_div_ratio[7]), .B(count[6]), .Y(n50) );
  CLKXOR2X2M U53 ( .A(i_div_ratio[6]), .B(count[5]), .Y(n49) );
  CLKXOR2X2M U54 ( .A(i_div_ratio[5]), .B(count[4]), .Y(n48) );
  CLKXOR2X2M U55 ( .A(i_div_ratio[4]), .B(count[3]), .Y(n47) );
  CLKINVX1M U56 ( .A(n12), .Y(N0) );
  OR3X1M U57 ( .A(i_div_ratio[2]), .B(i_div_ratio[3]), .C(i_div_ratio[1]), .Y(
        n52) );
  OR4X1M U58 ( .A(i_div_ratio[4]), .B(i_div_ratio[5]), .C(i_div_ratio[6]), .D(
        i_div_ratio[7]), .Y(n51) );
endmodule


module serializer ( P_data, clk, rst, ser_en, busy, ser_dn, S_data );
  input [7:0] P_data;
  input clk, rst, ser_en, busy;
  output ser_dn, S_data;
  wire   n6, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n1, n2, n3, n4, n5, n7, n38, n39, n40, n41;
  wire   [3:0] count;
  wire   [7:0] int;

  DFFRX4M \int_reg[0]  ( .D(n26), .CK(clk), .RN(n3), .QN(n6) );
  DFFRQX1M \int_reg[7]  ( .D(n33), .CK(clk), .RN(n3), .Q(int[7]) );
  DFFRQX1M S_data_reg ( .D(n24), .CK(clk), .RN(n3), .Q(S_data) );
  DFFRQX1M \count_reg[0]  ( .D(n37), .CK(clk), .RN(n4), .Q(count[0]) );
  DFFRQX1M \int_reg[6]  ( .D(n27), .CK(clk), .RN(n3), .Q(int[6]) );
  DFFRQX1M \int_reg[5]  ( .D(n28), .CK(clk), .RN(n3), .Q(int[5]) );
  DFFRQX1M \int_reg[4]  ( .D(n29), .CK(clk), .RN(n3), .Q(int[4]) );
  DFFRQX1M \int_reg[3]  ( .D(n30), .CK(clk), .RN(n3), .Q(int[3]) );
  DFFRQX1M \int_reg[2]  ( .D(n31), .CK(clk), .RN(n3), .Q(int[2]) );
  DFFRQX1M \int_reg[1]  ( .D(n32), .CK(clk), .RN(n3), .Q(int[1]) );
  DFFRQX1M \count_reg[3]  ( .D(n36), .CK(clk), .RN(n3), .Q(count[3]) );
  DFFRX4M \count_reg[1]  ( .D(n35), .CK(clk), .RN(n3), .Q(count[1]), .QN(n39)
         );
  DFFRX4M ser_dn_reg ( .D(n25), .CK(clk), .RN(n3), .Q(ser_dn) );
  DFFRX4M \count_reg[2]  ( .D(n34), .CK(clk), .RN(n3), .Q(count[2]), .QN(n40)
         );
  NAND2X4M U3 ( .A(busy), .B(n2), .Y(n10) );
  AND2X2M U4 ( .A(n10), .B(n11), .Y(n9) );
  OAI2B1X2M U5 ( .A1N(int[1]), .A0(n10), .B0(n18), .Y(n32) );
  OAI2B1X2M U6 ( .A1N(int[2]), .A0(n10), .B0(n17), .Y(n31) );
  OAI2B1X2M U7 ( .A1N(int[3]), .A0(n10), .B0(n16), .Y(n30) );
  OAI2B1X2M U8 ( .A1N(int[4]), .A0(n10), .B0(n15), .Y(n29) );
  OAI2B1X2M U9 ( .A1N(int[5]), .A0(n10), .B0(n14), .Y(n28) );
  OAI2B1X2M U10 ( .A1N(int[6]), .A0(n10), .B0(n13), .Y(n27) );
  OAI21X2M U11 ( .A0(n6), .A1(n10), .B0(n12), .Y(n26) );
  NAND4X2M U12 ( .A(count[3]), .B(n38), .C(n39), .D(n40), .Y(n23) );
  NAND3XLM U13 ( .A(busy), .B(n23), .C(ser_en), .Y(n8) );
  INVX4M U14 ( .A(n2), .Y(n7) );
  CLKINVX1M U15 ( .A(busy), .Y(n5) );
  OAI21X2M U16 ( .A0(count[1]), .A1(n2), .B0(n21), .Y(n19) );
  CLKBUFX8M U17 ( .A(n4), .Y(n3) );
  BUFX2M U18 ( .A(rst), .Y(n4) );
  NOR3X4M U19 ( .A(n38), .B(n2), .C(n39), .Y(n20) );
  AOI21X2M U20 ( .A0(n38), .A1(n7), .B0(n1), .Y(n21) );
  OAI21X2M U21 ( .A0(n22), .A1(n41), .B0(n11), .Y(n36) );
  AOI21X2M U22 ( .A0(n7), .A1(n40), .B0(n19), .Y(n22) );
  CLKBUFX6M U23 ( .A(n5), .Y(n1) );
  AOI22X1M U24 ( .A0(int[2]), .A1(n7), .B0(P_data[1]), .B1(n1), .Y(n18) );
  AOI22X1M U25 ( .A0(int[3]), .A1(n7), .B0(P_data[2]), .B1(n1), .Y(n17) );
  AOI22X1M U26 ( .A0(int[4]), .A1(n7), .B0(P_data[3]), .B1(n1), .Y(n16) );
  AOI22X1M U27 ( .A0(int[5]), .A1(n7), .B0(P_data[4]), .B1(n1), .Y(n15) );
  AOI22X1M U28 ( .A0(int[6]), .A1(n7), .B0(P_data[5]), .B1(n1), .Y(n14) );
  AOI22X1M U29 ( .A0(int[7]), .A1(n7), .B0(P_data[6]), .B1(n1), .Y(n13) );
  AOI22X1M U30 ( .A0(int[1]), .A1(n7), .B0(P_data[0]), .B1(n1), .Y(n12) );
  OAI2BB2X1M U31 ( .B0(n9), .B1(n2), .A0N(ser_dn), .A1N(n9), .Y(n25) );
  CLKBUFX6M U32 ( .A(n8), .Y(n2) );
  NAND3X2M U33 ( .A(n20), .B(n41), .C(count[2]), .Y(n11) );
  OAI22X1M U34 ( .A0(busy), .A1(n38), .B0(count[0]), .B1(n2), .Y(n37) );
  OAI32X2M U35 ( .A0(n38), .A1(count[1]), .A2(n2), .B0(n21), .B1(n39), .Y(n35)
         );
  OAI2BB2X1M U36 ( .B0(n2), .B1(n6), .A0N(S_data), .A1N(n2), .Y(n24) );
  AO22X1M U37 ( .A0(n19), .A1(count[2]), .B0(n40), .B1(n20), .Y(n34) );
  AO22XLM U38 ( .A0(busy), .A1(int[7]), .B0(P_data[7]), .B1(n1), .Y(n33) );
  INVX4M U39 ( .A(count[0]), .Y(n38) );
  INVX2M U40 ( .A(count[3]), .Y(n41) );
endmodule


module fsm ( par_en, data_valid, ser_dn, clk, rst, busy, select, ser_en );
  output [1:0] select;
  input par_en, data_valid, ser_dn, clk, rst;
  output busy, ser_en;
  wire   n5, n6, n7, n8, n9, n10, n11, n3, n4, n12, n13, n14, n15;
  wire   [2:0] current_state;
  wire   [2:0] next_state;

  DFFRQX1M \current_state_reg[1]  ( .D(next_state[1]), .CK(clk), .RN(n12), .Q(
        current_state[1]) );
  DFFRQX4M \current_state_reg[0]  ( .D(next_state[0]), .CK(clk), .RN(n12), .Q(
        current_state[0]) );
  DFFRX4M \current_state_reg[2]  ( .D(next_state[2]), .CK(clk), .RN(rst), .Q(
        current_state[2]), .QN(n14) );
  OAI21X2M U3 ( .A0(current_state[0]), .A1(n5), .B0(n13), .Y(select[1]) );
  OR2X4M U4 ( .A(n4), .B(ser_en), .Y(busy) );
  AND2X2M U5 ( .A(n6), .B(n14), .Y(ser_en) );
  OR2X2M U6 ( .A(n6), .B(current_state[0]), .Y(n3) );
  AOI21X2M U7 ( .A0(current_state[2]), .A1(current_state[0]), .B0(n6), .Y(
        select[0]) );
  NOR3X4M U8 ( .A(current_state[0]), .B(current_state[2]), .C(n15), .Y(n8) );
  NAND4BX1M U9 ( .AN(par_en), .B(ser_dn), .C(current_state[1]), .D(n14), .Y(
        n10) );
  AOI32X1M U10 ( .A0(n15), .A1(n14), .A2(current_state[0]), .B0(n8), .B1(n7), 
        .Y(n9) );
  NOR2X1M U11 ( .A(n14), .B(n3), .Y(n4) );
  BUFX2M U12 ( .A(rst), .Y(n12) );
  INVX2M U13 ( .A(n8), .Y(n13) );
  NOR2X2M U14 ( .A(n7), .B(n13), .Y(next_state[2]) );
  XNOR2X4M U15 ( .A(n15), .B(current_state[0]), .Y(n6) );
  INVX4M U16 ( .A(current_state[1]), .Y(n15) );
  NAND2X2M U17 ( .A(current_state[2]), .B(n15), .Y(n5) );
  AOI31X2M U18 ( .A0(n10), .A1(n5), .A2(n11), .B0(current_state[0]), .Y(
        next_state[0]) );
  NAND2X2M U19 ( .A(data_valid), .B(n15), .Y(n11) );
  OAI21X2M U20 ( .A0(current_state[0]), .A1(n5), .B0(n9), .Y(next_state[1]) );
  NAND2X2M U21 ( .A(ser_dn), .B(par_en), .Y(n7) );
endmodule


module parity ( data_valid, clk, rst, busy, P_data, P_type, P_bit );
  input [7:0] P_data;
  input data_valid, clk, rst, busy, P_type;
  output P_bit;
  wire   n1, n2, n3, n4, n5, n6, n7;

  DFFRQX1M P_bit_reg ( .D(n7), .CK(clk), .RN(rst), .Q(P_bit) );
  XOR3XLM U3 ( .A(P_data[5]), .B(P_data[4]), .C(n6), .Y(n3) );
  CLKXOR2X2M U4 ( .A(P_data[7]), .B(P_data[6]), .Y(n6) );
  XNOR2X2M U5 ( .A(P_data[3]), .B(P_data[2]), .Y(n5) );
  OAI2BB2X1M U6 ( .B0(n1), .B1(n2), .A0N(P_bit), .A1N(n2), .Y(n7) );
  XOR3XLM U7 ( .A(n3), .B(P_type), .C(n4), .Y(n1) );
  NAND2BX1M U8 ( .AN(busy), .B(data_valid), .Y(n2) );
  XOR3XLM U9 ( .A(P_data[1]), .B(P_data[0]), .C(n5), .Y(n4) );
endmodule


module mux ( select, parity_bit, data, tx_out );
  input [1:0] select;
  input parity_bit, data;
  output tx_out;
  wire   n5, n2, n3, n4;

  NAND3X2M U3 ( .A(data), .B(n4), .C(select[1]), .Y(n3) );
  CLKBUFX8M U4 ( .A(n5), .Y(tx_out) );
  INVX2M U5 ( .A(select[0]), .Y(n4) );
  NOR2BX1M U6 ( .AN(select[1]), .B(parity_bit), .Y(n2) );
  OAI21X2M U7 ( .A0(n2), .A1(n4), .B0(n3), .Y(n5) );
endmodule


module UART_TX ( P_DATA, DATA_VALID, PAR_EN, PAR_TYP, CLK, RST, TX_OUT, Busy
 );
  input [7:0] P_DATA;
  input DATA_VALID, PAR_EN, PAR_TYP, CLK, RST;
  output TX_OUT, Busy;
  wire   ser_en, ser_done, ser_data, par_bit, n1, n2;
  wire   [1:0] mux_sel;

  serializer U0_serializer ( .P_data(P_DATA), .clk(CLK), .rst(n1), .ser_en(
        ser_en), .busy(Busy), .ser_dn(ser_done), .S_data(ser_data) );
  fsm U0_fsm ( .par_en(PAR_EN), .data_valid(DATA_VALID), .ser_dn(ser_done), 
        .clk(CLK), .rst(n1), .busy(Busy), .select(mux_sel), .ser_en(ser_en) );
  parity U0_parity ( .data_valid(DATA_VALID), .clk(CLK), .rst(n1), .busy(Busy), 
        .P_data(P_DATA), .P_type(PAR_TYP), .P_bit(par_bit) );
  mux U0_mux ( .select(mux_sel), .parity_bit(par_bit), .data(ser_data), 
        .tx_out(TX_OUT) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
endmodule


module edgebitcounter ( enable, clk, rst, parity_en, en, Prescale, bit_cnt, 
        edge_cnt );
  input [5:0] Prescale;
  output [3:0] bit_cnt;
  output [4:0] edge_cnt;
  input enable, clk, rst, parity_en, en;
  wire   n49, n50, n51, n52, n53, n54, n55, N3, N4, N5, N6, N7, N8, N9,
         edge_cnt_max, N19, N20, N21, N23, N24, N25, N26, N27, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         \add_47/carry[4] , \add_47/carry[3] , \add_47/carry[2] , n1, n3, n5,
         n7, n9, n26, n28, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48;

  DFFRQX4M \bit_cnt_reg[2]  ( .D(n21), .CK(clk), .RN(n32), .Q(bit_cnt[2]) );
  DFFRHQX8M \bit_cnt_reg[0]  ( .D(n24), .CK(clk), .RN(n32), .Q(bit_cnt[0]) );
  DFFRQX1M \edge_cnt_reg[0]  ( .D(N23), .CK(clk), .RN(n32), .Q(n55) );
  DFFRQX1M \edge_cnt_reg[2]  ( .D(N25), .CK(clk), .RN(n32), .Q(n53) );
  DFFRQX1M \edge_cnt_reg[3]  ( .D(N26), .CK(clk), .RN(n32), .Q(n52) );
  DFFRQX1M \edge_cnt_reg[4]  ( .D(N27), .CK(clk), .RN(n32), .Q(n51) );
  DFFRQX1M \edge_cnt_reg[1]  ( .D(N24), .CK(clk), .RN(n32), .Q(n54) );
  DFFRQX1M \bit_cnt_reg[1]  ( .D(n22), .CK(clk), .RN(n32), .Q(n50) );
  DFFRQX1M \bit_cnt_reg[3]  ( .D(n23), .CK(clk), .RN(n32), .Q(n49) );
  NOR4X4M U3 ( .A(n45), .B(n44), .C(n43), .D(n42), .Y(edge_cnt_max) );
  INVXLM U4 ( .A(n49), .Y(n1) );
  INVX4M U5 ( .A(n1), .Y(bit_cnt[3]) );
  INVXLM U6 ( .A(n50), .Y(n3) );
  INVX6M U7 ( .A(n3), .Y(bit_cnt[1]) );
  INVXLM U8 ( .A(n54), .Y(n5) );
  INVX6M U9 ( .A(n5), .Y(edge_cnt[1]) );
  INVXLM U10 ( .A(n51), .Y(n7) );
  INVX6M U11 ( .A(n7), .Y(edge_cnt[4]) );
  INVXLM U12 ( .A(n52), .Y(n9) );
  INVX6M U13 ( .A(n9), .Y(edge_cnt[3]) );
  INVXLM U14 ( .A(n53), .Y(n26) );
  INVX6M U15 ( .A(n26), .Y(edge_cnt[2]) );
  INVXLM U16 ( .A(n55), .Y(n28) );
  INVX6M U17 ( .A(n28), .Y(edge_cnt[0]) );
  CLKNAND2X2M U18 ( .A(bit_cnt[1]), .B(bit_cnt[0]), .Y(n10) );
  NOR2X2M U19 ( .A(n37), .B(Prescale[5]), .Y(N9) );
  NOR2BX2M U20 ( .AN(edge_cnt[0]), .B(N3), .Y(n38) );
  OR2X2M U21 ( .A(n36), .B(Prescale[4]), .Y(n37) );
  OR2X2M U22 ( .A(n34), .B(Prescale[2]), .Y(n35) );
  OR2X2M U23 ( .A(n35), .B(Prescale[3]), .Y(n36) );
  OAI2BB1XLM U24 ( .A0N(n36), .A1N(Prescale[4]), .B0(n37), .Y(N7) );
  OAI2BB1XLM U25 ( .A0N(n35), .A1N(Prescale[3]), .B0(n36), .Y(N6) );
  OAI2BB1XLM U26 ( .A0N(n34), .A1N(Prescale[2]), .B0(n35), .Y(N5) );
  CLKNAND2X2M U27 ( .A(edge_cnt_max), .B(n19), .Y(n16) );
  NOR2BX2M U28 ( .AN(N3), .B(edge_cnt[0]), .Y(n39) );
  CLKBUFX6M U29 ( .A(n12), .Y(n31) );
  NAND2XLM U30 ( .A(enable), .B(n46), .Y(n12) );
  INVX4M U31 ( .A(n33), .Y(n32) );
  INVX2M U32 ( .A(rst), .Y(n33) );
  OAI21BX1M U33 ( .A0(n47), .A1(n31), .B0N(n13), .Y(n22) );
  AOI2B1X1M U34 ( .A1N(n14), .A0(n15), .B0(n16), .Y(n13) );
  NOR2BX2M U35 ( .AN(N19), .B(n31), .Y(N24) );
  NOR2BX2M U36 ( .AN(N20), .B(n31), .Y(N25) );
  NOR2BX2M U37 ( .AN(N21), .B(n31), .Y(N26) );
  CLKINVX1M U38 ( .A(edge_cnt_max), .Y(n46) );
  OR2X2M U39 ( .A(Prescale[1]), .B(Prescale[0]), .Y(n34) );
  NAND4X1M U40 ( .A(bit_cnt[3]), .B(enable), .C(n20), .D(n48), .Y(n19) );
  OAI2BB2X1M U41 ( .B0(en), .B1(n15), .A0N(n14), .A1N(en), .Y(n20) );
  OAI2B2X1M U42 ( .A1N(bit_cnt[3]), .A0(n31), .B0(n17), .B1(n16), .Y(n23) );
  XNOR2X2M U43 ( .A(bit_cnt[3]), .B(n18), .Y(n17) );
  NOR2X2M U44 ( .A(n10), .B(n48), .Y(n18) );
  OAI2B2X1M U45 ( .A1N(bit_cnt[0]), .A0(n31), .B0(bit_cnt[0]), .B1(n16), .Y(
        n24) );
  NOR2X2M U46 ( .A(n30), .B(n31), .Y(N27) );
  XNOR2X2M U47 ( .A(\add_47/carry[4] ), .B(edge_cnt[4]), .Y(n30) );
  NOR2X2M U48 ( .A(edge_cnt[0]), .B(n31), .Y(N23) );
  OAI32X2M U49 ( .A0(n46), .A1(bit_cnt[2]), .A2(n10), .B0(n11), .B1(n48), .Y(
        n21) );
  AOI21BX2M U50 ( .A0(edge_cnt_max), .A1(n10), .B0N(n31), .Y(n11) );
  NAND2X2M U51 ( .A(bit_cnt[0]), .B(n47), .Y(n15) );
  INVX2M U52 ( .A(bit_cnt[1]), .Y(n47) );
  NOR2X2M U53 ( .A(n47), .B(bit_cnt[0]), .Y(n14) );
  INVX2M U54 ( .A(bit_cnt[2]), .Y(n48) );
  ADDHX1M U55 ( .A(edge_cnt[2]), .B(\add_47/carry[2] ), .CO(\add_47/carry[3] ), 
        .S(N20) );
  ADDHX1M U56 ( .A(edge_cnt[1]), .B(edge_cnt[0]), .CO(\add_47/carry[2] ), .S(
        N19) );
  ADDHX1M U57 ( .A(edge_cnt[3]), .B(\add_47/carry[3] ), .CO(\add_47/carry[4] ), 
        .S(N21) );
  CLKINVX1M U58 ( .A(Prescale[0]), .Y(N3) );
  OAI2BB1X1M U59 ( .A0N(Prescale[0]), .A1N(Prescale[1]), .B0(n34), .Y(N4) );
  AO21XLM U60 ( .A0(n37), .A1(Prescale[5]), .B0(N9), .Y(N8) );
  OAI2B2X1M U61 ( .A1N(N4), .A0(n38), .B0(edge_cnt[1]), .B1(n38), .Y(n41) );
  OAI2B2X1M U62 ( .A1N(edge_cnt[1]), .A0(n39), .B0(N4), .B1(n39), .Y(n40) );
  NAND4BBX1M U63 ( .AN(N9), .BN(N8), .C(n41), .D(n40), .Y(n45) );
  CLKXOR2X2M U64 ( .A(N7), .B(edge_cnt[4]), .Y(n44) );
  CLKXOR2X2M U65 ( .A(N5), .B(edge_cnt[2]), .Y(n43) );
  CLKXOR2X2M U66 ( .A(N6), .B(edge_cnt[3]), .Y(n42) );
endmodule


module data_sampling ( clk, rst, en, data, edge_cnt, Prescale, sampled_bit );
  input [4:0] edge_cnt;
  input [5:0] Prescale;
  input clk, rst, en, data;
  output sampled_bit;
  wire   N8, N9, N10, N11, N12, N13, N14, N16, N17, N18, N19, N20, N21, N23,
         N25, N26, N27, N28, N29, N30, N31, N32, N33, N34, N35, N36, N37, n30,
         n31, n32, n33, n34, n36, n37, n38, n40, n41, n42, n43, n44,
         \add_32/carry[4] , \add_32/carry[3] , \add_24/carry[4] ,
         \add_24/carry[3] , \add_24/carry[2] , n1, n2, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n35, n39, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85;
  wire   [1:0] temp;
  wire   [1:0] temp2;
  assign N23 = Prescale[1];

  NOR3X12M U26 ( .A(N21), .B(N14), .C(N13), .Y(n36) );
  DFFRQX1M \temp_reg[1]  ( .D(n43), .CK(clk), .RN(n15), .Q(temp[1]) );
  DFFRQX1M \temp2_reg[1]  ( .D(n41), .CK(clk), .RN(n15), .Q(temp2[1]) );
  DFFRQX4M sampled_bit_reg ( .D(n40), .CK(clk), .RN(n15), .Q(sampled_bit) );
  DFFRX4M \temp2_reg[0]  ( .D(n42), .CK(clk), .RN(n15), .Q(temp2[0]), .QN(n82)
         );
  DFFRX4M \temp_reg[0]  ( .D(n44), .CK(clk), .RN(n15), .Q(temp[0]), .QN(n80)
         );
  OR2X2M U3 ( .A(n7), .B(n6), .Y(n1) );
  OR2X2M U4 ( .A(n85), .B(n36), .Y(n2) );
  OR2X2M U5 ( .A(n5), .B(n6), .Y(n3) );
  OR2X2M U6 ( .A(n79), .B(data), .Y(n4) );
  INVX2M U7 ( .A(n31), .Y(n6) );
  INVX4M U8 ( .A(n8), .Y(n9) );
  NOR4X2M U9 ( .A(n68), .B(n67), .C(n66), .D(n65), .Y(N29) );
  NAND3BX2M U10 ( .AN(N28), .B(n64), .C(n63), .Y(n68) );
  NOR4X2M U11 ( .A(n76), .B(n75), .C(n74), .D(n73), .Y(N37) );
  NOR4X2M U12 ( .A(n52), .B(n51), .C(n50), .D(n49), .Y(N14) );
  NOR4X2M U13 ( .A(n60), .B(n59), .C(n58), .D(n57), .Y(N21) );
  NOR4X2M U14 ( .A(n39), .B(n35), .C(n29), .D(n28), .Y(N13) );
  NOR3X4M U15 ( .A(Prescale[4]), .B(Prescale[5]), .C(n18), .Y(N12) );
  NOR2X1M U16 ( .A(n36), .B(n4), .Y(n5) );
  OAI32X2M U17 ( .A0(n78), .A1(temp2[0]), .A2(n36), .B0(n82), .B1(n3), .Y(n42)
         );
  NOR2X1M U18 ( .A(n79), .B(n2), .Y(n7) );
  OAI32X2M U19 ( .A0(n77), .A1(temp[0]), .A2(n36), .B0(n80), .B1(n1), .Y(n44)
         );
  INVX2M U20 ( .A(data), .Y(n85) );
  NAND2BX2M U21 ( .AN(n9), .B(n13), .Y(n17) );
  OR2X2M U22 ( .A(n20), .B(n9), .Y(n21) );
  NOR2BX2M U23 ( .AN(n14), .B(n10), .Y(n24) );
  NOR2BX2M U24 ( .AN(n14), .B(n10), .Y(n53) );
  NOR2BX2M U25 ( .AN(n12), .B(n10), .Y(n45) );
  NOR2BX2M U27 ( .AN(n10), .B(n13), .Y(n25) );
  NAND3BXLM U28 ( .AN(N12), .B(n27), .C(n26), .Y(n39) );
  NOR2BX2M U29 ( .AN(n10), .B(n13), .Y(n54) );
  NOR2BX2M U30 ( .AN(n10), .B(n12), .Y(n46) );
  NOR2BX2M U31 ( .AN(n12), .B(n10), .Y(n61) );
  NOR2BX2M U32 ( .AN(n10), .B(N30), .Y(n69) );
  NOR2BX2M U33 ( .AN(n10), .B(n12), .Y(n62) );
  NOR2BX2M U34 ( .AN(N30), .B(n10), .Y(n70) );
  NOR2X2M U35 ( .A(n23), .B(Prescale[5]), .Y(N36) );
  OR2X2M U36 ( .A(n17), .B(Prescale[3]), .Y(n18) );
  OR2X2M U37 ( .A(n22), .B(Prescale[4]), .Y(n23) );
  OR2X2M U38 ( .A(n21), .B(Prescale[3]), .Y(n22) );
  OAI2BB1XLM U39 ( .A0N(n20), .A1N(n9), .B0(n21), .Y(N32) );
  OAI2BB1XLM U40 ( .A0N(n17), .A1N(Prescale[3]), .B0(n18), .Y(N9) );
  OAI2BB1XLM U41 ( .A0N(n22), .A1N(Prescale[4]), .B0(n23), .Y(N34) );
  OAI2BB1XLM U42 ( .A0N(n21), .A1N(Prescale[3]), .B0(n22), .Y(N33) );
  BUFX2M U43 ( .A(n14), .Y(n13) );
  INVX4M U44 ( .A(n13), .Y(n12) );
  CLKINVX1M U45 ( .A(en), .Y(n79) );
  CLKINVX1M U46 ( .A(n3), .Y(n78) );
  CLKINVX1M U47 ( .A(n1), .Y(n77) );
  INVX2M U48 ( .A(n36), .Y(n84) );
  ADDHX2M U49 ( .A(n9), .B(n12), .CO(\add_24/carry[2] ), .S(N16) );
  INVX4M U50 ( .A(n16), .Y(n15) );
  INVX2M U51 ( .A(rst), .Y(n16) );
  INVX2M U52 ( .A(N23), .Y(n14) );
  OR2X2M U53 ( .A(n12), .B(Prescale[0]), .Y(n20) );
  INVX2M U54 ( .A(Prescale[2]), .Y(n8) );
  ADDHX1M U55 ( .A(Prescale[3]), .B(\add_24/carry[2] ), .CO(\add_24/carry[3] ), 
        .S(N17) );
  ADDHX1M U56 ( .A(Prescale[4]), .B(\add_24/carry[3] ), .CO(\add_24/carry[4] ), 
        .S(N18) );
  ADDHX1M U57 ( .A(Prescale[5]), .B(\add_24/carry[4] ), .CO(N20), .S(N19) );
  OAI21X2M U58 ( .A0(n37), .A1(n81), .B0(n38), .Y(n43) );
  NAND4X1M U59 ( .A(temp[0]), .B(n1), .C(n84), .D(n81), .Y(n38) );
  AOI21X2M U60 ( .A0(n84), .A1(n80), .B0(n77), .Y(n37) );
  OAI21X2M U61 ( .A0(n33), .A1(n83), .B0(n34), .Y(n41) );
  NAND4X1M U62 ( .A(temp2[0]), .B(n3), .C(n84), .D(n83), .Y(n34) );
  AOI21X2M U63 ( .A0(n84), .A1(n82), .B0(n78), .Y(n33) );
  OAI211X4M U64 ( .A0(N29), .A1(N37), .B0(n36), .C0(en), .Y(n31) );
  OAI2BB2X1M U65 ( .B0(n30), .B1(n31), .A0N(sampled_bit), .A1N(n31), .Y(n40)
         );
  AOI22X1M U66 ( .A0(n32), .A1(temp[0]), .B0(temp[1]), .B1(n83), .Y(n30) );
  AOI21X2M U67 ( .A0(temp2[1]), .A1(n81), .B0(temp2[0]), .Y(n32) );
  CLKBUFX6M U68 ( .A(edge_cnt[1]), .Y(n11) );
  CLKBUFX6M U69 ( .A(edge_cnt[0]), .Y(n10) );
  INVX2M U70 ( .A(temp[1]), .Y(n81) );
  INVX2M U71 ( .A(temp2[1]), .Y(n83) );
  AND2X1M U72 ( .A(\add_32/carry[4] ), .B(Prescale[5]), .Y(N28) );
  CLKXOR2X2M U73 ( .A(Prescale[5]), .B(\add_32/carry[4] ), .Y(N27) );
  AND2X1M U74 ( .A(\add_32/carry[3] ), .B(Prescale[4]), .Y(\add_32/carry[4] )
         );
  CLKXOR2X2M U75 ( .A(Prescale[4]), .B(\add_32/carry[3] ), .Y(N26) );
  AND2X1M U76 ( .A(n9), .B(Prescale[3]), .Y(\add_32/carry[3] ) );
  CLKXOR2X2M U77 ( .A(Prescale[3]), .B(n9), .Y(N25) );
  OAI2BB1X1M U78 ( .A0N(n12), .A1N(n9), .B0(n17), .Y(N8) );
  XNOR2X1M U79 ( .A(Prescale[4]), .B(n18), .Y(N10) );
  OAI21X1M U80 ( .A0(Prescale[4]), .A1(n18), .B0(Prescale[5]), .Y(n19) );
  NAND2BX1M U81 ( .AN(N12), .B(n19), .Y(N11) );
  CLKINVX1M U82 ( .A(Prescale[0]), .Y(N30) );
  OAI2BB1X1M U83 ( .A0N(Prescale[0]), .A1N(n12), .B0(n20), .Y(N31) );
  AO21XLM U84 ( .A0(n23), .A1(Prescale[5]), .B0(N36), .Y(N35) );
  OAI2B2X1M U85 ( .A1N(n11), .A0(n24), .B0(N8), .B1(n24), .Y(n27) );
  OAI2B2X1M U86 ( .A1N(N8), .A0(n25), .B0(n11), .B1(n25), .Y(n26) );
  CLKXOR2X2M U87 ( .A(N11), .B(edge_cnt[4]), .Y(n35) );
  CLKXOR2X2M U88 ( .A(N9), .B(edge_cnt[2]), .Y(n29) );
  CLKXOR2X2M U89 ( .A(N10), .B(edge_cnt[3]), .Y(n28) );
  CLKXOR2X2M U90 ( .A(Prescale[3]), .B(edge_cnt[2]), .Y(n52) );
  OAI2B2X1M U91 ( .A1N(n11), .A0(n45), .B0(n9), .B1(n45), .Y(n48) );
  OAI2B2X1M U92 ( .A1N(n9), .A0(n46), .B0(n11), .B1(n46), .Y(n47) );
  CLKNAND2X2M U93 ( .A(n48), .B(n47), .Y(n51) );
  CLKXOR2X2M U94 ( .A(Prescale[4]), .B(edge_cnt[3]), .Y(n50) );
  CLKXOR2X2M U95 ( .A(Prescale[5]), .B(edge_cnt[4]), .Y(n49) );
  OAI2B2X1M U96 ( .A1N(n11), .A0(n53), .B0(N16), .B1(n53), .Y(n56) );
  OAI2B2X1M U97 ( .A1N(N16), .A0(n54), .B0(n11), .B1(n54), .Y(n55) );
  NAND3BX1M U98 ( .AN(N20), .B(n56), .C(n55), .Y(n60) );
  CLKXOR2X2M U99 ( .A(N19), .B(edge_cnt[4]), .Y(n59) );
  CLKXOR2X2M U100 ( .A(N17), .B(edge_cnt[2]), .Y(n58) );
  CLKXOR2X2M U101 ( .A(N18), .B(edge_cnt[3]), .Y(n57) );
  OAI2B2X1M U102 ( .A1N(n11), .A0(n61), .B0(n8), .B1(n61), .Y(n64) );
  OAI2B2X1M U103 ( .A1N(n8), .A0(n62), .B0(n11), .B1(n62), .Y(n63) );
  CLKXOR2X2M U104 ( .A(N27), .B(edge_cnt[4]), .Y(n67) );
  CLKXOR2X2M U105 ( .A(N25), .B(edge_cnt[2]), .Y(n66) );
  CLKXOR2X2M U106 ( .A(N26), .B(edge_cnt[3]), .Y(n65) );
  OAI2B2X1M U107 ( .A1N(N31), .A0(n69), .B0(n11), .B1(n69), .Y(n72) );
  OAI2B2X1M U108 ( .A1N(n11), .A0(n70), .B0(N31), .B1(n70), .Y(n71) );
  NAND4BBX1M U109 ( .AN(N36), .BN(N35), .C(n72), .D(n71), .Y(n76) );
  CLKXOR2X2M U110 ( .A(N34), .B(edge_cnt[4]), .Y(n75) );
  CLKXOR2X2M U111 ( .A(N32), .B(edge_cnt[2]), .Y(n74) );
  CLKXOR2X2M U112 ( .A(N33), .B(edge_cnt[3]), .Y(n73) );
endmodule


module deserializer ( clk, rst, en, data, bit_cnt, p_data );
  input [3:0] bit_cnt;
  output [7:0] p_data;
  input clk, rst, en, data;
  wire   n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n1, n2, n3, n4, n25, n26;

  DFFRX4M \p_data_reg[2]  ( .D(n19), .CK(clk), .RN(n1), .Q(p_data[2]) );
  DFFRX4M \p_data_reg[6]  ( .D(n23), .CK(clk), .RN(n1), .Q(p_data[6]) );
  DFFRX4M \p_data_reg[0]  ( .D(n17), .CK(clk), .RN(n1), .Q(p_data[0]) );
  DFFRX4M \p_data_reg[4]  ( .D(n21), .CK(clk), .RN(n1), .Q(p_data[4]) );
  DFFRX4M \p_data_reg[1]  ( .D(n18), .CK(clk), .RN(n1), .Q(p_data[1]) );
  DFFRX4M \p_data_reg[5]  ( .D(n22), .CK(clk), .RN(n1), .Q(p_data[5]) );
  DFFRX4M \p_data_reg[7]  ( .D(n24), .CK(clk), .RN(n1), .Q(p_data[7]) );
  DFFRX4M \p_data_reg[3]  ( .D(n20), .CK(clk), .RN(n1), .Q(p_data[3]) );
  AND2X2M U2 ( .A(n6), .B(bit_cnt[2]), .Y(n11) );
  INVX2M U3 ( .A(bit_cnt[0]), .Y(n4) );
  INVX4M U4 ( .A(data), .Y(n3) );
  INVX4M U5 ( .A(n2), .Y(n1) );
  INVX2M U6 ( .A(rst), .Y(n2) );
  NOR2BX4M U7 ( .AN(en), .B(bit_cnt[3]), .Y(n6) );
  OAI2BB2X1M U8 ( .B0(n3), .B1(n15), .A0N(p_data[7]), .A1N(n15), .Y(n24) );
  NAND4X2M U9 ( .A(bit_cnt[3]), .B(en), .C(n16), .D(n4), .Y(n15) );
  NOR2X2M U10 ( .A(bit_cnt[2]), .B(bit_cnt[1]), .Y(n16) );
  AND3X2M U11 ( .A(n6), .B(n26), .C(bit_cnt[1]), .Y(n8) );
  OAI2BB2X1M U12 ( .B0(n3), .B1(n9), .A0N(p_data[2]), .A1N(n9), .Y(n19) );
  NAND2X2M U13 ( .A(n8), .B(bit_cnt[0]), .Y(n9) );
  OAI2BB2X1M U14 ( .B0(n3), .B1(n10), .A0N(p_data[3]), .A1N(n10), .Y(n20) );
  NAND3X2M U15 ( .A(n4), .B(n25), .C(n11), .Y(n10) );
  OAI2BB2X1M U16 ( .B0(n3), .B1(n12), .A0N(p_data[4]), .A1N(n12), .Y(n21) );
  NAND3X2M U17 ( .A(bit_cnt[0]), .B(n25), .C(n11), .Y(n12) );
  OAI2BB2X1M U18 ( .B0(n3), .B1(n13), .A0N(p_data[5]), .A1N(n13), .Y(n22) );
  NAND3X2M U19 ( .A(bit_cnt[1]), .B(n4), .C(n11), .Y(n13) );
  OAI2BB2X1M U20 ( .B0(n3), .B1(n14), .A0N(p_data[6]), .A1N(n14), .Y(n23) );
  NAND3X2M U21 ( .A(bit_cnt[1]), .B(bit_cnt[0]), .C(n11), .Y(n14) );
  OAI2BB2X1M U22 ( .B0(n5), .B1(n3), .A0N(p_data[0]), .A1N(n5), .Y(n17) );
  NAND4X2M U23 ( .A(bit_cnt[0]), .B(n6), .C(n25), .D(n26), .Y(n5) );
  OAI2BB2X1M U24 ( .B0(n3), .B1(n7), .A0N(p_data[1]), .A1N(n7), .Y(n18) );
  NAND2X2M U25 ( .A(n8), .B(n4), .Y(n7) );
  INVX2M U26 ( .A(bit_cnt[1]), .Y(n25) );
  INVX2M U27 ( .A(bit_cnt[2]), .Y(n26) );
endmodule


module stop_check ( en, bit, err );
  input en, bit;
  output err;


  NOR2BX2M U2 ( .AN(en), .B(bit), .Y(err) );
endmodule


module start_check ( data, en, glitch );
  input data, en;
  output glitch;


  AND2X1M U2 ( .A(en), .B(data), .Y(glitch) );
endmodule


module parity_check ( bit, en, P_type, P_data, err );
  input [7:0] P_data;
  input bit, en, P_type;
  output err;
  wire   n1, n2, n3, n4, n5, n6;

  XNOR2X2M U3 ( .A(P_data[3]), .B(P_data[2]), .Y(n6) );
  XNOR2X2M U4 ( .A(P_data[7]), .B(P_data[6]), .Y(n5) );
  NOR2BX2M U5 ( .AN(en), .B(n1), .Y(err) );
  XOR3XLM U6 ( .A(n2), .B(n3), .C(n4), .Y(n1) );
  XNOR2X2M U7 ( .A(bit), .B(P_type), .Y(n4) );
  XOR3XLM U8 ( .A(P_data[5]), .B(P_data[4]), .C(n5), .Y(n3) );
  XOR3XLM U9 ( .A(P_data[1]), .B(P_data[0]), .C(n6), .Y(n2) );
endmodule


module fsmRX ( clk, rst, par_en, bit, bit_cnt, edge_cnt, stop_err, start_err, 
        parity_err, Prescale, par_en_ch, start_en_ch, stop_en_ch, deser_en, 
        data_valid, edge_en, samp_en, temp );
  input [3:0] bit_cnt;
  input [4:0] edge_cnt;
  input [5:0] Prescale;
  input clk, rst, par_en, bit, stop_err, start_err, parity_err;
  output par_en_ch, start_en_ch, stop_en_ch, deser_en, data_valid, edge_en,
         samp_en, temp;
  wire   N48, N49, N50, N51, N52, N53, N54, N55, N57, N58, N59, N60, N182,
         N183, N184, N185, N186, N187, N188, temp2, N237, N238, N239, N240,
         N241, N242, N243, N244, N245, N246, n83, \add_270/carry[4] ,
         \add_270/carry[3] , \add_270/carry[2] , \r134/carry[4] ,
         \r132/carry[2] , \r132/carry[3] , \r132/carry[4] , n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n84, n85, n86;
  wire   [2:0] current_state;
  wire   [2:0] next_state;
  wire   [4:0] count;
  assign N54 = Prescale[1];
  assign N55 = Prescale[2];

  DFFRQX1M temp2_reg ( .D(n83), .CK(clk), .RN(n3), .Q(temp2) );
  DFFRQX4M \current_state_reg[0]  ( .D(next_state[0]), .CK(clk), .RN(n3), .Q(
        current_state[0]) );
  DFFRQX4M \current_state_reg[1]  ( .D(next_state[1]), .CK(clk), .RN(n3), .Q(
        current_state[1]) );
  DFFRX4M \current_state_reg[2]  ( .D(next_state[2]), .CK(clk), .RN(n3), .Q(
        current_state[2]), .QN(n48) );
  DFFRX4M \count_reg[4]  ( .D(N246), .CK(clk), .RN(n3), .Q(count[4]) );
  DFFRX4M \count_reg[0]  ( .D(N242), .CK(clk), .RN(n3), .Q(count[0]), .QN(N237) );
  DFFRX4M \count_reg[2]  ( .D(N244), .CK(clk), .RN(n3), .Q(count[2]) );
  DFFRX4M \count_reg[3]  ( .D(N245), .CK(clk), .RN(n3), .Q(count[3]) );
  DFFRX4M \count_reg[1]  ( .D(N243), .CK(clk), .RN(n3), .Q(count[1]) );
  INVX4M U3 ( .A(n4), .Y(n3) );
  NOR4BX4M U4 ( .AN(bit_cnt[0]), .B(n61), .C(bit_cnt[1]), .D(bit_cnt[2]), .Y(
        n58) );
  NOR4X2M U5 ( .A(n77), .B(count[2]), .C(count[4]), .D(count[3]), .Y(n76) );
  NAND2BXLM U6 ( .AN(count[0]), .B(count[1]), .Y(n77) );
  NAND2X2M U7 ( .A(current_state[0]), .B(n79), .Y(n78) );
  INVX2M U8 ( .A(current_state[1]), .Y(n79) );
  OAI32X2M U9 ( .A0(n33), .A1(par_en), .A2(n34), .B0(n35), .B1(n36), .Y(n27)
         );
  NAND2X2M U10 ( .A(bit_cnt[3]), .B(n58), .Y(n33) );
  NAND3X3M U11 ( .A(current_state[1]), .B(n48), .C(current_state[0]), .Y(n36)
         );
  OAI32X2M U12 ( .A0(current_state[0]), .A1(current_state[2]), .A2(
        current_state[1]), .B0(n50), .B1(n62), .Y(n54) );
  AOI22X2M U13 ( .A0(start_en_ch), .A1(start_err), .B0(par_en_ch), .B1(
        parity_err), .Y(n28) );
  AOI211X2M U14 ( .A0(parity_err), .A1(n45), .B0(n36), .C0(n59), .Y(n56) );
  NOR3X4M U15 ( .A(bit), .B(current_state[0]), .C(n48), .Y(n31) );
  OAI21BX2M U16 ( .A0(bit), .A1(n78), .B0N(samp_en), .Y(edge_en) );
  AOI221X2M U17 ( .A0(n41), .A1(n35), .B0(stop_err), .B1(stop_en_ch), .C0(n42), 
        .Y(n40) );
  NOR3X8M U18 ( .A(current_state[0]), .B(current_state[1]), .C(n48), .Y(n32)
         );
  NOR2X2M U19 ( .A(n25), .B(n26), .Y(temp) );
  NOR4X2M U20 ( .A(N188), .B(N187), .C(n85), .D(n86), .Y(n84) );
  AOI211X2M U21 ( .A0(stop_err), .A1(n45), .B0(N188), .C0(N187), .Y(n64) );
  AO21X2M U22 ( .A0(n8), .A1(Prescale[5]), .B0(N188), .Y(N187) );
  NOR2X3M U23 ( .A(n8), .B(Prescale[5]), .Y(N188) );
  NOR2X3M U24 ( .A(N53), .B(N60), .Y(n43) );
  NOR4X2M U25 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(N60) );
  NOR4X2M U26 ( .A(n16), .B(n15), .C(n14), .D(n13), .Y(N53) );
  NAND3BX2M U27 ( .AN(N52), .B(n12), .C(n11), .Y(n16) );
  NAND3X2M U28 ( .A(n70), .B(n71), .C(n72), .Y(n61) );
  NAND2X4M U29 ( .A(data_valid), .B(n49), .Y(n30) );
  NOR2X3M U30 ( .A(n78), .B(n48), .Y(data_valid) );
  NOR3X4M U31 ( .A(n32), .B(deser_en), .C(n41), .Y(n25) );
  NOR3X12M U32 ( .A(current_state[0]), .B(current_state[2]), .C(n79), .Y(
        deser_en) );
  NOR2BX2M U33 ( .AN(n1), .B(edge_cnt[0]), .Y(n17) );
  NOR2BX2M U34 ( .AN(edge_cnt[0]), .B(n1), .Y(n18) );
  NAND2X2M U35 ( .A(n25), .B(n44), .Y(samp_en) );
  INVXLM U36 ( .A(n28), .Y(n42) );
  AOI211X2M U37 ( .A0(n45), .A1(start_err), .B0(n46), .C0(n44), .Y(n51) );
  AOI211X2M U38 ( .A0(n54), .A1(n55), .B0(n56), .C0(n57), .Y(n53) );
  CLKINVX2M U39 ( .A(n43), .Y(n45) );
  NOR2X2M U40 ( .A(n36), .B(n43), .Y(par_en_ch) );
  NOR2X2M U41 ( .A(n44), .B(n43), .Y(start_en_ch) );
  INVX2M U42 ( .A(n47), .Y(n44) );
  NOR3X2M U43 ( .A(n34), .B(n26), .C(n33), .Y(n57) );
  OR2X2M U44 ( .A(n7), .B(Prescale[4]), .Y(n8) );
  OR2X2M U45 ( .A(n5), .B(N55), .Y(n6) );
  OR2X2M U46 ( .A(n6), .B(Prescale[3]), .Y(n7) );
  NOR2BX2M U47 ( .AN(edge_cnt[0]), .B(n2), .Y(n10) );
  NOR2BX2M U48 ( .AN(n2), .B(edge_cnt[0]), .Y(n9) );
  NOR2X2M U49 ( .A(n78), .B(current_state[2]), .Y(n47) );
  NAND3X2M U50 ( .A(bit_cnt[1]), .B(bit_cnt[3]), .C(n60), .Y(n35) );
  NOR3X2M U51 ( .A(n61), .B(bit_cnt[2]), .C(bit_cnt[0]), .Y(n60) );
  NOR3X2M U52 ( .A(n73), .B(n74), .C(n75), .Y(n72) );
  NOR2BX2M U53 ( .AN(n58), .B(bit_cnt[3]), .Y(n46) );
  NAND4X2M U54 ( .A(n80), .B(n81), .C(n82), .D(n84), .Y(n49) );
  INVX4M U55 ( .A(n2), .Y(n1) );
  INVX2M U56 ( .A(rst), .Y(n4) );
  INVX2M U57 ( .A(N54), .Y(n2) );
  OR2X2M U58 ( .A(n1), .B(Prescale[0]), .Y(n5) );
  XNOR2X2M U59 ( .A(Prescale[3]), .B(edge_cnt[2]), .Y(n22) );
  ADDHX1M U60 ( .A(count[1]), .B(count[0]), .CO(\add_270/carry[2] ), .S(N238)
         );
  ADDHX1M U61 ( .A(count[2]), .B(\add_270/carry[2] ), .CO(\add_270/carry[3] ), 
        .S(N239) );
  ADDHX1M U62 ( .A(count[3]), .B(\add_270/carry[3] ), .CO(\add_270/carry[4] ), 
        .S(N240) );
  AND2X1M U63 ( .A(\r134/carry[4] ), .B(Prescale[5]), .Y(N59) );
  CLKXOR2X2M U64 ( .A(Prescale[5]), .B(\r134/carry[4] ), .Y(N58) );
  AND2X1M U65 ( .A(Prescale[3]), .B(Prescale[4]), .Y(\r134/carry[4] ) );
  CLKXOR2X2M U66 ( .A(Prescale[4]), .B(Prescale[3]), .Y(N57) );
  AND2X1M U67 ( .A(\r132/carry[4] ), .B(Prescale[5]), .Y(N52) );
  CLKXOR2X2M U68 ( .A(Prescale[5]), .B(\r132/carry[4] ), .Y(N51) );
  AND2X1M U69 ( .A(\r132/carry[3] ), .B(Prescale[4]), .Y(\r132/carry[4] ) );
  CLKXOR2X2M U70 ( .A(Prescale[4]), .B(\r132/carry[3] ), .Y(N50) );
  OR2X1M U71 ( .A(Prescale[3]), .B(\r132/carry[2] ), .Y(\r132/carry[3] ) );
  XNOR2X1M U72 ( .A(\r132/carry[2] ), .B(Prescale[3]), .Y(N49) );
  AND2X1M U73 ( .A(n1), .B(N55), .Y(\r132/carry[2] ) );
  CLKXOR2X2M U74 ( .A(N55), .B(n1), .Y(N48) );
  CLKINVX1M U75 ( .A(Prescale[0]), .Y(N182) );
  OAI2BB1X1M U76 ( .A0N(Prescale[0]), .A1N(n1), .B0(n5), .Y(N183) );
  OAI2BB1X1M U77 ( .A0N(n5), .A1N(N55), .B0(n6), .Y(N184) );
  OAI2BB1X1M U78 ( .A0N(n6), .A1N(Prescale[3]), .B0(n7), .Y(N185) );
  OAI2BB1X1M U79 ( .A0N(n7), .A1N(Prescale[4]), .B0(n8), .Y(N186) );
  CLKXOR2X2M U80 ( .A(\add_270/carry[4] ), .B(count[4]), .Y(N241) );
  OAI2B2X1M U81 ( .A1N(edge_cnt[1]), .A0(n9), .B0(N48), .B1(n9), .Y(n12) );
  OAI2B2X1M U82 ( .A1N(N48), .A0(n10), .B0(edge_cnt[1]), .B1(n10), .Y(n11) );
  CLKXOR2X2M U83 ( .A(N51), .B(edge_cnt[4]), .Y(n15) );
  CLKXOR2X2M U84 ( .A(N49), .B(edge_cnt[2]), .Y(n14) );
  CLKXOR2X2M U85 ( .A(N50), .B(edge_cnt[3]), .Y(n13) );
  OAI2B2X1M U86 ( .A1N(edge_cnt[1]), .A0(n17), .B0(N55), .B1(n17), .Y(n20) );
  OAI2B2X1M U87 ( .A1N(N55), .A0(n18), .B0(edge_cnt[1]), .B1(n18), .Y(n19) );
  NAND3BX1M U88 ( .AN(N59), .B(n20), .C(n19), .Y(n24) );
  CLKXOR2X2M U89 ( .A(N58), .B(edge_cnt[4]), .Y(n23) );
  CLKXOR2X2M U90 ( .A(N57), .B(edge_cnt[3]), .Y(n21) );
  NAND4BX1M U91 ( .AN(n27), .B(n28), .C(n29), .D(n30), .Y(next_state[2]) );
  NOR2X1M U92 ( .A(n31), .B(n32), .Y(n29) );
  NAND4X1M U93 ( .A(n37), .B(n38), .C(n39), .D(n40), .Y(next_state[1]) );
  AND2X1M U94 ( .A(n32), .B(n45), .Y(stop_en_ch) );
  AOI22X1M U95 ( .A0(n31), .A1(current_state[1]), .B0(n46), .B1(n47), .Y(n39)
         );
  OR3X1M U96 ( .A(n49), .B(n50), .C(temp2), .Y(n38) );
  OAI21X1M U97 ( .A0(par_en), .A1(n33), .B0(deser_en), .Y(n37) );
  NAND4BX1M U98 ( .AN(n51), .B(n52), .C(n30), .D(n53), .Y(next_state[0]) );
  CLKINVX1M U99 ( .A(par_en), .Y(n26) );
  CLKINVX1M U100 ( .A(deser_en), .Y(n34) );
  CLKINVX1M U101 ( .A(n35), .Y(n59) );
  CLKINVX1M U102 ( .A(data_valid), .Y(n50) );
  NAND4X1M U103 ( .A(n63), .B(n32), .C(n64), .D(n65), .Y(n52) );
  NOR4X1M U104 ( .A(n66), .B(n67), .C(n68), .D(n69), .Y(n65) );
  CLKXOR2X2M U105 ( .A(edge_cnt[3]), .B(N185), .Y(n69) );
  CLKXOR2X2M U106 ( .A(edge_cnt[2]), .B(N184), .Y(n68) );
  CLKXOR2X2M U107 ( .A(edge_cnt[1]), .B(N183), .Y(n67) );
  CLKXOR2X2M U108 ( .A(edge_cnt[0]), .B(N182), .Y(n66) );
  XNOR2X1M U109 ( .A(N186), .B(edge_cnt[4]), .Y(n63) );
  CLKXOR2X2M U110 ( .A(edge_cnt[2]), .B(Prescale[3]), .Y(n75) );
  CLKXOR2X2M U111 ( .A(edge_cnt[1]), .B(N55), .Y(n74) );
  CLKXOR2X2M U112 ( .A(edge_cnt[0]), .B(n1), .Y(n73) );
  XNOR2X1M U113 ( .A(edge_cnt[3]), .B(Prescale[4]), .Y(n71) );
  XNOR2X1M U114 ( .A(edge_cnt[4]), .B(Prescale[5]), .Y(n70) );
  MXI2X1M U115 ( .A(n62), .B(n55), .S0(n76), .Y(n83) );
  CLKINVX1M U116 ( .A(bit), .Y(n55) );
  CLKINVX1M U117 ( .A(temp2), .Y(n62) );
  CLKINVX1M U118 ( .A(n36), .Y(n41) );
  NOR2BX1M U119 ( .AN(N241), .B(n30), .Y(N246) );
  NOR2BX1M U120 ( .AN(N240), .B(n30), .Y(N245) );
  NOR2BX1M U121 ( .AN(N239), .B(n30), .Y(N244) );
  NOR2BX1M U122 ( .AN(N238), .B(n30), .Y(N243) );
  NOR2BX1M U123 ( .AN(N237), .B(n30), .Y(N242) );
  CLKXOR2X2M U124 ( .A(count[0]), .B(N182), .Y(n86) );
  CLKXOR2X2M U125 ( .A(count[4]), .B(N186), .Y(n85) );
  XNOR2X1M U126 ( .A(N184), .B(count[2]), .Y(n82) );
  XNOR2X1M U127 ( .A(N185), .B(count[3]), .Y(n81) );
  XNOR2X1M U128 ( .A(N183), .B(count[1]), .Y(n80) );
endmodule


module Uart_Rx_Top ( RX_IN, CLK, RST, PAR_EN, PAR_TYP, Prescale, data_valid, 
        P_DATA );
  input [5:0] Prescale;
  output [7:0] P_DATA;
  input RX_IN, CLK, RST, PAR_EN, PAR_TYP;
  output data_valid;
  wire   enable, temp, dat_samp_en, sampled_bit, deser_en, stp_chk_en, stp_err,
         strt_chk_en, strt_glitch, par_chk_en, par_err, n1, n2, n3, n4;
  wire   [3:0] bit_cnt;
  wire   [4:0] edge_cnt;

  edgebitcounter U0_edgebitcounter ( .enable(enable), .clk(CLK), .rst(n3), 
        .parity_en(PAR_EN), .en(temp), .Prescale({Prescale[5:2], n1, 
        Prescale[0]}), .bit_cnt(bit_cnt), .edge_cnt(edge_cnt) );
  data_sampling U0_data_sampling ( .clk(CLK), .rst(n3), .en(dat_samp_en), 
        .data(RX_IN), .edge_cnt(edge_cnt), .Prescale({Prescale[5:2], n1, 
        Prescale[0]}), .sampled_bit(sampled_bit) );
  deserializer U0_deserializer ( .clk(CLK), .rst(n3), .en(deser_en), .data(
        sampled_bit), .bit_cnt(bit_cnt), .p_data(P_DATA) );
  stop_check U0_stop_check ( .en(stp_chk_en), .bit(sampled_bit), .err(stp_err)
         );
  start_check U0_start_check ( .data(sampled_bit), .en(strt_chk_en), .glitch(
        strt_glitch) );
  parity_check U0_parity_check ( .bit(sampled_bit), .en(par_chk_en), .P_type(
        PAR_TYP), .P_data(P_DATA), .err(par_err) );
  fsmRX U0_fsmRX ( .clk(CLK), .rst(n3), .par_en(PAR_EN), .bit(RX_IN), 
        .bit_cnt(bit_cnt), .edge_cnt(edge_cnt), .stop_err(stp_err), 
        .start_err(strt_glitch), .parity_err(par_err), .Prescale({
        Prescale[5:2], n1, Prescale[0]}), .par_en_ch(par_chk_en), 
        .start_en_ch(strt_chk_en), .stop_en_ch(stp_chk_en), .deser_en(deser_en), .data_valid(data_valid), .edge_en(enable), .samp_en(dat_samp_en), .temp(temp) );
  INVX2M U1 ( .A(n4), .Y(n3) );
  INVX2M U2 ( .A(n2), .Y(n1) );
  INVX2M U3 ( .A(RST), .Y(n4) );
  INVX2M U4 ( .A(Prescale[1]), .Y(n2) );
endmodule


module Pulse ( CLK, RST, sig, pulse );
  input CLK, RST, sig;
  output pulse;
  wire   Q, N1, n1;

  EDFFHQX2M Q_reg ( .D(sig), .E(n1), .CK(CLK), .Q(Q) );
  DFFRQX1M pulse_reg ( .D(N1), .CK(CLK), .RN(n1), .Q(pulse) );
  BUFX2M U3 ( .A(RST), .Y(n1) );
  NOR2BX1M U4 ( .AN(sig), .B(Q), .Y(N1) );
endmodule


module DATA_SYNC ( CLK, RST, bus_enable, unsync_bus, sync_bus, enable_pulse );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input CLK, RST, bus_enable;
  output enable_pulse;
  wire   EN1, EN, O, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13;

  DFFRQX2M O_reg ( .D(EN1), .CK(CLK), .RN(n11), .Q(O) );
  DFFRQX2M EN1_reg ( .D(EN), .CK(CLK), .RN(n11), .Q(EN1) );
  DFFRQX2M \sync_bus_reg[7]  ( .D(n2), .CK(CLK), .RN(n11), .Q(sync_bus[7]) );
  DFFRQX2M \sync_bus_reg[3]  ( .D(n6), .CK(CLK), .RN(n11), .Q(sync_bus[3]) );
  DFFRQX2M \sync_bus_reg[5]  ( .D(n4), .CK(CLK), .RN(n11), .Q(sync_bus[5]) );
  DFFRQX2M \sync_bus_reg[6]  ( .D(n3), .CK(CLK), .RN(n11), .Q(sync_bus[6]) );
  DFFRQX2M EN_reg ( .D(bus_enable), .CK(CLK), .RN(n11), .Q(EN) );
  DFFRQX2M enable_pulse_reg ( .D(n13), .CK(CLK), .RN(n11), .Q(enable_pulse) );
  DFFRQX4M \sync_bus_reg[0]  ( .D(n9), .CK(CLK), .RN(n11), .Q(sync_bus[0]) );
  DFFRQX4M \sync_bus_reg[4]  ( .D(n5), .CK(CLK), .RN(n11), .Q(sync_bus[4]) );
  DFFRQX4M \sync_bus_reg[2]  ( .D(n7), .CK(CLK), .RN(n11), .Q(sync_bus[2]) );
  DFFRQX4M \sync_bus_reg[1]  ( .D(n8), .CK(CLK), .RN(n11), .Q(sync_bus[1]) );
  AO22XLM U3 ( .A0(unsync_bus[1]), .A1(n13), .B0(sync_bus[1]), .B1(n10), .Y(n8) );
  AO22XLM U4 ( .A0(unsync_bus[2]), .A1(n13), .B0(sync_bus[2]), .B1(n10), .Y(n7) );
  AO22XLM U5 ( .A0(unsync_bus[4]), .A1(n13), .B0(sync_bus[4]), .B1(n10), .Y(n5) );
  AO22XLM U6 ( .A0(unsync_bus[0]), .A1(n13), .B0(sync_bus[0]), .B1(n10), .Y(n9) );
  INVX4M U7 ( .A(n1), .Y(n13) );
  BUFX4M U8 ( .A(n1), .Y(n10) );
  INVX6M U9 ( .A(n12), .Y(n11) );
  INVX2M U10 ( .A(RST), .Y(n12) );
  NAND2BX2M U11 ( .AN(O), .B(EN1), .Y(n1) );
  AO22X1M U12 ( .A0(unsync_bus[6]), .A1(n13), .B0(sync_bus[6]), .B1(n10), .Y(
        n3) );
  AO22X1M U13 ( .A0(unsync_bus[5]), .A1(n13), .B0(sync_bus[5]), .B1(n10), .Y(
        n4) );
  AO22X1M U14 ( .A0(unsync_bus[7]), .A1(n13), .B0(sync_bus[7]), .B1(n10), .Y(
        n2) );
  AO22X1M U15 ( .A0(unsync_bus[3]), .A1(n13), .B0(sync_bus[3]), .B1(n10), .Y(
        n6) );
endmodule


module memory ( wdata, winc, wfull, waddr, wclk, wrst_n, raddr, rdata );
  input [7:0] wdata;
  input [2:0] waddr;
  input [2:0] raddr;
  output [7:0] rdata;
  input winc, wfull, wclk, wrst_n;
  wire   N10, N11, N12, \memo[7][7] , \memo[7][6] , \memo[7][5] , \memo[7][4] ,
         \memo[7][3] , \memo[7][2] , \memo[7][1] , \memo[7][0] , \memo[6][7] ,
         \memo[6][6] , \memo[6][5] , \memo[6][4] , \memo[6][3] , \memo[6][2] ,
         \memo[6][1] , \memo[6][0] , \memo[5][7] , \memo[5][6] , \memo[5][5] ,
         \memo[5][4] , \memo[5][3] , \memo[5][2] , \memo[5][1] , \memo[5][0] ,
         \memo[4][7] , \memo[4][6] , \memo[4][5] , \memo[4][4] , \memo[4][3] ,
         \memo[4][2] , \memo[4][1] , \memo[4][0] , \memo[3][7] , \memo[3][6] ,
         \memo[3][5] , \memo[3][4] , \memo[3][3] , \memo[3][2] , \memo[3][1] ,
         \memo[3][0] , \memo[2][7] , \memo[2][6] , \memo[2][5] , \memo[2][4] ,
         \memo[2][3] , \memo[2][2] , \memo[2][1] , \memo[2][0] , \memo[1][7] ,
         \memo[1][6] , \memo[1][5] , \memo[1][4] , \memo[1][3] , \memo[1][2] ,
         \memo[1][1] , \memo[1][0] , \memo[0][7] , \memo[0][6] , \memo[0][5] ,
         \memo[0][4] , \memo[0][3] , \memo[0][2] , \memo[0][1] , \memo[0][0] ,
         n12, n16, n18, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n1, n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n13, n14, n15, n17, n19, n20, n21, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131;
  assign N10 = raddr[0];
  assign N11 = raddr[1];
  assign N12 = raddr[2];

  DFFRQX2M \memo_reg[5][7]  ( .D(n69), .CK(wclk), .RN(n115), .Q(\memo[5][7] )
         );
  DFFRQX2M \memo_reg[5][6]  ( .D(n68), .CK(wclk), .RN(n115), .Q(\memo[5][6] )
         );
  DFFRQX2M \memo_reg[5][5]  ( .D(n67), .CK(wclk), .RN(n115), .Q(\memo[5][5] )
         );
  DFFRQX2M \memo_reg[5][4]  ( .D(n66), .CK(wclk), .RN(n115), .Q(\memo[5][4] )
         );
  DFFRQX2M \memo_reg[5][3]  ( .D(n65), .CK(wclk), .RN(n115), .Q(\memo[5][3] )
         );
  DFFRQX2M \memo_reg[5][2]  ( .D(n64), .CK(wclk), .RN(n115), .Q(\memo[5][2] )
         );
  DFFRQX2M \memo_reg[5][1]  ( .D(n63), .CK(wclk), .RN(n115), .Q(\memo[5][1] )
         );
  DFFRQX2M \memo_reg[5][0]  ( .D(n62), .CK(wclk), .RN(n115), .Q(\memo[5][0] )
         );
  DFFRQX2M \memo_reg[1][7]  ( .D(n37), .CK(wclk), .RN(n118), .Q(\memo[1][7] )
         );
  DFFRQX2M \memo_reg[1][6]  ( .D(n36), .CK(wclk), .RN(n118), .Q(\memo[1][6] )
         );
  DFFRQX2M \memo_reg[1][5]  ( .D(n35), .CK(wclk), .RN(n118), .Q(\memo[1][5] )
         );
  DFFRQX2M \memo_reg[1][4]  ( .D(n34), .CK(wclk), .RN(n118), .Q(\memo[1][4] )
         );
  DFFRQX2M \memo_reg[1][3]  ( .D(n33), .CK(wclk), .RN(n118), .Q(\memo[1][3] )
         );
  DFFRQX2M \memo_reg[1][2]  ( .D(n32), .CK(wclk), .RN(n118), .Q(\memo[1][2] )
         );
  DFFRQX2M \memo_reg[1][1]  ( .D(n31), .CK(wclk), .RN(n118), .Q(\memo[1][1] )
         );
  DFFRQX2M \memo_reg[1][0]  ( .D(n30), .CK(wclk), .RN(n118), .Q(\memo[1][0] )
         );
  DFFRQX2M \memo_reg[7][7]  ( .D(n85), .CK(wclk), .RN(n114), .Q(\memo[7][7] )
         );
  DFFRQX2M \memo_reg[7][6]  ( .D(n84), .CK(wclk), .RN(n114), .Q(\memo[7][6] )
         );
  DFFRQX2M \memo_reg[7][5]  ( .D(n83), .CK(wclk), .RN(n114), .Q(\memo[7][5] )
         );
  DFFRQX2M \memo_reg[7][4]  ( .D(n82), .CK(wclk), .RN(n114), .Q(\memo[7][4] )
         );
  DFFRQX2M \memo_reg[7][3]  ( .D(n81), .CK(wclk), .RN(n114), .Q(\memo[7][3] )
         );
  DFFRQX2M \memo_reg[7][2]  ( .D(n80), .CK(wclk), .RN(n114), .Q(\memo[7][2] )
         );
  DFFRQX2M \memo_reg[7][1]  ( .D(n79), .CK(wclk), .RN(n114), .Q(\memo[7][1] )
         );
  DFFRQX2M \memo_reg[7][0]  ( .D(n78), .CK(wclk), .RN(n114), .Q(\memo[7][0] )
         );
  DFFRQX2M \memo_reg[3][7]  ( .D(n53), .CK(wclk), .RN(n116), .Q(\memo[3][7] )
         );
  DFFRQX2M \memo_reg[3][6]  ( .D(n52), .CK(wclk), .RN(n116), .Q(\memo[3][6] )
         );
  DFFRQX2M \memo_reg[3][5]  ( .D(n51), .CK(wclk), .RN(n116), .Q(\memo[3][5] )
         );
  DFFRQX2M \memo_reg[3][4]  ( .D(n50), .CK(wclk), .RN(n116), .Q(\memo[3][4] )
         );
  DFFRQX2M \memo_reg[3][3]  ( .D(n49), .CK(wclk), .RN(n117), .Q(\memo[3][3] )
         );
  DFFRQX2M \memo_reg[3][2]  ( .D(n48), .CK(wclk), .RN(n117), .Q(\memo[3][2] )
         );
  DFFRQX2M \memo_reg[3][1]  ( .D(n47), .CK(wclk), .RN(n117), .Q(\memo[3][1] )
         );
  DFFRQX2M \memo_reg[3][0]  ( .D(n46), .CK(wclk), .RN(n117), .Q(\memo[3][0] )
         );
  DFFRQX2M \memo_reg[6][7]  ( .D(n77), .CK(wclk), .RN(n114), .Q(\memo[6][7] )
         );
  DFFRQX2M \memo_reg[6][6]  ( .D(n76), .CK(wclk), .RN(n114), .Q(\memo[6][6] )
         );
  DFFRQX2M \memo_reg[6][5]  ( .D(n75), .CK(wclk), .RN(n114), .Q(\memo[6][5] )
         );
  DFFRQX2M \memo_reg[6][4]  ( .D(n74), .CK(wclk), .RN(n114), .Q(\memo[6][4] )
         );
  DFFRQX2M \memo_reg[6][3]  ( .D(n73), .CK(wclk), .RN(n115), .Q(\memo[6][3] )
         );
  DFFRQX2M \memo_reg[6][2]  ( .D(n72), .CK(wclk), .RN(n115), .Q(\memo[6][2] )
         );
  DFFRQX2M \memo_reg[6][1]  ( .D(n71), .CK(wclk), .RN(n115), .Q(\memo[6][1] )
         );
  DFFRQX2M \memo_reg[6][0]  ( .D(n70), .CK(wclk), .RN(n115), .Q(\memo[6][0] )
         );
  DFFRQX2M \memo_reg[2][7]  ( .D(n45), .CK(wclk), .RN(n117), .Q(\memo[2][7] )
         );
  DFFRQX2M \memo_reg[2][6]  ( .D(n44), .CK(wclk), .RN(n117), .Q(\memo[2][6] )
         );
  DFFRQX2M \memo_reg[2][5]  ( .D(n43), .CK(wclk), .RN(n117), .Q(\memo[2][5] )
         );
  DFFRQX2M \memo_reg[2][4]  ( .D(n42), .CK(wclk), .RN(n117), .Q(\memo[2][4] )
         );
  DFFRQX2M \memo_reg[2][3]  ( .D(n41), .CK(wclk), .RN(n117), .Q(\memo[2][3] )
         );
  DFFRQX2M \memo_reg[2][2]  ( .D(n40), .CK(wclk), .RN(n117), .Q(\memo[2][2] )
         );
  DFFRQX2M \memo_reg[2][1]  ( .D(n39), .CK(wclk), .RN(n117), .Q(\memo[2][1] )
         );
  DFFRQX2M \memo_reg[2][0]  ( .D(n38), .CK(wclk), .RN(n117), .Q(\memo[2][0] )
         );
  DFFRQX2M \memo_reg[4][7]  ( .D(n61), .CK(wclk), .RN(n116), .Q(\memo[4][7] )
         );
  DFFRQX2M \memo_reg[4][6]  ( .D(n60), .CK(wclk), .RN(n116), .Q(\memo[4][6] )
         );
  DFFRQX2M \memo_reg[4][5]  ( .D(n59), .CK(wclk), .RN(n116), .Q(\memo[4][5] )
         );
  DFFRQX2M \memo_reg[4][4]  ( .D(n58), .CK(wclk), .RN(n116), .Q(\memo[4][4] )
         );
  DFFRQX2M \memo_reg[4][3]  ( .D(n57), .CK(wclk), .RN(n116), .Q(\memo[4][3] )
         );
  DFFRQX2M \memo_reg[4][2]  ( .D(n56), .CK(wclk), .RN(n116), .Q(\memo[4][2] )
         );
  DFFRQX2M \memo_reg[4][1]  ( .D(n55), .CK(wclk), .RN(n116), .Q(\memo[4][1] )
         );
  DFFRQX2M \memo_reg[4][0]  ( .D(n54), .CK(wclk), .RN(n116), .Q(\memo[4][0] )
         );
  DFFRQX2M \memo_reg[0][7]  ( .D(n29), .CK(wclk), .RN(n118), .Q(\memo[0][7] )
         );
  DFFRQX2M \memo_reg[0][6]  ( .D(n28), .CK(wclk), .RN(n118), .Q(\memo[0][6] )
         );
  DFFRQX2M \memo_reg[0][5]  ( .D(n27), .CK(wclk), .RN(n118), .Q(\memo[0][5] )
         );
  DFFRQX2M \memo_reg[0][4]  ( .D(n26), .CK(wclk), .RN(n118), .Q(\memo[0][4] )
         );
  DFFRQX2M \memo_reg[0][3]  ( .D(n25), .CK(wclk), .RN(n119), .Q(\memo[0][3] )
         );
  DFFRQX2M \memo_reg[0][2]  ( .D(n24), .CK(wclk), .RN(n119), .Q(\memo[0][2] )
         );
  DFFRQX2M \memo_reg[0][1]  ( .D(n23), .CK(wclk), .RN(n119), .Q(\memo[0][1] )
         );
  DFFRQX2M \memo_reg[0][0]  ( .D(n22), .CK(wclk), .RN(n119), .Q(\memo[0][0] )
         );
  NOR2BX4M U2 ( .AN(n16), .B(waddr[2]), .Y(n12) );
  AND2X2M U3 ( .A(waddr[2]), .B(n16), .Y(n18) );
  INVX4M U4 ( .A(wdata[0]), .Y(n131) );
  INVX4M U5 ( .A(wdata[1]), .Y(n130) );
  INVX4M U6 ( .A(wdata[2]), .Y(n129) );
  INVX4M U7 ( .A(wdata[3]), .Y(n128) );
  INVX4M U8 ( .A(wdata[4]), .Y(n127) );
  INVX4M U9 ( .A(wdata[5]), .Y(n126) );
  INVX4M U10 ( .A(wdata[6]), .Y(n125) );
  INVX4M U11 ( .A(wdata[7]), .Y(n124) );
  INVX2M U12 ( .A(waddr[1]), .Y(n123) );
  INVX2M U13 ( .A(waddr[0]), .Y(n122) );
  BUFX6M U14 ( .A(n121), .Y(n118) );
  BUFX6M U15 ( .A(n120), .Y(n117) );
  BUFX6M U16 ( .A(n120), .Y(n116) );
  BUFX6M U17 ( .A(n121), .Y(n115) );
  BUFX6M U18 ( .A(n121), .Y(n114) );
  BUFX2M U19 ( .A(n120), .Y(n119) );
  BUFX2M U20 ( .A(n121), .Y(n120) );
  NOR2BX2M U21 ( .AN(winc), .B(wfull), .Y(n16) );
  INVX4M U22 ( .A(n2), .Y(n105) );
  INVX4M U23 ( .A(n2), .Y(n104) );
  INVX4M U24 ( .A(n1), .Y(n113) );
  INVX4M U25 ( .A(n1), .Y(n112) );
  BUFX2M U26 ( .A(wrst_n), .Y(n121) );
  AND3X2M U27 ( .A(n122), .B(n123), .C(n12), .Y(n1) );
  INVX4M U28 ( .A(n6), .Y(n109) );
  INVX4M U29 ( .A(n6), .Y(n108) );
  INVX4M U30 ( .A(n5), .Y(n107) );
  INVX4M U31 ( .A(n5), .Y(n106) );
  INVX4M U32 ( .A(n7), .Y(n111) );
  INVX4M U33 ( .A(n7), .Y(n110) );
  INVX4M U34 ( .A(n8), .Y(n103) );
  INVX4M U35 ( .A(n8), .Y(n102) );
  INVX4M U36 ( .A(n3), .Y(n101) );
  INVX4M U37 ( .A(n3), .Y(n100) );
  INVX4M U38 ( .A(n4), .Y(n99) );
  INVX4M U39 ( .A(n4), .Y(n98) );
  AND3X2M U40 ( .A(n122), .B(n123), .C(n18), .Y(n2) );
  INVX6M U41 ( .A(n94), .Y(n93) );
  INVX6M U42 ( .A(n94), .Y(n92) );
  INVX4M U43 ( .A(n97), .Y(n96) );
  INVX4M U44 ( .A(n97), .Y(n95) );
  AND3X2M U45 ( .A(waddr[1]), .B(n122), .C(n18), .Y(n3) );
  AND3X2M U46 ( .A(waddr[1]), .B(waddr[0]), .C(n18), .Y(n4) );
  OAI2BB2X1M U47 ( .B0(n131), .B1(n111), .A0N(\memo[1][0] ), .A1N(n111), .Y(
        n30) );
  OAI2BB2X1M U48 ( .B0(n130), .B1(n110), .A0N(\memo[1][1] ), .A1N(n110), .Y(
        n31) );
  OAI2BB2X1M U49 ( .B0(n129), .B1(n111), .A0N(\memo[1][2] ), .A1N(n111), .Y(
        n32) );
  OAI2BB2X1M U50 ( .B0(n128), .B1(n110), .A0N(\memo[1][3] ), .A1N(n110), .Y(
        n33) );
  OAI2BB2X1M U51 ( .B0(n127), .B1(n111), .A0N(\memo[1][4] ), .A1N(n111), .Y(
        n34) );
  OAI2BB2X1M U52 ( .B0(n126), .B1(n110), .A0N(\memo[1][5] ), .A1N(n110), .Y(
        n35) );
  OAI2BB2X1M U53 ( .B0(n125), .B1(n111), .A0N(\memo[1][6] ), .A1N(n111), .Y(
        n36) );
  OAI2BB2X1M U54 ( .B0(n124), .B1(n110), .A0N(\memo[1][7] ), .A1N(n110), .Y(
        n37) );
  OAI2BB2X1M U55 ( .B0(n131), .B1(n109), .A0N(\memo[2][0] ), .A1N(n109), .Y(
        n38) );
  OAI2BB2X1M U56 ( .B0(n130), .B1(n108), .A0N(\memo[2][1] ), .A1N(n108), .Y(
        n39) );
  OAI2BB2X1M U57 ( .B0(n129), .B1(n109), .A0N(\memo[2][2] ), .A1N(n109), .Y(
        n40) );
  OAI2BB2X1M U58 ( .B0(n128), .B1(n108), .A0N(\memo[2][3] ), .A1N(n108), .Y(
        n41) );
  OAI2BB2X1M U59 ( .B0(n127), .B1(n109), .A0N(\memo[2][4] ), .A1N(n109), .Y(
        n42) );
  OAI2BB2X1M U60 ( .B0(n126), .B1(n108), .A0N(\memo[2][5] ), .A1N(n108), .Y(
        n43) );
  OAI2BB2X1M U61 ( .B0(n125), .B1(n109), .A0N(\memo[2][6] ), .A1N(n109), .Y(
        n44) );
  OAI2BB2X1M U62 ( .B0(n124), .B1(n108), .A0N(\memo[2][7] ), .A1N(n108), .Y(
        n45) );
  OAI2BB2X1M U63 ( .B0(n131), .B1(n107), .A0N(\memo[3][0] ), .A1N(n107), .Y(
        n46) );
  OAI2BB2X1M U64 ( .B0(n130), .B1(n106), .A0N(\memo[3][1] ), .A1N(n106), .Y(
        n47) );
  OAI2BB2X1M U65 ( .B0(n129), .B1(n107), .A0N(\memo[3][2] ), .A1N(n107), .Y(
        n48) );
  OAI2BB2X1M U66 ( .B0(n128), .B1(n106), .A0N(\memo[3][3] ), .A1N(n106), .Y(
        n49) );
  OAI2BB2X1M U67 ( .B0(n127), .B1(n107), .A0N(\memo[3][4] ), .A1N(n107), .Y(
        n50) );
  OAI2BB2X1M U68 ( .B0(n126), .B1(n106), .A0N(\memo[3][5] ), .A1N(n106), .Y(
        n51) );
  OAI2BB2X1M U69 ( .B0(n125), .B1(n107), .A0N(\memo[3][6] ), .A1N(n107), .Y(
        n52) );
  OAI2BB2X1M U70 ( .B0(n124), .B1(n106), .A0N(\memo[3][7] ), .A1N(n106), .Y(
        n53) );
  OAI2BB2X1M U71 ( .B0(n131), .B1(n105), .A0N(\memo[4][0] ), .A1N(n105), .Y(
        n54) );
  OAI2BB2X1M U72 ( .B0(n130), .B1(n104), .A0N(\memo[4][1] ), .A1N(n104), .Y(
        n55) );
  OAI2BB2X1M U73 ( .B0(n129), .B1(n105), .A0N(\memo[4][2] ), .A1N(n105), .Y(
        n56) );
  OAI2BB2X1M U74 ( .B0(n128), .B1(n104), .A0N(\memo[4][3] ), .A1N(n104), .Y(
        n57) );
  OAI2BB2X1M U75 ( .B0(n127), .B1(n105), .A0N(\memo[4][4] ), .A1N(n105), .Y(
        n58) );
  OAI2BB2X1M U76 ( .B0(n126), .B1(n104), .A0N(\memo[4][5] ), .A1N(n104), .Y(
        n59) );
  OAI2BB2X1M U77 ( .B0(n125), .B1(n105), .A0N(\memo[4][6] ), .A1N(n105), .Y(
        n60) );
  OAI2BB2X1M U78 ( .B0(n124), .B1(n104), .A0N(\memo[4][7] ), .A1N(n104), .Y(
        n61) );
  OAI2BB2X1M U79 ( .B0(n131), .B1(n103), .A0N(\memo[5][0] ), .A1N(n103), .Y(
        n62) );
  OAI2BB2X1M U80 ( .B0(n130), .B1(n102), .A0N(\memo[5][1] ), .A1N(n102), .Y(
        n63) );
  OAI2BB2X1M U81 ( .B0(n129), .B1(n103), .A0N(\memo[5][2] ), .A1N(n103), .Y(
        n64) );
  OAI2BB2X1M U82 ( .B0(n128), .B1(n102), .A0N(\memo[5][3] ), .A1N(n102), .Y(
        n65) );
  OAI2BB2X1M U83 ( .B0(n127), .B1(n103), .A0N(\memo[5][4] ), .A1N(n103), .Y(
        n66) );
  OAI2BB2X1M U84 ( .B0(n126), .B1(n102), .A0N(\memo[5][5] ), .A1N(n102), .Y(
        n67) );
  OAI2BB2X1M U85 ( .B0(n125), .B1(n103), .A0N(\memo[5][6] ), .A1N(n103), .Y(
        n68) );
  OAI2BB2X1M U86 ( .B0(n124), .B1(n102), .A0N(\memo[5][7] ), .A1N(n102), .Y(
        n69) );
  OAI2BB2X1M U87 ( .B0(n131), .B1(n101), .A0N(\memo[6][0] ), .A1N(n101), .Y(
        n70) );
  OAI2BB2X1M U88 ( .B0(n130), .B1(n100), .A0N(\memo[6][1] ), .A1N(n100), .Y(
        n71) );
  OAI2BB2X1M U89 ( .B0(n129), .B1(n101), .A0N(\memo[6][2] ), .A1N(n101), .Y(
        n72) );
  OAI2BB2X1M U90 ( .B0(n128), .B1(n100), .A0N(\memo[6][3] ), .A1N(n100), .Y(
        n73) );
  OAI2BB2X1M U91 ( .B0(n127), .B1(n101), .A0N(\memo[6][4] ), .A1N(n101), .Y(
        n74) );
  OAI2BB2X1M U92 ( .B0(n126), .B1(n100), .A0N(\memo[6][5] ), .A1N(n100), .Y(
        n75) );
  OAI2BB2X1M U93 ( .B0(n125), .B1(n101), .A0N(\memo[6][6] ), .A1N(n101), .Y(
        n76) );
  OAI2BB2X1M U94 ( .B0(n124), .B1(n100), .A0N(\memo[6][7] ), .A1N(n100), .Y(
        n77) );
  OAI2BB2X1M U95 ( .B0(n131), .B1(n99), .A0N(\memo[7][0] ), .A1N(n99), .Y(n78)
         );
  OAI2BB2X1M U96 ( .B0(n130), .B1(n98), .A0N(\memo[7][1] ), .A1N(n98), .Y(n79)
         );
  OAI2BB2X1M U97 ( .B0(n129), .B1(n99), .A0N(\memo[7][2] ), .A1N(n99), .Y(n80)
         );
  OAI2BB2X1M U98 ( .B0(n128), .B1(n98), .A0N(\memo[7][3] ), .A1N(n98), .Y(n81)
         );
  OAI2BB2X1M U99 ( .B0(n127), .B1(n99), .A0N(\memo[7][4] ), .A1N(n99), .Y(n82)
         );
  OAI2BB2X1M U100 ( .B0(n126), .B1(n98), .A0N(\memo[7][5] ), .A1N(n98), .Y(n83) );
  OAI2BB2X1M U101 ( .B0(n125), .B1(n99), .A0N(\memo[7][6] ), .A1N(n99), .Y(n84) );
  OAI2BB2X1M U102 ( .B0(n124), .B1(n98), .A0N(\memo[7][7] ), .A1N(n98), .Y(n85) );
  OAI2BB2X1M U103 ( .B0(n113), .B1(n131), .A0N(\memo[0][0] ), .A1N(n113), .Y(
        n22) );
  OAI2BB2X1M U104 ( .B0(n112), .B1(n130), .A0N(\memo[0][1] ), .A1N(n112), .Y(
        n23) );
  OAI2BB2X1M U105 ( .B0(n113), .B1(n129), .A0N(\memo[0][2] ), .A1N(n113), .Y(
        n24) );
  OAI2BB2X1M U106 ( .B0(n112), .B1(n128), .A0N(\memo[0][3] ), .A1N(n112), .Y(
        n25) );
  OAI2BB2X1M U107 ( .B0(n113), .B1(n127), .A0N(\memo[0][4] ), .A1N(n113), .Y(
        n26) );
  OAI2BB2X1M U108 ( .B0(n112), .B1(n126), .A0N(\memo[0][5] ), .A1N(n112), .Y(
        n27) );
  OAI2BB2X1M U109 ( .B0(n113), .B1(n125), .A0N(\memo[0][6] ), .A1N(n113), .Y(
        n28) );
  OAI2BB2X1M U110 ( .B0(n112), .B1(n124), .A0N(\memo[0][7] ), .A1N(n112), .Y(
        n29) );
  AND3X2M U111 ( .A(waddr[0]), .B(n12), .C(waddr[1]), .Y(n5) );
  AND3X2M U112 ( .A(n12), .B(n122), .C(waddr[1]), .Y(n6) );
  AND3X2M U113 ( .A(n12), .B(n123), .C(waddr[0]), .Y(n7) );
  AND3X2M U114 ( .A(waddr[0]), .B(n123), .C(n18), .Y(n8) );
  MX2X2M U115 ( .A(n89), .B(n88), .S0(N12), .Y(rdata[6]) );
  MX4X1M U116 ( .A(\memo[4][6] ), .B(\memo[5][6] ), .C(\memo[6][6] ), .D(
        \memo[7][6] ), .S0(n92), .S1(n95), .Y(n88) );
  MX4X1M U117 ( .A(\memo[0][6] ), .B(\memo[1][6] ), .C(\memo[2][6] ), .D(
        \memo[3][6] ), .S0(n93), .S1(n96), .Y(n89) );
  MX2X2M U118 ( .A(n91), .B(n90), .S0(N12), .Y(rdata[7]) );
  MX4X1M U119 ( .A(\memo[4][7] ), .B(\memo[5][7] ), .C(\memo[6][7] ), .D(
        \memo[7][7] ), .S0(n92), .S1(n95), .Y(n90) );
  MX4X1M U120 ( .A(\memo[0][7] ), .B(\memo[1][7] ), .C(\memo[2][7] ), .D(
        \memo[3][7] ), .S0(n93), .S1(n96), .Y(n91) );
  MX2X2M U121 ( .A(n21), .B(n20), .S0(N12), .Y(rdata[4]) );
  MX4X1M U122 ( .A(\memo[4][4] ), .B(\memo[5][4] ), .C(\memo[6][4] ), .D(
        \memo[7][4] ), .S0(n92), .S1(n95), .Y(n20) );
  MX4X1M U123 ( .A(\memo[0][4] ), .B(\memo[1][4] ), .C(\memo[2][4] ), .D(
        \memo[3][4] ), .S0(n93), .S1(n96), .Y(n21) );
  MX2X2M U124 ( .A(n87), .B(n86), .S0(N12), .Y(rdata[5]) );
  MX4X1M U125 ( .A(\memo[4][5] ), .B(\memo[5][5] ), .C(\memo[6][5] ), .D(
        \memo[7][5] ), .S0(n92), .S1(n95), .Y(n86) );
  MX4X1M U126 ( .A(\memo[0][5] ), .B(\memo[1][5] ), .C(\memo[2][5] ), .D(
        \memo[3][5] ), .S0(n93), .S1(n96), .Y(n87) );
  INVX2M U127 ( .A(N11), .Y(n97) );
  INVX2M U128 ( .A(N10), .Y(n94) );
  MX2X2M U129 ( .A(n15), .B(n14), .S0(N12), .Y(rdata[2]) );
  MX4X1M U130 ( .A(\memo[4][2] ), .B(\memo[5][2] ), .C(\memo[6][2] ), .D(
        \memo[7][2] ), .S0(n92), .S1(n95), .Y(n14) );
  MX4X1M U131 ( .A(\memo[0][2] ), .B(\memo[1][2] ), .C(\memo[2][2] ), .D(
        \memo[3][2] ), .S0(n93), .S1(n96), .Y(n15) );
  MX2X2M U132 ( .A(n19), .B(n17), .S0(N12), .Y(rdata[3]) );
  MX4X1M U133 ( .A(\memo[4][3] ), .B(\memo[5][3] ), .C(\memo[6][3] ), .D(
        \memo[7][3] ), .S0(n92), .S1(n95), .Y(n17) );
  MX4X1M U134 ( .A(\memo[0][3] ), .B(\memo[1][3] ), .C(\memo[2][3] ), .D(
        \memo[3][3] ), .S0(n93), .S1(n96), .Y(n19) );
  MX2X2M U135 ( .A(n10), .B(n9), .S0(N12), .Y(rdata[0]) );
  MX4X1M U136 ( .A(\memo[4][0] ), .B(\memo[5][0] ), .C(\memo[6][0] ), .D(
        \memo[7][0] ), .S0(n92), .S1(n95), .Y(n9) );
  MX4X1M U137 ( .A(\memo[0][0] ), .B(\memo[1][0] ), .C(\memo[2][0] ), .D(
        \memo[3][0] ), .S0(n93), .S1(n96), .Y(n10) );
  MX2X2M U138 ( .A(n13), .B(n11), .S0(N12), .Y(rdata[1]) );
  MX4X1M U139 ( .A(\memo[4][1] ), .B(\memo[5][1] ), .C(\memo[6][1] ), .D(
        \memo[7][1] ), .S0(n92), .S1(n95), .Y(n11) );
  MX4X1M U140 ( .A(\memo[0][1] ), .B(\memo[1][1] ), .C(\memo[2][1] ), .D(
        \memo[3][1] ), .S0(n93), .S1(n96), .Y(n13) );
endmodule


module sync_0 ( CLK, RST, Ptr, O_Ptr );
  input [3:0] Ptr;
  output [3:0] O_Ptr;
  input CLK, RST;
  wire   n1, n2;
  wire   [3:0] meta;

  DFFRQX2M \O_Ptr_reg[1]  ( .D(meta[1]), .CK(CLK), .RN(n1), .Q(O_Ptr[1]) );
  DFFRQX2M \O_Ptr_reg[0]  ( .D(meta[0]), .CK(CLK), .RN(n1), .Q(O_Ptr[0]) );
  DFFRQX2M \O_Ptr_reg[3]  ( .D(meta[3]), .CK(CLK), .RN(n1), .Q(O_Ptr[3]) );
  DFFRQX2M \O_Ptr_reg[2]  ( .D(meta[2]), .CK(CLK), .RN(n1), .Q(O_Ptr[2]) );
  DFFRQX2M \meta_reg[3]  ( .D(Ptr[3]), .CK(CLK), .RN(n1), .Q(meta[3]) );
  DFFRQX2M \meta_reg[2]  ( .D(Ptr[2]), .CK(CLK), .RN(n1), .Q(meta[2]) );
  DFFRQX2M \meta_reg[1]  ( .D(Ptr[1]), .CK(CLK), .RN(n1), .Q(meta[1]) );
  DFFRQX2M \meta_reg[0]  ( .D(Ptr[0]), .CK(CLK), .RN(n1), .Q(meta[0]) );
  INVX4M U3 ( .A(n2), .Y(n1) );
  INVX2M U4 ( .A(RST), .Y(n2) );
endmodule


module sync_1 ( CLK, RST, Ptr, O_Ptr );
  input [3:0] Ptr;
  output [3:0] O_Ptr;
  input CLK, RST;
  wire   n1, n2;
  wire   [3:0] meta;

  DFFRQX1M \O_Ptr_reg[3]  ( .D(meta[3]), .CK(CLK), .RN(n1), .Q(O_Ptr[3]) );
  DFFRQX1M \O_Ptr_reg[2]  ( .D(meta[2]), .CK(CLK), .RN(n1), .Q(O_Ptr[2]) );
  DFFRQX1M \O_Ptr_reg[1]  ( .D(meta[1]), .CK(CLK), .RN(n1), .Q(O_Ptr[1]) );
  DFFRQX1M \O_Ptr_reg[0]  ( .D(meta[0]), .CK(CLK), .RN(n1), .Q(O_Ptr[0]) );
  DFFRQX1M \meta_reg[3]  ( .D(Ptr[3]), .CK(CLK), .RN(n1), .Q(meta[3]) );
  DFFRQX1M \meta_reg[2]  ( .D(Ptr[2]), .CK(CLK), .RN(n1), .Q(meta[2]) );
  DFFRQX1M \meta_reg[1]  ( .D(Ptr[1]), .CK(CLK), .RN(n1), .Q(meta[1]) );
  DFFRQX1M \meta_reg[0]  ( .D(Ptr[0]), .CK(CLK), .RN(n1), .Q(meta[0]) );
  INVX4M U3 ( .A(n2), .Y(n1) );
  INVX2M U4 ( .A(RST), .Y(n2) );
endmodule


module WFIFO ( wclk, wrst_n, winc, s_g_rptr, wfull, waddr, g_wptr );
  input [3:0] s_g_rptr;
  output [2:0] waddr;
  output [3:0] g_wptr;
  input wclk, wrst_n, winc;
  output wfull;
  wire   N93, N94, N95, N96, n3, n4, n5, n6, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n1, n2, n7;

  DFFRQX2M \wptr_reg[3]  ( .D(n13), .CK(wclk), .RN(n1), .Q(N96) );
  DFFRQX2M \g_wptr_reg[0]  ( .D(N93), .CK(wclk), .RN(n1), .Q(g_wptr[0]) );
  DFFRQX2M \g_wptr_reg[1]  ( .D(N94), .CK(wclk), .RN(n1), .Q(g_wptr[1]) );
  DFFRQX2M \g_wptr_reg[3]  ( .D(N96), .CK(wclk), .RN(n1), .Q(g_wptr[3]) );
  DFFRQX2M \g_wptr_reg[2]  ( .D(N95), .CK(wclk), .RN(n1), .Q(g_wptr[2]) );
  DFFRX4M \wptr_reg[0]  ( .D(n16), .CK(wclk), .RN(wrst_n), .Q(waddr[0]), .QN(
        n7) );
  DFFRQX4M \wptr_reg[2]  ( .D(n14), .CK(wclk), .RN(n1), .Q(waddr[2]) );
  DFFRQX4M \wptr_reg[1]  ( .D(n15), .CK(wclk), .RN(n1), .Q(waddr[1]) );
  INVX4M U3 ( .A(n2), .Y(n1) );
  INVX2M U4 ( .A(wrst_n), .Y(n2) );
  NOR2X2M U5 ( .A(n7), .B(n8), .Y(n6) );
  INVX2M U6 ( .A(n3), .Y(wfull) );
  NAND2X2M U7 ( .A(winc), .B(n3), .Y(n8) );
  CLKXOR2X2M U8 ( .A(s_g_rptr[3]), .B(g_wptr[3]), .Y(n12) );
  CLKXOR2X2M U9 ( .A(waddr[1]), .B(n6), .Y(n15) );
  NAND2X2M U10 ( .A(waddr[1]), .B(n6), .Y(n5) );
  XNOR2X2M U11 ( .A(waddr[2]), .B(n5), .Y(n14) );
  XNOR2X2M U12 ( .A(waddr[0]), .B(n8), .Y(n16) );
  XNOR2X2M U13 ( .A(N96), .B(n4), .Y(n13) );
  NAND2BX2M U14 ( .AN(n5), .B(waddr[2]), .Y(n4) );
  NAND4X2M U15 ( .A(n9), .B(n10), .C(n11), .D(n12), .Y(n3) );
  XNOR2X2M U16 ( .A(s_g_rptr[0]), .B(g_wptr[0]), .Y(n9) );
  XNOR2X2M U17 ( .A(s_g_rptr[1]), .B(g_wptr[1]), .Y(n10) );
  CLKXOR2X2M U18 ( .A(s_g_rptr[2]), .B(g_wptr[2]), .Y(n11) );
  CLKXOR2X2M U19 ( .A(waddr[2]), .B(waddr[1]), .Y(N94) );
  CLKXOR2X2M U20 ( .A(waddr[2]), .B(N96), .Y(N95) );
  XNOR2X2M U21 ( .A(waddr[1]), .B(n7), .Y(N93) );
endmodule


module RFIFO ( rinc, rclk, rrst_n, s_g_wptr, empty, raddr, g_rptr );
  input [3:0] s_g_wptr;
  output [2:0] raddr;
  output [3:0] g_rptr;
  input rinc, rclk, rrst_n;
  output empty;
  wire   n24, N90, N91, N92, N93, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n1, n4, n5, n6, n21, n22, n23;

  DFFRX1M \rptr_reg[0]  ( .D(n20), .CK(rclk), .RN(n4), .Q(raddr[0]), .QN(n21)
         );
  DFFRQX1M \g_rptr_reg[3]  ( .D(N93), .CK(rclk), .RN(n4), .Q(g_rptr[3]) );
  DFFRQX1M \g_rptr_reg[0]  ( .D(N90), .CK(rclk), .RN(n4), .Q(g_rptr[0]) );
  DFFRQX1M \g_rptr_reg[1]  ( .D(N91), .CK(rclk), .RN(n4), .Q(g_rptr[1]) );
  DFFRQX1M \g_rptr_reg[2]  ( .D(N92), .CK(rclk), .RN(n4), .Q(g_rptr[2]) );
  DFFRQX1M \rptr_reg[1]  ( .D(n19), .CK(rclk), .RN(n4), .Q(n24) );
  DFFRX4M \rptr_reg[2]  ( .D(n18), .CK(rclk), .RN(rrst_n), .QN(n22) );
  DFFRX4M \rptr_reg[3]  ( .D(n17), .CK(rclk), .RN(n4), .Q(N93), .QN(n23) );
  INVXLM U3 ( .A(n24), .Y(n1) );
  INVX4M U4 ( .A(n1), .Y(raddr[1]) );
  INVX6M U5 ( .A(n22), .Y(raddr[2]) );
  INVX4M U6 ( .A(n5), .Y(n4) );
  INVX2M U7 ( .A(rrst_n), .Y(n5) );
  NOR2X2M U8 ( .A(n21), .B(n11), .Y(n10) );
  INVX2M U9 ( .A(n12), .Y(empty) );
  XNOR2X2M U10 ( .A(s_g_wptr[1]), .B(g_rptr[1]), .Y(n13) );
  NAND4X2M U11 ( .A(n13), .B(n14), .C(n15), .D(n16), .Y(n12) );
  XNOR2X2M U12 ( .A(s_g_wptr[3]), .B(g_rptr[3]), .Y(n15) );
  XNOR2X2M U13 ( .A(s_g_wptr[2]), .B(g_rptr[2]), .Y(n16) );
  XNOR2X2M U14 ( .A(s_g_wptr[0]), .B(g_rptr[0]), .Y(n14) );
  CLKXOR2X2M U15 ( .A(raddr[1]), .B(n10), .Y(n19) );
  XNOR2X2M U16 ( .A(n22), .B(raddr[1]), .Y(N91) );
  XNOR2X2M U17 ( .A(raddr[2]), .B(n9), .Y(n18) );
  XNOR2X2M U18 ( .A(raddr[0]), .B(n11), .Y(n20) );
  OAI21X2M U19 ( .A0(N93), .A1(n22), .B0(n8), .Y(N92) );
  NAND2X2M U20 ( .A(raddr[1]), .B(n10), .Y(n9) );
  NAND2X2M U21 ( .A(N93), .B(n22), .Y(n8) );
  NAND2X2M U22 ( .A(rinc), .B(n12), .Y(n11) );
  OAI211X2M U23 ( .A0(n6), .A1(n23), .B0(n7), .C0(n8), .Y(n17) );
  NAND3X2M U24 ( .A(n6), .B(n23), .C(raddr[2]), .Y(n7) );
  INVX2M U25 ( .A(n9), .Y(n6) );
  XNOR2X2M U26 ( .A(raddr[1]), .B(n21), .Y(N90) );
endmodule


module FIFO ( WR_DATA, W_CLK, R_CLK, W_INC, R_INC, W_RST, R_RST, FULL, EMPTY, 
        RD_DATA );
  input [7:0] WR_DATA;
  output [7:0] RD_DATA;
  input W_CLK, R_CLK, W_INC, R_INC, W_RST, R_RST;
  output FULL, EMPTY;
  wire   n1, n2, n3, n4;
  wire   [2:0] waddr;
  wire   [2:0] raddr;
  wire   [3:0] g_rptr;
  wire   [3:0] s_g_rptr;
  wire   [3:0] g_wptr;
  wire   [3:0] s_g_wptr;

  memory U0_memory ( .wdata(WR_DATA), .winc(W_INC), .wfull(FULL), .waddr(waddr), .wclk(W_CLK), .wrst_n(n3), .raddr(raddr), .rdata(RD_DATA) );
  sync_0 U0_sync ( .CLK(W_CLK), .RST(n3), .Ptr(g_rptr), .O_Ptr(s_g_rptr) );
  sync_1 U1_sync ( .CLK(R_CLK), .RST(n1), .Ptr(g_wptr), .O_Ptr(s_g_wptr) );
  WFIFO U0_WFIFO ( .wclk(W_CLK), .wrst_n(n3), .winc(W_INC), .s_g_rptr(s_g_rptr), .wfull(FULL), .waddr(waddr), .g_wptr(g_wptr) );
  RFIFO U0_RFIFO ( .rinc(R_INC), .rclk(R_CLK), .rrst_n(n1), .s_g_wptr(s_g_wptr), .empty(EMPTY), .raddr(raddr), .g_rptr(g_rptr) );
  INVX2M U1 ( .A(n4), .Y(n3) );
  INVX2M U2 ( .A(W_RST), .Y(n4) );
  INVX2M U3 ( .A(n2), .Y(n1) );
  INVX2M U4 ( .A(R_RST), .Y(n2) );
endmodule


module RST_SYNC_0 ( CLK, RST, SYNC_RST );
  input CLK, RST;
  output SYNC_RST;
  wire   EN;

  DFFRQX2M SYNC_RST_reg ( .D(EN), .CK(CLK), .RN(RST), .Q(SYNC_RST) );
  DFFRQX2M EN_reg ( .D(1'b1), .CK(CLK), .RN(RST), .Q(EN) );
endmodule


module RST_SYNC_1 ( CLK, RST, SYNC_RST );
  input CLK, RST;
  output SYNC_RST;
  wire   EN;

  DFFRQX2M SYNC_RST_reg ( .D(EN), .CK(CLK), .RN(RST), .Q(SYNC_RST) );
  DFFRQX2M EN_reg ( .D(1'b1), .CK(CLK), .RN(RST), .Q(EN) );
endmodule


module CLK_DIV_1_DW01_inc_0 ( A, SUM );
  input [8:0] A;
  output [8:0] SUM;

  wire   [8:2] carry;

  ADDHX1M U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
endmodule


module CLK_DIV_1_DW01_inc_1 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKXOR2X2M U1 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module CLK_DIV_1 ( i_ref_clk, i_rst, i_clk_en, i_div_ratio, o_div_clk );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst, i_clk_en;
  output o_div_clk;
  wire   N0, o_div_clk1, N7, N8, N9, N10, N11, N12, N13, N14, N17, N19, N20,
         N21, N22, N23, N24, N25, N26, n1, n3, n4, n5, n6, n7, n8, n11, n12,
         n13, n14, n17, n18, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68;
  wire   [7:0] count;
  wire   SYNOPSYS_UNCONNECTED__0;

  CLK_DIV_1_DW01_inc_0 add_36_round ( .A({1'b0, i_div_ratio}), .SUM({N14, N13, 
        N12, N11, N10, N9, N8, N7, SYNOPSYS_UNCONNECTED__0}) );
  CLK_DIV_1_DW01_inc_1 add_42_aco ( .A({n11, n8, n7, n6, n5, n4, n3, n1}), 
        .SUM({N26, N25, N24, N23, N22, N21, N20, N19}) );
  DFFSRHQX2M o_div_clk1_reg ( .D(n64), .CK(i_ref_clk), .SN(n67), .RN(n68), .Q(
        o_div_clk1) );
  DFFSQX2M \count_reg[0]  ( .D(n61), .CK(i_ref_clk), .SN(n13), .Q(count[0]) );
  DFFRQX2M \count_reg[6]  ( .D(n55), .CK(i_ref_clk), .RN(n13), .Q(count[6]) );
  DFFRQX2M \count_reg[5]  ( .D(n56), .CK(i_ref_clk), .RN(n13), .Q(count[5]) );
  DFFRQX2M \count_reg[4]  ( .D(n57), .CK(i_ref_clk), .RN(n13), .Q(count[4]) );
  DFFRQX2M \count_reg[3]  ( .D(n58), .CK(i_ref_clk), .RN(n13), .Q(count[3]) );
  DFFRQX2M \count_reg[2]  ( .D(n59), .CK(i_ref_clk), .RN(n13), .Q(count[2]) );
  DFFRQX2M \count_reg[1]  ( .D(n60), .CK(i_ref_clk), .RN(n13), .Q(count[1]) );
  DFFRQX4M \count_reg[7]  ( .D(n54), .CK(i_ref_clk), .RN(n13), .Q(count[7]) );
  AOI22X1M U10 ( .A0(i_ref_clk), .A1(n12), .B0(N0), .B1(n53), .Y(n66) );
  AND2X2M U3 ( .A(count[0]), .B(N17), .Y(n1) );
  AND2X2M U4 ( .A(count[1]), .B(N17), .Y(n3) );
  AND2X2M U6 ( .A(count[2]), .B(N17), .Y(n4) );
  AND2X2M U7 ( .A(count[3]), .B(N17), .Y(n5) );
  AND2X2M U8 ( .A(count[4]), .B(N17), .Y(n6) );
  AND2X2M U9 ( .A(count[5]), .B(N17), .Y(n7) );
  AND2X2M U11 ( .A(count[6]), .B(N17), .Y(n8) );
  AND2X2M U12 ( .A(N17), .B(count[7]), .Y(n11) );
  INVX4M U13 ( .A(n18), .Y(N17) );
  MXI2X2M U14 ( .A(n30), .B(n31), .S0(n53), .Y(n18) );
  INVX2M U15 ( .A(o_div_clk1), .Y(n53) );
  INVX6M U16 ( .A(n14), .Y(n13) );
  INVX2M U17 ( .A(i_rst), .Y(n14) );
  CLKBUFX6M U18 ( .A(n65), .Y(n12) );
  OAI21X2M U19 ( .A0(n51), .A1(n52), .B0(i_clk_en), .Y(n65) );
  MX2X6M U20 ( .A(i_ref_clk), .B(o_div_clk1), .S0(N0), .Y(o_div_clk) );
  CLKINVX1M U21 ( .A(n63), .Y(n68) );
  CLKMX2X2M U22 ( .A(N26), .B(count[7]), .S0(n12), .Y(n54) );
  CLKMX2X2M U23 ( .A(N25), .B(count[6]), .S0(n12), .Y(n55) );
  CLKMX2X2M U24 ( .A(N24), .B(count[5]), .S0(n12), .Y(n56) );
  CLKMX2X2M U25 ( .A(N23), .B(count[4]), .S0(n12), .Y(n57) );
  CLKMX2X2M U26 ( .A(N22), .B(count[3]), .S0(n12), .Y(n58) );
  CLKMX2X2M U27 ( .A(N21), .B(count[2]), .S0(n12), .Y(n59) );
  CLKMX2X2M U28 ( .A(N20), .B(count[1]), .S0(n12), .Y(n60) );
  CLKMX2X2M U29 ( .A(N19), .B(count[0]), .S0(n12), .Y(n61) );
  NOR2X1M U30 ( .A(n13), .B(i_ref_clk), .Y(n63) );
  MXI2X1M U31 ( .A(n66), .B(n53), .S0(n17), .Y(n64) );
  NOR2X1M U32 ( .A(n12), .B(n18), .Y(n17) );
  CLKINVX1M U33 ( .A(n62), .Y(n67) );
  NOR2BX1M U34 ( .AN(i_ref_clk), .B(n13), .Y(n62) );
  CLKNAND2X2M U35 ( .A(n32), .B(n33), .Y(n31) );
  NOR4X1M U36 ( .A(n34), .B(n35), .C(n36), .D(n37), .Y(n33) );
  CLKXOR2X2M U37 ( .A(count[6]), .B(N13), .Y(n37) );
  CLKXOR2X2M U38 ( .A(count[5]), .B(N12), .Y(n36) );
  CLKXOR2X2M U39 ( .A(count[4]), .B(N11), .Y(n35) );
  CLKXOR2X2M U40 ( .A(count[3]), .B(N10), .Y(n34) );
  NOR4X1M U41 ( .A(n38), .B(n39), .C(n40), .D(n41), .Y(n32) );
  CLKXOR2X2M U42 ( .A(count[2]), .B(N9), .Y(n41) );
  CLKXOR2X2M U43 ( .A(count[1]), .B(N8), .Y(n40) );
  CLKXOR2X2M U44 ( .A(count[0]), .B(N7), .Y(n39) );
  CLKXOR2X2M U45 ( .A(count[7]), .B(N14), .Y(n38) );
  CLKNAND2X2M U46 ( .A(n42), .B(n43), .Y(n30) );
  NOR4X1M U47 ( .A(count[7]), .B(n44), .C(n45), .D(n46), .Y(n43) );
  CLKXOR2X2M U48 ( .A(i_div_ratio[3]), .B(count[2]), .Y(n46) );
  CLKXOR2X2M U49 ( .A(i_div_ratio[2]), .B(count[1]), .Y(n45) );
  CLKXOR2X2M U50 ( .A(i_div_ratio[1]), .B(count[0]), .Y(n44) );
  NOR4X1M U51 ( .A(n47), .B(n48), .C(n49), .D(n50), .Y(n42) );
  CLKXOR2X2M U52 ( .A(i_div_ratio[7]), .B(count[6]), .Y(n50) );
  CLKXOR2X2M U53 ( .A(i_div_ratio[6]), .B(count[5]), .Y(n49) );
  CLKXOR2X2M U54 ( .A(i_div_ratio[5]), .B(count[4]), .Y(n48) );
  CLKXOR2X2M U55 ( .A(i_div_ratio[4]), .B(count[3]), .Y(n47) );
  CLKINVX1M U56 ( .A(n12), .Y(N0) );
  OR3X1M U57 ( .A(i_div_ratio[2]), .B(i_div_ratio[3]), .C(i_div_ratio[1]), .Y(
        n52) );
  OR4X1M U58 ( .A(i_div_ratio[4]), .B(i_div_ratio[5]), .C(i_div_ratio[6]), .D(
        i_div_ratio[7]), .Y(n51) );
endmodule


module CLK_GATE ( CLK_EN, CLK, GATED_CLK );
  input CLK_EN, CLK;
  output GATED_CLK;
  wire   Latch_Out;

  TLATNX2M Latch_Out_reg ( .D(CLK_EN), .GN(CLK), .Q(Latch_Out) );
  CLKAND2X6M U2 ( .A(Latch_Out), .B(CLK), .Y(GATED_CLK) );
endmodule


module ALU_DW_div_uns_0 ( a, b, quotient, remainder, divide_by_0 );
  input [7:0] a;
  input [7:0] b;
  output [7:0] quotient;
  output [7:0] remainder;
  output divide_by_0;
  wire   n25, n26, \u_div/SumTmp[1][0] , \u_div/SumTmp[1][1] ,
         \u_div/SumTmp[1][2] , \u_div/SumTmp[1][3] , \u_div/SumTmp[1][4] ,
         \u_div/SumTmp[1][5] , \u_div/SumTmp[1][6] , \u_div/SumTmp[2][0] ,
         \u_div/SumTmp[2][1] , \u_div/SumTmp[2][2] , \u_div/SumTmp[2][3] ,
         \u_div/SumTmp[2][4] , \u_div/SumTmp[2][5] , \u_div/SumTmp[3][0] ,
         \u_div/SumTmp[3][1] , \u_div/SumTmp[3][2] , \u_div/SumTmp[3][3] ,
         \u_div/SumTmp[3][4] , \u_div/SumTmp[4][0] , \u_div/SumTmp[4][1] ,
         \u_div/SumTmp[4][2] , \u_div/SumTmp[4][3] , \u_div/SumTmp[5][0] ,
         \u_div/SumTmp[5][1] , \u_div/SumTmp[5][2] , \u_div/SumTmp[6][0] ,
         \u_div/SumTmp[6][1] , \u_div/SumTmp[7][0] , \u_div/CryTmp[0][1] ,
         \u_div/CryTmp[0][2] , \u_div/CryTmp[0][3] , \u_div/CryTmp[0][4] ,
         \u_div/CryTmp[0][5] , \u_div/CryTmp[0][6] , \u_div/CryTmp[0][7] ,
         \u_div/CryTmp[1][1] , \u_div/CryTmp[1][2] , \u_div/CryTmp[1][3] ,
         \u_div/CryTmp[1][4] , \u_div/CryTmp[1][5] , \u_div/CryTmp[1][6] ,
         \u_div/CryTmp[1][7] , \u_div/CryTmp[2][1] , \u_div/CryTmp[2][2] ,
         \u_div/CryTmp[2][3] , \u_div/CryTmp[2][4] , \u_div/CryTmp[2][5] ,
         \u_div/CryTmp[2][6] , \u_div/CryTmp[3][1] , \u_div/CryTmp[3][2] ,
         \u_div/CryTmp[3][3] , \u_div/CryTmp[3][4] , \u_div/CryTmp[3][5] ,
         \u_div/CryTmp[4][1] , \u_div/CryTmp[4][2] , \u_div/CryTmp[4][3] ,
         \u_div/CryTmp[4][4] , \u_div/CryTmp[5][1] , \u_div/CryTmp[5][2] ,
         \u_div/CryTmp[5][3] , \u_div/CryTmp[6][1] , \u_div/CryTmp[6][2] ,
         \u_div/CryTmp[7][1] , \u_div/PartRem[1][1] , \u_div/PartRem[1][2] ,
         \u_div/PartRem[1][3] , \u_div/PartRem[1][4] , \u_div/PartRem[1][5] ,
         \u_div/PartRem[1][6] , \u_div/PartRem[1][7] , \u_div/PartRem[2][1] ,
         \u_div/PartRem[2][2] , \u_div/PartRem[2][3] , \u_div/PartRem[2][4] ,
         \u_div/PartRem[2][5] , \u_div/PartRem[2][6] , \u_div/PartRem[3][1] ,
         \u_div/PartRem[3][2] , \u_div/PartRem[3][3] , \u_div/PartRem[3][4] ,
         \u_div/PartRem[3][5] , \u_div/PartRem[4][1] , \u_div/PartRem[4][2] ,
         \u_div/PartRem[4][3] , \u_div/PartRem[4][4] , \u_div/PartRem[5][1] ,
         \u_div/PartRem[5][2] , \u_div/PartRem[5][3] , \u_div/PartRem[6][1] ,
         \u_div/PartRem[6][2] , \u_div/PartRem[7][1] , n1, n4, n5, n7, n8, n9,
         n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24;

  ADDFX2M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(n16), 
        .CI(\u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_1_6  ( .A(\u_div/PartRem[2][6] ), .B(n15), 
        .CI(\u_div/CryTmp[1][6] ), .CO(\u_div/CryTmp[1][7] ), .S(
        \u_div/SumTmp[1][6] ) );
  ADDFX4M \u_div/u_fa_PartRem_0_2_5  ( .A(\u_div/PartRem[3][5] ), .B(n16), 
        .CI(\u_div/CryTmp[2][5] ), .CO(\u_div/CryTmp[2][6] ), .S(
        \u_div/SumTmp[2][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_6  ( .A(\u_div/PartRem[1][6] ), .B(n15), 
        .CI(\u_div/CryTmp[0][6] ), .CO(\u_div/CryTmp[0][7] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_7  ( .A(\u_div/PartRem[1][7] ), .B(n14), 
        .CI(\u_div/CryTmp[0][7] ), .CO(quotient[0]) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_2  ( .A(\u_div/PartRem[5][2] ), .B(n19), 
        .CI(\u_div/CryTmp[4][2] ), .CO(\u_div/CryTmp[4][3] ), .S(
        \u_div/SumTmp[4][2] ) );
  ADDFX4M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(n16), 
        .CI(\u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), .S(
        \u_div/SumTmp[1][5] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(n18), 
        .CI(\u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_2_3  ( .A(\u_div/PartRem[3][3] ), .B(n18), 
        .CI(\u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFHX2M \u_div/u_fa_PartRem_0_6_1  ( .A(\u_div/PartRem[7][1] ), .B(n20), 
        .CI(\u_div/CryTmp[6][1] ), .CO(\u_div/CryTmp[6][2] ), .S(
        \u_div/SumTmp[6][1] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_2_1  ( .A(\u_div/PartRem[3][1] ), .B(n20), 
        .CI(\u_div/CryTmp[2][1] ), .CO(\u_div/CryTmp[2][2] ), .S(
        \u_div/SumTmp[2][1] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_2_2  ( .A(\u_div/PartRem[3][2] ), .B(n19), 
        .CI(\u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), .S(
        \u_div/SumTmp[2][2] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_3_1  ( .A(\u_div/PartRem[4][1] ), .B(n20), 
        .CI(\u_div/CryTmp[3][1] ), .CO(\u_div/CryTmp[3][2] ), .S(
        \u_div/SumTmp[3][1] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_3_2  ( .A(n4), .B(n19), .CI(
        \u_div/CryTmp[3][2] ), .CO(\u_div/CryTmp[3][3] ), .S(
        \u_div/SumTmp[3][2] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_4_1  ( .A(\u_div/PartRem[5][1] ), .B(n20), 
        .CI(\u_div/CryTmp[4][1] ), .CO(\u_div/CryTmp[4][2] ), .S(
        \u_div/SumTmp[4][1] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_3_3  ( .A(\u_div/PartRem[4][3] ), .B(n18), 
        .CI(\u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_4_3  ( .A(\u_div/PartRem[5][3] ), .B(n18), 
        .CI(\u_div/CryTmp[4][3] ), .CO(\u_div/CryTmp[4][4] ), .S(
        \u_div/SumTmp[4][3] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_0_1  ( .A(\u_div/PartRem[1][1] ), .B(n20), 
        .CI(\u_div/CryTmp[0][1] ), .CO(\u_div/CryTmp[0][2] ) );
  ADDFX4M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(n19), 
        .CI(\u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_5_2  ( .A(\u_div/PartRem[6][2] ), .B(n19), 
        .CI(\u_div/CryTmp[5][2] ), .CO(\u_div/CryTmp[5][3] ), .S(
        \u_div/SumTmp[5][2] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_5_1  ( .A(\u_div/PartRem[6][1] ), .B(n20), 
        .CI(\u_div/CryTmp[5][1] ), .CO(\u_div/CryTmp[5][2] ), .S(
        \u_div/SumTmp[5][1] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(n18), 
        .CI(\u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), .S(
        \u_div/SumTmp[1][3] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_1_2  ( .A(\u_div/PartRem[2][2] ), .B(n19), 
        .CI(\u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), .S(
        \u_div/SumTmp[1][2] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_1_1  ( .A(\u_div/PartRem[2][1] ), .B(n20), 
        .CI(\u_div/CryTmp[1][1] ), .CO(\u_div/CryTmp[1][2] ), .S(
        \u_div/SumTmp[1][1] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_3_4  ( .A(\u_div/PartRem[4][4] ), .B(n17), 
        .CI(\u_div/CryTmp[3][4] ), .CO(\u_div/CryTmp[3][5] ), .S(
        \u_div/SumTmp[3][4] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(n17), 
        .CI(\u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), .S(
        \u_div/SumTmp[1][4] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_2_4  ( .A(\u_div/PartRem[3][4] ), .B(n17), 
        .CI(\u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(n17), 
        .CI(\u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] ) );
  INVX20M U1 ( .A(b[4]), .Y(n17) );
  INVX32M U2 ( .A(b[0]), .Y(n21) );
  BUFX18M U3 ( .A(\u_div/PartRem[4][2] ), .Y(n4) );
  CLKMX2X6M U4 ( .A(\u_div/PartRem[5][1] ), .B(\u_div/SumTmp[4][1] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][2] ) );
  MX2X6M U5 ( .A(a[5]), .B(\u_div/SumTmp[5][0] ), .S0(quotient[5]), .Y(
        \u_div/PartRem[5][1] ) );
  MX2X4M U6 ( .A(a[4]), .B(\u_div/SumTmp[4][0] ), .S0(n25), .Y(
        \u_div/PartRem[4][1] ) );
  MX2X3M U7 ( .A(a[3]), .B(\u_div/SumTmp[3][0] ), .S0(quotient[3]), .Y(
        \u_div/PartRem[3][1] ) );
  NAND2X2M U8 ( .A(\u_div/SumTmp[6][0] ), .B(quotient[6]), .Y(n10) );
  INVX12M U9 ( .A(b[1]), .Y(n20) );
  BUFX18M U10 ( .A(n26), .Y(quotient[2]) );
  BUFX10M U11 ( .A(n25), .Y(quotient[4]) );
  BUFX16M U12 ( .A(n13), .Y(quotient[5]) );
  MX2X2M U13 ( .A(\u_div/PartRem[5][2] ), .B(\u_div/SumTmp[4][2] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][3] ) );
  AND2X2M U14 ( .A(\u_div/CryTmp[4][4] ), .B(n23), .Y(n25) );
  MX2X2M U15 ( .A(\u_div/PartRem[4][1] ), .B(\u_div/SumTmp[3][1] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][2] ) );
  MX2X2M U16 ( .A(\u_div/PartRem[7][1] ), .B(\u_div/SumTmp[6][1] ), .S0(
        quotient[6]), .Y(\u_div/PartRem[6][2] ) );
  MX2X2M U17 ( .A(\u_div/PartRem[2][2] ), .B(\u_div/SumTmp[1][2] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][3] ) );
  MX2X2M U18 ( .A(\u_div/PartRem[4][3] ), .B(\u_div/SumTmp[3][3] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][4] ) );
  MX2X6M U19 ( .A(a[7]), .B(\u_div/SumTmp[7][0] ), .S0(quotient[7]), .Y(
        \u_div/PartRem[7][1] ) );
  CLKINVX32M U20 ( .A(n5), .Y(quotient[7]) );
  MX2X6M U21 ( .A(a[2]), .B(\u_div/SumTmp[2][0] ), .S0(quotient[2]), .Y(
        \u_div/PartRem[2][1] ) );
  CLKMX2X12M U22 ( .A(\u_div/PartRem[3][1] ), .B(\u_div/SumTmp[2][1] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][2] ) );
  MX2XLM U23 ( .A(\u_div/PartRem[2][3] ), .B(\u_div/SumTmp[1][3] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][4] ) );
  MX2X1M U24 ( .A(\u_div/PartRem[3][2] ), .B(\u_div/SumTmp[2][2] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][3] ) );
  BUFX24M U25 ( .A(n24), .Y(n1) );
  AND2X1M U26 ( .A(\u_div/CryTmp[5][3] ), .B(n22), .Y(n13) );
  CLKAND2X6M U27 ( .A(\u_div/CryTmp[2][6] ), .B(n1), .Y(n26) );
  MX2X4M U28 ( .A(a[1]), .B(\u_div/SumTmp[1][0] ), .S0(quotient[1]), .Y(
        \u_div/PartRem[1][1] ) );
  AND2X12M U29 ( .A(\u_div/CryTmp[1][7] ), .B(n14), .Y(quotient[1]) );
  AND2X12M U30 ( .A(\u_div/CryTmp[6][2] ), .B(n12), .Y(quotient[6]) );
  OR2X12M U31 ( .A(a[7]), .B(n21), .Y(\u_div/CryTmp[7][1] ) );
  XNOR2X2M U32 ( .A(n21), .B(a[7]), .Y(\u_div/SumTmp[7][0] ) );
  OR2X1M U33 ( .A(a[5]), .B(n21), .Y(\u_div/CryTmp[5][1] ) );
  INVX8M U34 ( .A(b[3]), .Y(n18) );
  AND3X12M U35 ( .A(n1), .B(n17), .C(n16), .Y(n23) );
  NAND2X12M U36 ( .A(n22), .B(n11), .Y(n5) );
  MX2X6M U37 ( .A(\u_div/PartRem[6][1] ), .B(\u_div/SumTmp[5][1] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][2] ) );
  AND2X12M U38 ( .A(\u_div/CryTmp[3][5] ), .B(n7), .Y(quotient[3]) );
  CLKNAND2X4M U39 ( .A(a[6]), .B(n8), .Y(n9) );
  NAND2X8M U40 ( .A(n9), .B(n10), .Y(\u_div/PartRem[6][1] ) );
  MX2X1M U41 ( .A(n4), .B(\u_div/SumTmp[3][2] ), .S0(quotient[3]), .Y(
        \u_div/PartRem[3][3] ) );
  INVX24M U42 ( .A(b[5]), .Y(n16) );
  AND2X1M U43 ( .A(n1), .B(n16), .Y(n7) );
  MX2X4M U44 ( .A(\u_div/PartRem[4][4] ), .B(\u_div/SumTmp[3][4] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][5] ) );
  AND3X4M U45 ( .A(\u_div/CryTmp[7][1] ), .B(n20), .C(n19), .Y(n11) );
  AND2X1M U46 ( .A(n22), .B(n19), .Y(n12) );
  INVX4M U47 ( .A(quotient[6]), .Y(n8) );
  AND2X12M U48 ( .A(n23), .B(n18), .Y(n22) );
  INVX20M U49 ( .A(b[2]), .Y(n19) );
  MX2X1M U50 ( .A(\u_div/PartRem[3][4] ), .B(\u_div/SumTmp[2][4] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][5] ) );
  OR2X1M U51 ( .A(a[0]), .B(n21), .Y(\u_div/CryTmp[0][1] ) );
  NOR2X12M U52 ( .A(b[6]), .B(b[7]), .Y(n24) );
  MX2X1M U53 ( .A(\u_div/PartRem[6][2] ), .B(\u_div/SumTmp[5][2] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][3] ) );
  MX2X1M U54 ( .A(\u_div/PartRem[5][3] ), .B(\u_div/SumTmp[4][3] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][4] ) );
  MX2X1M U55 ( .A(\u_div/PartRem[3][5] ), .B(\u_div/SumTmp[2][5] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][6] ) );
  XNOR2X1M U56 ( .A(n21), .B(a[3]), .Y(\u_div/SumTmp[3][0] ) );
  XNOR2X1M U57 ( .A(n21), .B(a[6]), .Y(\u_div/SumTmp[6][0] ) );
  XNOR2X1M U58 ( .A(n21), .B(a[5]), .Y(\u_div/SumTmp[5][0] ) );
  XNOR2X1M U59 ( .A(n21), .B(a[2]), .Y(\u_div/SumTmp[2][0] ) );
  XNOR2X1M U60 ( .A(n21), .B(a[4]), .Y(\u_div/SumTmp[4][0] ) );
  OR2X1M U61 ( .A(a[6]), .B(n21), .Y(\u_div/CryTmp[6][1] ) );
  XNOR2X1M U62 ( .A(n21), .B(a[1]), .Y(\u_div/SumTmp[1][0] ) );
  CLKINVX1M U63 ( .A(b[7]), .Y(n14) );
  OR2X2M U64 ( .A(a[4]), .B(n21), .Y(\u_div/CryTmp[4][1] ) );
  OR2X2M U65 ( .A(a[3]), .B(n21), .Y(\u_div/CryTmp[3][1] ) );
  OR2X2M U66 ( .A(a[1]), .B(n21), .Y(\u_div/CryTmp[1][1] ) );
  OR2X2M U67 ( .A(a[2]), .B(n21), .Y(\u_div/CryTmp[2][1] ) );
  INVX2M U68 ( .A(b[6]), .Y(n15) );
  CLKMX2X2M U69 ( .A(\u_div/PartRem[2][6] ), .B(\u_div/SumTmp[1][6] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][7] ) );
  CLKMX2X2M U70 ( .A(\u_div/PartRem[2][5] ), .B(\u_div/SumTmp[1][5] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][6] ) );
  CLKMX2X2M U71 ( .A(\u_div/PartRem[2][4] ), .B(\u_div/SumTmp[1][4] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][5] ) );
  CLKMX2X2M U72 ( .A(\u_div/PartRem[3][3] ), .B(\u_div/SumTmp[2][3] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][4] ) );
  CLKMX2X2M U73 ( .A(\u_div/PartRem[2][1] ), .B(\u_div/SumTmp[1][1] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][2] ) );
endmodule


module ALU_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8;
  wire   [9:0] carry;

  ADDFX2M U2_7 ( .A(A[7]), .B(n1), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFX2M U2_5 ( .A(A[5]), .B(n3), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX2M U2_4 ( .A(A[4]), .B(n4), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX2M U2_3 ( .A(A[3]), .B(n5), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2M U2_2 ( .A(A[2]), .B(n6), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2M U2_1 ( .A(A[1]), .B(n7), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2M U2_6 ( .A(A[6]), .B(n2), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  CLKINVX1M U1 ( .A(B[0]), .Y(n8) );
  INVXLM U2 ( .A(B[1]), .Y(n7) );
  INVXLM U3 ( .A(B[4]), .Y(n4) );
  INVXLM U4 ( .A(B[5]), .Y(n3) );
  INVXLM U5 ( .A(B[2]), .Y(n6) );
  INVXLM U6 ( .A(B[3]), .Y(n5) );
  INVXLM U7 ( .A(B[7]), .Y(n1) );
  INVX2M U8 ( .A(B[6]), .Y(n2) );
  XNOR2X2M U9 ( .A(n8), .B(A[0]), .Y(DIFF[0]) );
  OR2X2M U10 ( .A(A[0]), .B(n8), .Y(carry[1]) );
  CLKINVX1M U11 ( .A(carry[8]), .Y(DIFF[8]) );
endmodule


module ALU_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [8:1] carry;

  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1M U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module ALU_DW01_add_1 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26;

  OAI21BX4M U2 ( .A0(n19), .A1(n20), .B0N(n21), .Y(n17) );
  AOI2BB1X2M U3 ( .A0N(n8), .A1N(n11), .B0(n10), .Y(n24) );
  NOR2X2M U4 ( .A(B[8]), .B(A[8]), .Y(n14) );
  NOR2X2M U5 ( .A(B[9]), .B(A[9]), .Y(n11) );
  NOR2X2M U6 ( .A(B[10]), .B(A[10]), .Y(n23) );
  NOR2X2M U7 ( .A(B[11]), .B(A[11]), .Y(n19) );
  CLKXOR2X2M U8 ( .A(B[13]), .B(n16), .Y(SUM[13]) );
  NAND2X2M U9 ( .A(A[7]), .B(B[7]), .Y(n13) );
  CLKXOR2X2M U10 ( .A(A[7]), .B(B[7]), .Y(SUM[7]) );
  INVX2M U11 ( .A(A[6]), .Y(n7) );
  INVX2M U12 ( .A(n7), .Y(SUM[6]) );
  BUFX2M U13 ( .A(A[0]), .Y(SUM[0]) );
  BUFX2M U14 ( .A(A[1]), .Y(SUM[1]) );
  BUFX2M U15 ( .A(A[2]), .Y(SUM[2]) );
  BUFX2M U16 ( .A(A[3]), .Y(SUM[3]) );
  BUFX2M U17 ( .A(A[4]), .Y(SUM[4]) );
  BUFX2M U18 ( .A(A[5]), .Y(SUM[5]) );
  XNOR2X1M U19 ( .A(n8), .B(n9), .Y(SUM[9]) );
  NOR2X1M U20 ( .A(n10), .B(n11), .Y(n9) );
  CLKXOR2X2M U21 ( .A(n12), .B(n13), .Y(SUM[8]) );
  NAND2BX1M U22 ( .AN(n14), .B(n15), .Y(n12) );
  OAI2BB1X1M U23 ( .A0N(n17), .A1N(A[12]), .B0(n18), .Y(n16) );
  OAI21X1M U24 ( .A0(A[12]), .A1(n17), .B0(B[12]), .Y(n18) );
  XOR3XLM U25 ( .A(B[12]), .B(A[12]), .C(n17), .Y(SUM[12]) );
  XNOR2X1M U26 ( .A(n20), .B(n22), .Y(SUM[11]) );
  NOR2X1M U27 ( .A(n21), .B(n19), .Y(n22) );
  AND2X1M U28 ( .A(B[11]), .B(A[11]), .Y(n21) );
  OA21X1M U29 ( .A0(n23), .A1(n24), .B0(n25), .Y(n20) );
  CLKXOR2X2M U30 ( .A(n26), .B(n24), .Y(SUM[10]) );
  AND2X1M U31 ( .A(B[9]), .B(A[9]), .Y(n10) );
  OA21X1M U32 ( .A0(n13), .A1(n14), .B0(n15), .Y(n8) );
  CLKNAND2X2M U33 ( .A(B[8]), .B(A[8]), .Y(n15) );
  NAND2BX1M U34 ( .AN(n23), .B(n25), .Y(n26) );
  CLKNAND2X2M U35 ( .A(B[10]), .B(A[10]), .Y(n25) );
endmodule


module ALU_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [7:0] A;
  input [7:0] B;
  output [15:0] PRODUCT;
  input TC;
  wire   \ab[7][7] , \ab[7][6] , \ab[7][5] , \ab[7][4] , \ab[7][3] ,
         \ab[7][2] , \ab[7][1] , \ab[7][0] , \ab[6][7] , \ab[6][6] ,
         \ab[6][5] , \ab[6][4] , \ab[6][3] , \ab[6][2] , \ab[6][1] ,
         \ab[6][0] , \ab[5][7] , \ab[5][6] , \ab[5][5] , \ab[5][4] ,
         \ab[5][3] , \ab[5][2] , \ab[5][1] , \ab[5][0] , \ab[4][7] ,
         \ab[4][6] , \ab[4][5] , \ab[4][4] , \ab[4][3] , \ab[4][2] ,
         \ab[4][1] , \ab[4][0] , \ab[3][7] , \ab[3][6] , \ab[3][5] ,
         \ab[3][4] , \ab[3][3] , \ab[3][2] , \ab[3][1] , \ab[3][0] ,
         \ab[2][7] , \ab[2][6] , \ab[2][5] , \ab[2][4] , \ab[2][3] ,
         \ab[2][2] , \ab[2][1] , \ab[2][0] , \ab[1][7] , \ab[1][6] ,
         \ab[1][5] , \ab[1][4] , \ab[1][3] , \ab[1][2] , \ab[1][1] ,
         \ab[1][0] , \ab[0][7] , \ab[0][6] , \ab[0][5] , \ab[0][4] ,
         \ab[0][3] , \ab[0][2] , \ab[0][1] , \CARRYB[7][6] , \CARRYB[7][5] ,
         \CARRYB[7][4] , \CARRYB[7][3] , \CARRYB[7][2] , \CARRYB[7][1] ,
         \CARRYB[7][0] , \CARRYB[6][6] , \CARRYB[6][5] , \CARRYB[6][4] ,
         \CARRYB[6][3] , \CARRYB[6][2] , \CARRYB[6][1] , \CARRYB[6][0] ,
         \CARRYB[5][6] , \CARRYB[5][5] , \CARRYB[5][4] , \CARRYB[5][3] ,
         \CARRYB[5][2] , \CARRYB[5][1] , \CARRYB[5][0] , \CARRYB[4][6] ,
         \CARRYB[4][5] , \CARRYB[4][4] , \CARRYB[4][3] , \CARRYB[4][2] ,
         \CARRYB[4][1] , \CARRYB[4][0] , \CARRYB[3][6] , \CARRYB[3][5] ,
         \CARRYB[3][4] , \CARRYB[3][3] , \CARRYB[3][2] , \CARRYB[3][1] ,
         \CARRYB[3][0] , \CARRYB[2][6] , \CARRYB[2][5] , \CARRYB[2][4] ,
         \CARRYB[2][3] , \CARRYB[2][2] , \CARRYB[2][1] , \CARRYB[2][0] ,
         \SUMB[7][6] , \SUMB[7][5] , \SUMB[7][4] , \SUMB[7][3] , \SUMB[7][2] ,
         \SUMB[7][1] , \SUMB[7][0] , \SUMB[6][6] , \SUMB[6][5] , \SUMB[6][4] ,
         \SUMB[6][3] , \SUMB[6][2] , \SUMB[6][1] , \SUMB[5][6] , \SUMB[5][5] ,
         \SUMB[5][4] , \SUMB[5][3] , \SUMB[5][2] , \SUMB[5][1] , \SUMB[4][6] ,
         \SUMB[4][5] , \SUMB[4][4] , \SUMB[4][3] , \SUMB[4][2] , \SUMB[4][1] ,
         \SUMB[3][6] , \SUMB[3][5] , \SUMB[3][4] , \SUMB[3][3] , \SUMB[3][2] ,
         \SUMB[3][1] , \SUMB[2][6] , \SUMB[2][5] , \SUMB[2][4] , \SUMB[2][3] ,
         \SUMB[2][2] , \SUMB[2][1] , \SUMB[1][6] , \SUMB[1][5] , \SUMB[1][4] ,
         \SUMB[1][3] , \SUMB[1][2] , \SUMB[1][1] , \A1[12] , \A1[11] ,
         \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \A1[4] , \A1[3] ,
         \A1[2] , \A1[1] , \A1[0] , n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32;

  ALU_DW01_add_1 FS_1 ( .A({1'b0, \A1[12] , \A1[11] , \A1[10] , \A1[9] , 
        \A1[8] , \A1[7] , \A1[6] , \SUMB[7][0] , \A1[4] , \A1[3] , \A1[2] , 
        \A1[1] , \A1[0] }), .B({n10, n16, n15, n14, n13, n12, n11, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(PRODUCT[15:2]) );
  ADDFX2M S5_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\ab[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  ADDFX2M S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\ab[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  ADDFX2M S4_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n9), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFX2M S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\ab[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  ADDFX2M S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\SUMB[7][0] ) );
  ADDFX2M S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  ADDFX2M S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  ADDFX2M S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  ADDFX2M S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  ADDFX2M S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFX2M S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  ADDFX2M S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  ADDFX2M S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n6), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDFX2M S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADDFX2M S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  ADDFX2M S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .CI(\SUMB[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADDFX2M S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  ADDFX2M S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  ADDFX2M S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .CI(\ab[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  ADDFX2M S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .CI(\ab[2][7] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  ADDFX2M S3_2_6 ( .A(\ab[2][6] ), .B(n8), .CI(\ab[1][7] ), .CO(\CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n5), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n4), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n7), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  ADDFX2M S4_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  ADDFX2M S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S4_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  ADDFX2M S4_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n3), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  AND2X2M U2 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n7) );
  AND2X2M U7 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n8) );
  AND2X2M U8 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n9) );
  AND2X2M U9 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(n10) );
  NOR2X2M U10 ( .A(n18), .B(n32), .Y(\ab[0][6] ) );
  NOR2X2M U11 ( .A(n18), .B(n31), .Y(\ab[1][6] ) );
  NOR2X2M U12 ( .A(n19), .B(n32), .Y(\ab[0][5] ) );
  NOR2X2M U13 ( .A(n20), .B(n32), .Y(\ab[0][4] ) );
  NOR2X2M U14 ( .A(n21), .B(n32), .Y(\ab[0][3] ) );
  NOR2X2M U15 ( .A(n20), .B(n31), .Y(\ab[1][4] ) );
  NOR2X2M U16 ( .A(n21), .B(n31), .Y(\ab[1][3] ) );
  NOR2X2M U17 ( .A(n22), .B(n31), .Y(\ab[1][2] ) );
  CLKXOR2X2M U18 ( .A(\ab[1][5] ), .B(\ab[0][6] ), .Y(\SUMB[1][5] ) );
  NOR2X2M U19 ( .A(n22), .B(n32), .Y(\ab[0][2] ) );
  NOR2X2M U20 ( .A(n23), .B(n32), .Y(\ab[0][1] ) );
  NOR2X2M U21 ( .A(n17), .B(n32), .Y(\ab[0][7] ) );
  NOR2X2M U22 ( .A(n23), .B(n31), .Y(\ab[1][1] ) );
  NOR2X2M U23 ( .A(n24), .B(n31), .Y(\ab[1][0] ) );
  NOR2X2M U24 ( .A(n19), .B(n31), .Y(\ab[1][5] ) );
  NOR2X2M U25 ( .A(n25), .B(n17), .Y(\ab[7][7] ) );
  CLKINVX4M U26 ( .A(A[4]), .Y(n28) );
  CLKINVX4M U27 ( .A(A[5]), .Y(n27) );
  CLKINVX4M U28 ( .A(A[6]), .Y(n26) );
  CLKINVX4M U29 ( .A(A[7]), .Y(n25) );
  CLKINVX4M U30 ( .A(B[2]), .Y(n22) );
  CLKINVX4M U31 ( .A(B[3]), .Y(n21) );
  CLKINVX4M U32 ( .A(B[4]), .Y(n20) );
  CLKINVX4M U33 ( .A(B[5]), .Y(n19) );
  CLKINVX4M U34 ( .A(B[0]), .Y(n24) );
  CLKINVX4M U35 ( .A(B[1]), .Y(n23) );
  CLKINVX4M U36 ( .A(B[7]), .Y(n17) );
  CLKXOR2X2M U37 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  CLKXOR2X2M U38 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  CLKXOR2X2M U39 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  INVX4M U40 ( .A(A[1]), .Y(n31) );
  AND2X2M U41 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n11) );
  AND2X2M U42 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n12) );
  INVX4M U43 ( .A(A[2]), .Y(n30) );
  AND2X2M U44 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n13) );
  CLKXOR2X2M U45 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  CLKXOR2X2M U46 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  INVX4M U47 ( .A(A[3]), .Y(n29) );
  AND2X2M U48 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n14) );
  AND2X2M U49 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n15) );
  CLKXOR2X2M U50 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  AND2X2M U51 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n16) );
  CLKXOR2X2M U52 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(\A1[6] ) );
  XOR2X1M U53 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Y(PRODUCT[1]) );
  XOR2X1M U54 ( .A(\ab[1][3] ), .B(\ab[0][4] ), .Y(\SUMB[1][3] ) );
  INVX4M U55 ( .A(B[6]), .Y(n18) );
  INVX4M U56 ( .A(A[0]), .Y(n32) );
  XOR2X1M U57 ( .A(\ab[1][6] ), .B(\ab[0][7] ), .Y(\SUMB[1][6] ) );
  XOR2X1M U58 ( .A(\ab[1][4] ), .B(\ab[0][5] ), .Y(\SUMB[1][4] ) );
  XOR2X1M U59 ( .A(\ab[1][2] ), .B(\ab[0][3] ), .Y(\SUMB[1][2] ) );
  XOR2X1M U60 ( .A(\ab[1][1] ), .B(\ab[0][2] ), .Y(\SUMB[1][1] ) );
  NOR2X1M U62 ( .A(n25), .B(n18), .Y(\ab[7][6] ) );
  NOR2X1M U63 ( .A(n25), .B(n19), .Y(\ab[7][5] ) );
  NOR2X1M U64 ( .A(n25), .B(n20), .Y(\ab[7][4] ) );
  NOR2X1M U65 ( .A(n25), .B(n21), .Y(\ab[7][3] ) );
  NOR2X1M U66 ( .A(n25), .B(n22), .Y(\ab[7][2] ) );
  NOR2X1M U67 ( .A(n25), .B(n23), .Y(\ab[7][1] ) );
  NOR2X1M U68 ( .A(n25), .B(n24), .Y(\ab[7][0] ) );
  NOR2X1M U69 ( .A(n17), .B(n26), .Y(\ab[6][7] ) );
  NOR2X1M U70 ( .A(n18), .B(n26), .Y(\ab[6][6] ) );
  NOR2X1M U71 ( .A(n19), .B(n26), .Y(\ab[6][5] ) );
  NOR2X1M U72 ( .A(n20), .B(n26), .Y(\ab[6][4] ) );
  NOR2X1M U73 ( .A(n21), .B(n26), .Y(\ab[6][3] ) );
  NOR2X1M U74 ( .A(n22), .B(n26), .Y(\ab[6][2] ) );
  NOR2X1M U75 ( .A(n23), .B(n26), .Y(\ab[6][1] ) );
  NOR2X1M U76 ( .A(n24), .B(n26), .Y(\ab[6][0] ) );
  NOR2X1M U77 ( .A(n17), .B(n27), .Y(\ab[5][7] ) );
  NOR2X1M U78 ( .A(n18), .B(n27), .Y(\ab[5][6] ) );
  NOR2X1M U79 ( .A(n19), .B(n27), .Y(\ab[5][5] ) );
  NOR2X1M U80 ( .A(n20), .B(n27), .Y(\ab[5][4] ) );
  NOR2X1M U81 ( .A(n21), .B(n27), .Y(\ab[5][3] ) );
  NOR2X1M U82 ( .A(n22), .B(n27), .Y(\ab[5][2] ) );
  NOR2X1M U83 ( .A(n23), .B(n27), .Y(\ab[5][1] ) );
  NOR2X1M U84 ( .A(n24), .B(n27), .Y(\ab[5][0] ) );
  NOR2X1M U85 ( .A(n17), .B(n28), .Y(\ab[4][7] ) );
  NOR2X1M U86 ( .A(n18), .B(n28), .Y(\ab[4][6] ) );
  NOR2X1M U87 ( .A(n19), .B(n28), .Y(\ab[4][5] ) );
  NOR2X1M U88 ( .A(n20), .B(n28), .Y(\ab[4][4] ) );
  NOR2X1M U89 ( .A(n21), .B(n28), .Y(\ab[4][3] ) );
  NOR2X1M U90 ( .A(n22), .B(n28), .Y(\ab[4][2] ) );
  NOR2X1M U91 ( .A(n23), .B(n28), .Y(\ab[4][1] ) );
  NOR2X1M U92 ( .A(n24), .B(n28), .Y(\ab[4][0] ) );
  NOR2X1M U93 ( .A(n17), .B(n29), .Y(\ab[3][7] ) );
  NOR2X1M U94 ( .A(n18), .B(n29), .Y(\ab[3][6] ) );
  NOR2X1M U95 ( .A(n19), .B(n29), .Y(\ab[3][5] ) );
  NOR2X1M U96 ( .A(n20), .B(n29), .Y(\ab[3][4] ) );
  NOR2X1M U97 ( .A(n21), .B(n29), .Y(\ab[3][3] ) );
  NOR2X1M U98 ( .A(n22), .B(n29), .Y(\ab[3][2] ) );
  NOR2X1M U99 ( .A(n23), .B(n29), .Y(\ab[3][1] ) );
  NOR2X1M U100 ( .A(n24), .B(n29), .Y(\ab[3][0] ) );
  NOR2X1M U101 ( .A(n17), .B(n30), .Y(\ab[2][7] ) );
  NOR2X1M U102 ( .A(n18), .B(n30), .Y(\ab[2][6] ) );
  NOR2X1M U103 ( .A(n19), .B(n30), .Y(\ab[2][5] ) );
  NOR2X1M U104 ( .A(n20), .B(n30), .Y(\ab[2][4] ) );
  NOR2X1M U105 ( .A(n21), .B(n30), .Y(\ab[2][3] ) );
  NOR2X1M U106 ( .A(n22), .B(n30), .Y(\ab[2][2] ) );
  NOR2X1M U107 ( .A(n23), .B(n30), .Y(\ab[2][1] ) );
  NOR2X1M U108 ( .A(n24), .B(n30), .Y(\ab[2][0] ) );
  NOR2X1M U109 ( .A(n17), .B(n31), .Y(\ab[1][7] ) );
  NOR2X1M U110 ( .A(n24), .B(n32), .Y(PRODUCT[0]) );
endmodule


module ALU ( A, B, EN, ALU_FUN, CLK, RST, ALU_OUT, OUT_VALID );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_FUN;
  output [15:0] ALU_OUT;
  input EN, CLK, RST;
  output OUT_VALID;
  wire   N91, N92, N93, N94, N95, N96, N97, N98, N99, N100, N101, N102, N103,
         N104, N105, N106, N107, N108, N109, N110, N111, N112, N113, N114,
         N115, N116, N117, N118, N119, N120, N121, N122, N123, N124, N125,
         N126, N127, N128, N129, N130, N131, N132, N157, N159, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n43, n44, n45, n46, n47, n48, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n41, n42, n49, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126,
         n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137,
         n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148,
         n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168;
  wire   [15:0] ALU_OUT_Comb;

  OAI2BB1X4M U77 ( .A0N(n100), .A1N(n99), .B0(n101), .Y(n48) );
  ALU_DW_div_uns_0 div_52 ( .a({n49, A[6], n28, n26, n23, n20, n17, n15}), .b(
        {B[7], n14, B[5:0]}), .quotient({N132, N131, N130, N129, N128, N127, 
        N126, N125}) );
  ALU_DW01_sub_0 sub_46 ( .A({1'b0, n49, n41, n28, n26, n23, n20, n17, n15}), 
        .B({1'b0, B[7], n12, B[5:0]}), .CI(1'b0), .DIFF({N108, N107, N106, 
        N105, N104, N103, N102, N101, N100}) );
  ALU_DW01_add_0 add_43 ( .A({1'b0, n49, A[6], n28, n26, n23, n20, n17, n15}), 
        .B({1'b0, B[7], n12, B[5:0]}), .CI(1'b0), .SUM({N99, N98, N97, N96, 
        N95, N94, N93, N92, N91}) );
  ALU_DW02_mult_0 mult_49 ( .A({n49, n41, n28, n26, n23, n20, n17, n15}), .B({
        B[7], n12, B[5:0]}), .TC(1'b0), .PRODUCT({N124, N123, N122, N121, N120, 
        N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109}) );
  DFFRQX2M \ALU_OUT_reg[7]  ( .D(ALU_OUT_Comb[7]), .CK(CLK), .RN(n117), .Q(
        ALU_OUT[7]) );
  DFFRQX2M \ALU_OUT_reg[6]  ( .D(ALU_OUT_Comb[6]), .CK(CLK), .RN(n117), .Q(
        ALU_OUT[6]) );
  DFFRQX2M \ALU_OUT_reg[5]  ( .D(ALU_OUT_Comb[5]), .CK(CLK), .RN(n117), .Q(
        ALU_OUT[5]) );
  DFFRQX2M \ALU_OUT_reg[4]  ( .D(ALU_OUT_Comb[4]), .CK(CLK), .RN(n117), .Q(
        ALU_OUT[4]) );
  DFFRQX2M \ALU_OUT_reg[3]  ( .D(ALU_OUT_Comb[3]), .CK(CLK), .RN(n118), .Q(
        ALU_OUT[3]) );
  DFFRQX2M \ALU_OUT_reg[2]  ( .D(ALU_OUT_Comb[2]), .CK(CLK), .RN(n118), .Q(
        ALU_OUT[2]) );
  DFFRQX2M \ALU_OUT_reg[1]  ( .D(ALU_OUT_Comb[1]), .CK(CLK), .RN(n118), .Q(
        ALU_OUT[1]) );
  DFFRQX2M \ALU_OUT_reg[15]  ( .D(ALU_OUT_Comb[15]), .CK(CLK), .RN(n117), .Q(
        ALU_OUT[15]) );
  DFFRQX2M \ALU_OUT_reg[14]  ( .D(ALU_OUT_Comb[14]), .CK(CLK), .RN(n117), .Q(
        ALU_OUT[14]) );
  DFFRQX2M \ALU_OUT_reg[13]  ( .D(ALU_OUT_Comb[13]), .CK(CLK), .RN(n117), .Q(
        ALU_OUT[13]) );
  DFFRQX2M \ALU_OUT_reg[12]  ( .D(ALU_OUT_Comb[12]), .CK(CLK), .RN(n117), .Q(
        ALU_OUT[12]) );
  DFFRQX2M \ALU_OUT_reg[11]  ( .D(ALU_OUT_Comb[11]), .CK(CLK), .RN(n117), .Q(
        ALU_OUT[11]) );
  DFFRQX2M \ALU_OUT_reg[10]  ( .D(ALU_OUT_Comb[10]), .CK(CLK), .RN(n117), .Q(
        ALU_OUT[10]) );
  DFFRQX2M \ALU_OUT_reg[9]  ( .D(ALU_OUT_Comb[9]), .CK(CLK), .RN(n117), .Q(
        ALU_OUT[9]) );
  DFFRQX2M \ALU_OUT_reg[8]  ( .D(ALU_OUT_Comb[8]), .CK(CLK), .RN(n117), .Q(
        ALU_OUT[8]) );
  DFFRQX2M OUT_VALID_reg ( .D(EN), .CK(CLK), .RN(n118), .Q(OUT_VALID) );
  DFFRQX1M \ALU_OUT_reg[0]  ( .D(ALU_OUT_Comb[0]), .CK(CLK), .RN(n118), .Q(
        ALU_OUT[0]) );
  BUFX6M U3 ( .A(B[6]), .Y(n14) );
  INVX6M U4 ( .A(EN), .Y(n168) );
  AOI31X2M U7 ( .A0(n81), .A1(n82), .A2(n83), .B0(n168), .Y(ALU_OUT_Comb[1])
         );
  AND3X2M U8 ( .A(n9), .B(n10), .C(n11), .Y(n82) );
  CLKAND2X4M U9 ( .A(ALU_FUN[1]), .B(n4), .Y(n3) );
  AND2X2M U10 ( .A(n105), .B(n7), .Y(n4) );
  INVX4M U11 ( .A(A[5]), .Y(n27) );
  CLKINVX20M U12 ( .A(n42), .Y(n49) );
  OR2X2M U13 ( .A(n107), .B(n164), .Y(n5) );
  NAND2X2M U14 ( .A(n99), .B(n105), .Y(n6) );
  AOI2B1X1M U15 ( .A1N(n144), .A0(n143), .B0(n142), .Y(n145) );
  INVX2M U16 ( .A(n145), .Y(n153) );
  INVX2M U17 ( .A(ALU_FUN[1]), .Y(n166) );
  INVX4M U18 ( .A(A[4]), .Y(n25) );
  INVX2M U19 ( .A(A[6]), .Y(n30) );
  INVX2M U20 ( .A(B[2]), .Y(n149) );
  INVX2M U21 ( .A(B[3]), .Y(n151) );
  BUFX4M U22 ( .A(B[6]), .Y(n12) );
  XNOR2X4M U23 ( .A(n41), .B(n12), .Y(n139) );
  OAI31X2M U24 ( .A0(n132), .A1(n123), .A2(n122), .B0(n133), .Y(n125) );
  AOI211X2M U25 ( .A0(n18), .A1(n148), .B0(n129), .C0(n121), .Y(n122) );
  NOR2X2M U26 ( .A(n146), .B(B[7]), .Y(n142) );
  AOI211X2M U27 ( .A0(n130), .A1(n161), .B0(n129), .C0(n128), .Y(n131) );
  NAND2BX2M U28 ( .AN(n123), .B(n134), .Y(n129) );
  OAI21X2M U29 ( .A0(n142), .A1(n127), .B0(n143), .Y(N159) );
  INVXLM U30 ( .A(ALU_FUN[2]), .Y(n7) );
  AND3X6M U31 ( .A(n93), .B(n94), .C(n95), .Y(n8) );
  NOR2X8M U32 ( .A(n8), .B(n168), .Y(ALU_OUT_Comb[0]) );
  NAND2XLM U33 ( .A(N126), .B(n3), .Y(n9) );
  NAND2X2M U34 ( .A(n112), .B(n161), .Y(n10) );
  NAND2X2M U35 ( .A(n18), .B(n110), .Y(n11) );
  NOR2X2M U36 ( .A(n149), .B(n21), .Y(n123) );
  NOR2X2M U37 ( .A(n147), .B(n15), .Y(n120) );
  NOR2X2M U38 ( .A(n151), .B(n24), .Y(n132) );
  NAND2X1M U39 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n107) );
  INVX8M U40 ( .A(A[7]), .Y(n42) );
  NOR2X2M U41 ( .A(n13), .B(ALU_FUN[0]), .Y(n100) );
  NAND3X4M U42 ( .A(n167), .B(n163), .C(n13), .Y(n36) );
  BUFX6M U43 ( .A(A[0]), .Y(n15) );
  OAI21X1M U44 ( .A0(B[0]), .A1(n102), .B0(n103), .Y(n96) );
  OAI21X1M U45 ( .A0(B[1]), .A1(n87), .B0(n88), .Y(n84) );
  CLKINVX1M U46 ( .A(B[0]), .Y(n147) );
  INVXLM U47 ( .A(B[4]), .Y(n157) );
  INVXLM U48 ( .A(B[5]), .Y(n156) );
  INVXLM U49 ( .A(B[7]), .Y(n155) );
  CLKBUFX6M U50 ( .A(ALU_FUN[3]), .Y(n13) );
  NAND2X1M U51 ( .A(B[7]), .B(n146), .Y(n143) );
  OAI2BB1X2M U52 ( .A0N(N124), .A1N(n31), .B0(n32), .Y(ALU_OUT_Comb[15]) );
  OAI2BB1X2M U53 ( .A0N(N123), .A1N(n31), .B0(n32), .Y(ALU_OUT_Comb[14]) );
  OAI2BB1X2M U54 ( .A0N(N122), .A1N(n31), .B0(n32), .Y(ALU_OUT_Comb[13]) );
  OAI2BB1X2M U55 ( .A0N(N121), .A1N(n31), .B0(n32), .Y(ALU_OUT_Comb[12]) );
  OAI2BB1X2M U56 ( .A0N(N119), .A1N(n31), .B0(n32), .Y(ALU_OUT_Comb[10]) );
  OAI2BB1X2M U57 ( .A0N(N120), .A1N(n31), .B0(n32), .Y(ALU_OUT_Comb[11]) );
  OAI2BB1X2M U58 ( .A0N(N118), .A1N(n31), .B0(n32), .Y(ALU_OUT_Comb[9]) );
  INVX4M U59 ( .A(n6), .Y(n110) );
  INVX4M U60 ( .A(n6), .Y(n111) );
  INVX4M U61 ( .A(n5), .Y(n113) );
  INVX4M U62 ( .A(n5), .Y(n112) );
  AOI31X2M U63 ( .A0(n51), .A1(n52), .A2(n53), .B0(n168), .Y(ALU_OUT_Comb[6])
         );
  AOI22X1M U64 ( .A0(N106), .A1(n50), .B0(N97), .B1(n108), .Y(n51) );
  AOI221X2M U65 ( .A0(n165), .A1(A[7]), .B0(n113), .B1(n158), .C0(n54), .Y(n53) );
  AOI222X2M U66 ( .A0(N115), .A1(n109), .B0(n110), .B1(n41), .C0(N131), .C1(n3), .Y(n52) );
  NAND2X4M U67 ( .A(EN), .B(n154), .Y(n32) );
  INVX2M U68 ( .A(n107), .Y(n167) );
  CLKBUFX6M U69 ( .A(n47), .Y(n116) );
  OAI2BB1X2M U70 ( .A0N(n167), .A1N(n105), .B0(n101), .Y(n47) );
  BUFX4M U71 ( .A(n46), .Y(n114) );
  BUFX4M U72 ( .A(n46), .Y(n115) );
  NOR2BX8M U73 ( .AN(n109), .B(n168), .Y(n31) );
  CLKAND2X6M U74 ( .A(n106), .B(n105), .Y(n50) );
  INVX4M U75 ( .A(n91), .Y(n165) );
  INVX2M U76 ( .A(n100), .Y(n164) );
  CLKBUFX6M U78 ( .A(n37), .Y(n108) );
  NOR2BX2M U79 ( .AN(n106), .B(n164), .Y(n37) );
  INVX2M U80 ( .A(n49), .Y(n146) );
  INVX4M U81 ( .A(n18), .Y(n161) );
  INVX2M U82 ( .A(n21), .Y(n160) );
  INVX2M U83 ( .A(n24), .Y(n159) );
  INVX2M U84 ( .A(n41), .Y(n158) );
  INVX6M U85 ( .A(n119), .Y(n117) );
  INVX4M U86 ( .A(n119), .Y(n118) );
  AOI22X1M U87 ( .A0(N100), .A1(n50), .B0(N91), .B1(n108), .Y(n93) );
  AOI211X2M U88 ( .A0(n113), .A1(n162), .B0(n96), .C0(n97), .Y(n95) );
  AOI222X2M U89 ( .A0(N109), .A1(n109), .B0(n15), .B1(n111), .C0(N125), .C1(n3), .Y(n94) );
  AOI222X2M U90 ( .A0(N92), .A1(n108), .B0(N110), .B1(n109), .C0(N101), .C1(
        n50), .Y(n81) );
  AOI211X2M U91 ( .A0(n21), .A1(n165), .B0(n84), .C0(n85), .Y(n83) );
  AOI31X2M U92 ( .A0(n75), .A1(n76), .A2(n77), .B0(n168), .Y(ALU_OUT_Comb[2])
         );
  AOI22X1M U93 ( .A0(N102), .A1(n50), .B0(N93), .B1(n108), .Y(n75) );
  AOI221X2M U94 ( .A0(n24), .A1(n165), .B0(n113), .B1(n160), .C0(n78), .Y(n77)
         );
  AOI222X2M U95 ( .A0(N111), .A1(n109), .B0(n21), .B1(n110), .C0(N127), .C1(n3), .Y(n76) );
  INVX4M U96 ( .A(n27), .Y(n28) );
  INVX4M U97 ( .A(n16), .Y(n17) );
  INVX4M U98 ( .A(n25), .Y(n26) );
  INVX4M U99 ( .A(n19), .Y(n20) );
  AOI31X2M U100 ( .A0(n69), .A1(n70), .A2(n71), .B0(n168), .Y(ALU_OUT_Comb[3])
         );
  AOI22X1M U101 ( .A0(N103), .A1(n50), .B0(N94), .B1(n108), .Y(n69) );
  AOI221X2M U102 ( .A0(A[4]), .A1(n165), .B0(n113), .B1(n159), .C0(n72), .Y(
        n71) );
  AOI222X2M U103 ( .A0(N112), .A1(n109), .B0(n24), .B1(n111), .C0(N128), .C1(
        n3), .Y(n70) );
  INVX4M U104 ( .A(n22), .Y(n23) );
  INVX2M U105 ( .A(n12), .Y(n152) );
  AOI31X2M U106 ( .A0(n63), .A1(n64), .A2(n65), .B0(n168), .Y(ALU_OUT_Comb[4])
         );
  AOI22X1M U107 ( .A0(N104), .A1(n50), .B0(N95), .B1(n108), .Y(n63) );
  AOI221X2M U108 ( .A0(n165), .A1(n29), .B0(n113), .B1(n25), .C0(n66), .Y(n65)
         );
  AOI222X2M U109 ( .A0(N113), .A1(n109), .B0(A[4]), .B1(n110), .C0(N129), .C1(
        n3), .Y(n64) );
  AND4X1M U110 ( .A(N159), .B(n99), .C(n13), .D(n163), .Y(n90) );
  INVX4M U111 ( .A(n19), .Y(n21) );
  INVX4M U112 ( .A(ALU_FUN[0]), .Y(n163) );
  NOR2X4M U113 ( .A(n163), .B(n13), .Y(n105) );
  AOI31X2M U114 ( .A0(n57), .A1(n58), .A2(n59), .B0(n168), .Y(ALU_OUT_Comb[5])
         );
  AOI22X1M U115 ( .A0(N105), .A1(n50), .B0(N96), .B1(n108), .Y(n57) );
  AOI221X2M U116 ( .A0(n165), .A1(n41), .B0(n113), .B1(n27), .C0(n60), .Y(n59)
         );
  AOI222X2M U117 ( .A0(N114), .A1(n109), .B0(n29), .B1(n111), .C0(N130), .C1(
        n3), .Y(n58) );
  AOI31X2M U118 ( .A0(n38), .A1(n39), .A2(n40), .B0(n168), .Y(ALU_OUT_Comb[7])
         );
  AOI22X1M U119 ( .A0(N107), .A1(n50), .B0(N98), .B1(n108), .Y(n38) );
  AOI221X2M U120 ( .A0(n113), .A1(n42), .B0(n111), .B1(A[7]), .C0(n43), .Y(n40) );
  AOI22X1M U121 ( .A0(N132), .A1(n3), .B0(N116), .B1(n109), .Y(n39) );
  INVX4M U122 ( .A(n22), .Y(n24) );
  INVX4M U123 ( .A(n16), .Y(n18) );
  AOI21X2M U124 ( .A0(n33), .A1(n34), .B0(n168), .Y(ALU_OUT_Comb[8]) );
  AOI21X2M U125 ( .A0(N99), .A1(n108), .B0(n154), .Y(n33) );
  AOI2BB2X2M U126 ( .B0(N117), .B1(n109), .A0N(n42), .A1N(n36), .Y(n34) );
  OAI222X1M U127 ( .A0(n55), .A1(n152), .B0(n12), .B1(n56), .C0(n36), .C1(n27), 
        .Y(n54) );
  AOI221X2M U128 ( .A0(n41), .A1(n114), .B0(n116), .B1(n158), .C0(n112), .Y(
        n56) );
  AOI221X2M U129 ( .A0(n115), .A1(n158), .B0(n41), .B1(n48), .C0(n111), .Y(n55) );
  NOR2X4M U130 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n106) );
  NAND3X2M U131 ( .A(n106), .B(ALU_FUN[0]), .C(n13), .Y(n101) );
  INVX2M U132 ( .A(n92), .Y(n154) );
  AOI211X2M U133 ( .A0(N108), .A1(n50), .B0(n113), .C0(n116), .Y(n92) );
  CLKAND2X2M U134 ( .A(ALU_FUN[2]), .B(n166), .Y(n99) );
  AND3X2M U135 ( .A(n106), .B(n163), .C(n13), .Y(n46) );
  INVX4M U136 ( .A(n30), .Y(n41) );
  INVX4M U137 ( .A(n27), .Y(n29) );
  NAND3X2M U138 ( .A(n13), .B(ALU_FUN[0]), .C(n99), .Y(n91) );
  CLKBUFX6M U139 ( .A(n35), .Y(n109) );
  NOR3X2M U140 ( .A(n164), .B(ALU_FUN[2]), .C(n166), .Y(n35) );
  INVX2M U141 ( .A(n15), .Y(n162) );
  INVX2M U142 ( .A(RST), .Y(n119) );
  INVX2M U143 ( .A(A[1]), .Y(n16) );
  INVX2M U144 ( .A(A[2]), .Y(n19) );
  INVX2M U145 ( .A(A[3]), .Y(n22) );
  INVXLM U146 ( .A(n120), .Y(n148) );
  AOI221X2M U147 ( .A0(n15), .A1(n114), .B0(n116), .B1(n162), .C0(n112), .Y(
        n102) );
  AOI31X2M U148 ( .A0(N157), .A1(n13), .A2(n104), .B0(n90), .Y(n103) );
  NOR3X2M U149 ( .A(n166), .B(ALU_FUN[2]), .C(ALU_FUN[0]), .Y(n104) );
  INVXLM U150 ( .A(n131), .Y(n150) );
  AOI221X2M U151 ( .A0(n18), .A1(n114), .B0(n116), .B1(n161), .C0(n112), .Y(
        n87) );
  AOI31X2M U152 ( .A0(n153), .A1(n13), .A2(n89), .B0(n90), .Y(n88) );
  NOR3X2M U153 ( .A(n163), .B(ALU_FUN[2]), .C(n166), .Y(n89) );
  OAI222X1M U154 ( .A0(n44), .A1(n155), .B0(B[7]), .B1(n45), .C0(n36), .C1(
        n158), .Y(n43) );
  AOI221X2M U155 ( .A0(n115), .A1(n49), .B0(n116), .B1(n146), .C0(n113), .Y(
        n45) );
  AOI221X2M U156 ( .A0(n115), .A1(n146), .B0(A[7]), .B1(n48), .C0(n110), .Y(
        n44) );
  OAI222X1M U157 ( .A0(n67), .A1(n157), .B0(B[4]), .B1(n68), .C0(n36), .C1(
        n159), .Y(n66) );
  AOI221X2M U158 ( .A0(A[4]), .A1(n114), .B0(n116), .B1(n25), .C0(n112), .Y(
        n68) );
  AOI221X2M U159 ( .A0(n115), .A1(n25), .B0(A[4]), .B1(n48), .C0(n111), .Y(n67) );
  OAI222X1M U160 ( .A0(n61), .A1(n156), .B0(B[5]), .B1(n62), .C0(n36), .C1(n25), .Y(n60) );
  AOI221X2M U161 ( .A0(n29), .A1(n114), .B0(n116), .B1(n27), .C0(n112), .Y(n62) );
  AOI221X2M U162 ( .A0(n115), .A1(n27), .B0(n29), .B1(n48), .C0(n110), .Y(n61)
         );
  OAI222X1M U163 ( .A0(n79), .A1(n149), .B0(B[2]), .B1(n80), .C0(n36), .C1(
        n161), .Y(n78) );
  AOI221X2M U164 ( .A0(n21), .A1(n114), .B0(n116), .B1(n160), .C0(n112), .Y(
        n80) );
  AOI221X2M U165 ( .A0(n115), .A1(n160), .B0(n21), .B1(n48), .C0(n111), .Y(n79) );
  OAI222X1M U166 ( .A0(n73), .A1(n151), .B0(B[3]), .B1(n74), .C0(n36), .C1(
        n160), .Y(n72) );
  AOI221X2M U167 ( .A0(n24), .A1(n114), .B0(n116), .B1(n159), .C0(n112), .Y(
        n74) );
  AOI221X2M U168 ( .A0(n115), .A1(n159), .B0(n24), .B1(n48), .C0(n110), .Y(n73) );
  OAI2B2X1M U169 ( .A1N(B[1]), .A0(n86), .B0(n36), .B1(n162), .Y(n85) );
  AOI221X2M U170 ( .A0(n115), .A1(n161), .B0(n18), .B1(n48), .C0(n110), .Y(n86) );
  OAI2B2X1M U171 ( .A1N(B[0]), .A0(n98), .B0(n91), .B1(n161), .Y(n97) );
  AOI221X2M U172 ( .A0(n114), .A1(n162), .B0(n15), .B1(n48), .C0(n111), .Y(n98) );
  NAND2BX1M U173 ( .AN(B[4]), .B(A[4]), .Y(n135) );
  NAND2BX1M U174 ( .AN(A[4]), .B(B[4]), .Y(n124) );
  CLKNAND2X2M U175 ( .A(n135), .B(n124), .Y(n137) );
  CLKNAND2X2M U176 ( .A(n21), .B(n149), .Y(n134) );
  AOI21X1M U177 ( .A0(n120), .A1(n161), .B0(B[1]), .Y(n121) );
  CLKNAND2X2M U178 ( .A(n24), .B(n151), .Y(n133) );
  NAND2BX1M U179 ( .AN(n29), .B(B[5]), .Y(n140) );
  OAI211X1M U180 ( .A0(n137), .A1(n125), .B0(n124), .C0(n140), .Y(n126) );
  NAND2BX1M U181 ( .AN(B[5]), .B(n29), .Y(n136) );
  AOI32X1M U182 ( .A0(n126), .A1(n136), .A2(n139), .B0(n12), .B1(n30), .Y(n127) );
  CLKNAND2X2M U183 ( .A(n15), .B(n147), .Y(n130) );
  OA21X1M U184 ( .A0(n130), .A1(n161), .B0(B[1]), .Y(n128) );
  AOI31X1M U185 ( .A0(n150), .A1(n134), .A2(n133), .B0(n132), .Y(n138) );
  OAI2B11X1M U186 ( .A1N(n138), .A0(n137), .B0(n136), .C0(n135), .Y(n141) );
  AOI32X1M U187 ( .A0(n141), .A1(n140), .A2(n139), .B0(n41), .B1(n152), .Y(
        n144) );
  NOR2X1M U188 ( .A(N159), .B(n153), .Y(N157) );
endmodule


module RegFile ( CLK, RST, WrEn, RdEn, Address, WrData, RdData, RdData_VLD, 
        REG0, REG1, REG2, REG3 );
  input [3:0] Address;
  input [7:0] WrData;
  output [7:0] RdData;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  input CLK, RST, WrEn, RdEn;
  output RdData_VLD;
  wire   N11, N12, N13, N14, n272, n273, n274, \regArr[15][7] ,
         \regArr[15][6] , \regArr[15][5] , \regArr[15][4] , \regArr[15][3] ,
         \regArr[15][2] , \regArr[15][1] , \regArr[15][0] , \regArr[14][7] ,
         \regArr[14][6] , \regArr[14][5] , \regArr[14][4] , \regArr[14][3] ,
         \regArr[14][2] , \regArr[14][1] , \regArr[14][0] , \regArr[13][7] ,
         \regArr[13][6] , \regArr[13][5] , \regArr[13][4] , \regArr[13][3] ,
         \regArr[13][2] , \regArr[13][1] , \regArr[13][0] , \regArr[12][7] ,
         \regArr[12][6] , \regArr[12][5] , \regArr[12][4] , \regArr[12][3] ,
         \regArr[12][2] , \regArr[12][1] , \regArr[12][0] , \regArr[11][7] ,
         \regArr[11][6] , \regArr[11][5] , \regArr[11][4] , \regArr[11][3] ,
         \regArr[11][2] , \regArr[11][1] , \regArr[11][0] , \regArr[10][7] ,
         \regArr[10][6] , \regArr[10][5] , \regArr[10][4] , \regArr[10][3] ,
         \regArr[10][2] , \regArr[10][1] , \regArr[10][0] , \regArr[9][7] ,
         \regArr[9][6] , \regArr[9][5] , \regArr[9][4] , \regArr[9][3] ,
         \regArr[9][2] , \regArr[9][1] , \regArr[9][0] , \regArr[8][7] ,
         \regArr[8][6] , \regArr[8][5] , \regArr[8][4] , \regArr[8][3] ,
         \regArr[8][2] , \regArr[8][1] , \regArr[8][0] , \regArr[7][7] ,
         \regArr[7][6] , \regArr[7][5] , \regArr[7][4] , \regArr[7][3] ,
         \regArr[7][2] , \regArr[7][1] , \regArr[7][0] , \regArr[6][7] ,
         \regArr[6][6] , \regArr[6][5] , \regArr[6][4] , \regArr[6][3] ,
         \regArr[6][2] , \regArr[6][1] , \regArr[6][0] , \regArr[5][7] ,
         \regArr[5][6] , \regArr[5][5] , \regArr[5][4] , \regArr[5][3] ,
         \regArr[5][2] , \regArr[5][1] , \regArr[5][0] , \regArr[4][7] ,
         \regArr[4][6] , \regArr[4][5] , \regArr[4][4] , \regArr[4][3] ,
         \regArr[4][2] , \regArr[4][1] , \regArr[4][0] , N36, N37, N38, N39,
         N40, N41, N42, N43, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126,
         n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137,
         n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148,
         n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n1, n5, n6, n7, n8, n9, n10, n11,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209,
         n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220,
         n221, n222, n223, n224, n225, n226, n227, n228, n229, n230, n231,
         n232, n233, n234, n235, n236, n237, n238, n239, n240, n241, n242,
         n243, n244, n245, n246, n247, n248, n249, n250, n251, n252, n253,
         n254, n255, n256, n257, n258, n259, n260, n261, n262, n263, n264,
         n265, n266, n267, n268, n269, n270, n271;
  assign N11 = Address[0];
  assign N12 = Address[1];
  assign N13 = Address[2];
  assign N14 = Address[3];

  DFFRHQX8M \regArr_reg[1][5]  ( .D(n62), .CK(CLK), .RN(n252), .Q(REG1[5]) );
  DFFRHQX8M \regArr_reg[1][3]  ( .D(n60), .CK(CLK), .RN(n251), .Q(REG1[3]) );
  DFFRHQX8M \regArr_reg[1][2]  ( .D(n59), .CK(CLK), .RN(n251), .Q(REG1[2]) );
  DFFRHQX8M \regArr_reg[1][1]  ( .D(n58), .CK(CLK), .RN(n251), .Q(REG1[1]) );
  DFFRQX2M \RdData_reg[7]  ( .D(n47), .CK(CLK), .RN(n251), .Q(RdData[7]) );
  DFFRQX2M \RdData_reg[6]  ( .D(n46), .CK(CLK), .RN(n250), .Q(RdData[6]) );
  DFFRQX2M \RdData_reg[5]  ( .D(n45), .CK(CLK), .RN(n250), .Q(RdData[5]) );
  DFFRQX2M \RdData_reg[4]  ( .D(n44), .CK(CLK), .RN(n250), .Q(RdData[4]) );
  DFFRQX2M \RdData_reg[3]  ( .D(n43), .CK(CLK), .RN(n250), .Q(RdData[3]) );
  DFFRQX2M \RdData_reg[2]  ( .D(n42), .CK(CLK), .RN(n250), .Q(RdData[2]) );
  DFFRQX2M \RdData_reg[1]  ( .D(n41), .CK(CLK), .RN(n250), .Q(RdData[1]) );
  DFFRQX2M \RdData_reg[0]  ( .D(n40), .CK(CLK), .RN(n255), .Q(RdData[0]) );
  DFFRQX2M \regArr_reg[13][7]  ( .D(n160), .CK(CLK), .RN(n259), .Q(
        \regArr[13][7] ) );
  DFFRQX2M \regArr_reg[13][6]  ( .D(n159), .CK(CLK), .RN(n259), .Q(
        \regArr[13][6] ) );
  DFFRQX2M \regArr_reg[13][5]  ( .D(n158), .CK(CLK), .RN(n259), .Q(
        \regArr[13][5] ) );
  DFFRQX2M \regArr_reg[13][4]  ( .D(n157), .CK(CLK), .RN(n259), .Q(
        \regArr[13][4] ) );
  DFFRQX2M \regArr_reg[13][3]  ( .D(n156), .CK(CLK), .RN(n259), .Q(
        \regArr[13][3] ) );
  DFFRQX2M \regArr_reg[13][2]  ( .D(n155), .CK(CLK), .RN(n258), .Q(
        \regArr[13][2] ) );
  DFFRQX2M \regArr_reg[13][1]  ( .D(n154), .CK(CLK), .RN(n258), .Q(
        \regArr[13][1] ) );
  DFFRQX2M \regArr_reg[13][0]  ( .D(n153), .CK(CLK), .RN(n258), .Q(
        \regArr[13][0] ) );
  DFFRQX2M \regArr_reg[9][7]  ( .D(n128), .CK(CLK), .RN(n256), .Q(
        \regArr[9][7] ) );
  DFFRQX2M \regArr_reg[9][6]  ( .D(n127), .CK(CLK), .RN(n256), .Q(
        \regArr[9][6] ) );
  DFFRQX2M \regArr_reg[9][5]  ( .D(n126), .CK(CLK), .RN(n256), .Q(
        \regArr[9][5] ) );
  DFFRQX2M \regArr_reg[9][4]  ( .D(n125), .CK(CLK), .RN(n256), .Q(
        \regArr[9][4] ) );
  DFFRQX2M \regArr_reg[9][3]  ( .D(n124), .CK(CLK), .RN(n256), .Q(
        \regArr[9][3] ) );
  DFFRQX2M \regArr_reg[9][2]  ( .D(n123), .CK(CLK), .RN(n256), .Q(
        \regArr[9][2] ) );
  DFFRQX2M \regArr_reg[9][1]  ( .D(n122), .CK(CLK), .RN(n256), .Q(
        \regArr[9][1] ) );
  DFFRQX2M \regArr_reg[9][0]  ( .D(n121), .CK(CLK), .RN(n256), .Q(
        \regArr[9][0] ) );
  DFFRQX2M \regArr_reg[5][7]  ( .D(n96), .CK(CLK), .RN(n254), .Q(
        \regArr[5][7] ) );
  DFFRQX2M \regArr_reg[5][6]  ( .D(n95), .CK(CLK), .RN(n254), .Q(
        \regArr[5][6] ) );
  DFFRQX2M \regArr_reg[5][5]  ( .D(n94), .CK(CLK), .RN(n254), .Q(
        \regArr[5][5] ) );
  DFFRQX2M \regArr_reg[5][4]  ( .D(n93), .CK(CLK), .RN(n254), .Q(
        \regArr[5][4] ) );
  DFFRQX2M \regArr_reg[5][3]  ( .D(n92), .CK(CLK), .RN(n254), .Q(
        \regArr[5][3] ) );
  DFFRQX2M \regArr_reg[5][2]  ( .D(n91), .CK(CLK), .RN(n253), .Q(
        \regArr[5][2] ) );
  DFFRQX2M \regArr_reg[5][1]  ( .D(n90), .CK(CLK), .RN(n253), .Q(
        \regArr[5][1] ) );
  DFFRQX2M \regArr_reg[5][0]  ( .D(n89), .CK(CLK), .RN(n253), .Q(
        \regArr[5][0] ) );
  DFFRQX2M \regArr_reg[15][7]  ( .D(n176), .CK(CLK), .RN(n250), .Q(
        \regArr[15][7] ) );
  DFFRQX2M \regArr_reg[15][6]  ( .D(n175), .CK(CLK), .RN(n260), .Q(
        \regArr[15][6] ) );
  DFFRQX2M \regArr_reg[15][5]  ( .D(n174), .CK(CLK), .RN(n260), .Q(
        \regArr[15][5] ) );
  DFFRQX2M \regArr_reg[15][4]  ( .D(n173), .CK(CLK), .RN(n260), .Q(
        \regArr[15][4] ) );
  DFFRQX2M \regArr_reg[15][3]  ( .D(n172), .CK(CLK), .RN(n260), .Q(
        \regArr[15][3] ) );
  DFFRQX2M \regArr_reg[15][2]  ( .D(n171), .CK(CLK), .RN(n260), .Q(
        \regArr[15][2] ) );
  DFFRQX2M \regArr_reg[15][1]  ( .D(n170), .CK(CLK), .RN(n260), .Q(
        \regArr[15][1] ) );
  DFFRQX2M \regArr_reg[15][0]  ( .D(n169), .CK(CLK), .RN(n260), .Q(
        \regArr[15][0] ) );
  DFFRQX2M \regArr_reg[11][7]  ( .D(n144), .CK(CLK), .RN(n258), .Q(
        \regArr[11][7] ) );
  DFFRQX2M \regArr_reg[11][6]  ( .D(n143), .CK(CLK), .RN(n258), .Q(
        \regArr[11][6] ) );
  DFFRQX2M \regArr_reg[11][5]  ( .D(n142), .CK(CLK), .RN(n257), .Q(
        \regArr[11][5] ) );
  DFFRQX2M \regArr_reg[11][4]  ( .D(n141), .CK(CLK), .RN(n257), .Q(
        \regArr[11][4] ) );
  DFFRQX2M \regArr_reg[11][3]  ( .D(n140), .CK(CLK), .RN(n257), .Q(
        \regArr[11][3] ) );
  DFFRQX2M \regArr_reg[11][2]  ( .D(n139), .CK(CLK), .RN(n257), .Q(
        \regArr[11][2] ) );
  DFFRQX2M \regArr_reg[11][1]  ( .D(n138), .CK(CLK), .RN(n257), .Q(
        \regArr[11][1] ) );
  DFFRQX2M \regArr_reg[11][0]  ( .D(n137), .CK(CLK), .RN(n257), .Q(
        \regArr[11][0] ) );
  DFFRQX2M \regArr_reg[7][7]  ( .D(n112), .CK(CLK), .RN(n255), .Q(
        \regArr[7][7] ) );
  DFFRQX2M \regArr_reg[7][6]  ( .D(n111), .CK(CLK), .RN(n255), .Q(
        \regArr[7][6] ) );
  DFFRQX2M \regArr_reg[7][5]  ( .D(n110), .CK(CLK), .RN(n255), .Q(
        \regArr[7][5] ) );
  DFFRQX2M \regArr_reg[7][4]  ( .D(n109), .CK(CLK), .RN(n255), .Q(
        \regArr[7][4] ) );
  DFFRQX2M \regArr_reg[7][3]  ( .D(n108), .CK(CLK), .RN(n255), .Q(
        \regArr[7][3] ) );
  DFFRQX2M \regArr_reg[7][2]  ( .D(n107), .CK(CLK), .RN(n255), .Q(
        \regArr[7][2] ) );
  DFFRQX2M \regArr_reg[7][1]  ( .D(n106), .CK(CLK), .RN(n255), .Q(
        \regArr[7][1] ) );
  DFFRQX2M \regArr_reg[7][0]  ( .D(n105), .CK(CLK), .RN(n255), .Q(
        \regArr[7][0] ) );
  DFFRQX2M \regArr_reg[14][7]  ( .D(n168), .CK(CLK), .RN(n259), .Q(
        \regArr[14][7] ) );
  DFFRQX2M \regArr_reg[14][6]  ( .D(n167), .CK(CLK), .RN(n259), .Q(
        \regArr[14][6] ) );
  DFFRQX2M \regArr_reg[14][5]  ( .D(n166), .CK(CLK), .RN(n259), .Q(
        \regArr[14][5] ) );
  DFFRQX2M \regArr_reg[14][4]  ( .D(n165), .CK(CLK), .RN(n259), .Q(
        \regArr[14][4] ) );
  DFFRQX2M \regArr_reg[14][3]  ( .D(n164), .CK(CLK), .RN(n259), .Q(
        \regArr[14][3] ) );
  DFFRQX2M \regArr_reg[14][2]  ( .D(n163), .CK(CLK), .RN(n259), .Q(
        \regArr[14][2] ) );
  DFFRQX2M \regArr_reg[14][1]  ( .D(n162), .CK(CLK), .RN(n259), .Q(
        \regArr[14][1] ) );
  DFFRQX2M \regArr_reg[14][0]  ( .D(n161), .CK(CLK), .RN(n259), .Q(
        \regArr[14][0] ) );
  DFFRQX2M \regArr_reg[10][7]  ( .D(n136), .CK(CLK), .RN(n257), .Q(
        \regArr[10][7] ) );
  DFFRQX2M \regArr_reg[10][6]  ( .D(n135), .CK(CLK), .RN(n257), .Q(
        \regArr[10][6] ) );
  DFFRQX2M \regArr_reg[10][5]  ( .D(n134), .CK(CLK), .RN(n257), .Q(
        \regArr[10][5] ) );
  DFFRQX2M \regArr_reg[10][4]  ( .D(n133), .CK(CLK), .RN(n257), .Q(
        \regArr[10][4] ) );
  DFFRQX2M \regArr_reg[10][3]  ( .D(n132), .CK(CLK), .RN(n257), .Q(
        \regArr[10][3] ) );
  DFFRQX2M \regArr_reg[10][2]  ( .D(n131), .CK(CLK), .RN(n257), .Q(
        \regArr[10][2] ) );
  DFFRQX2M \regArr_reg[10][1]  ( .D(n130), .CK(CLK), .RN(n257), .Q(
        \regArr[10][1] ) );
  DFFRQX2M \regArr_reg[10][0]  ( .D(n129), .CK(CLK), .RN(n256), .Q(
        \regArr[10][0] ) );
  DFFRQX2M \regArr_reg[6][7]  ( .D(n104), .CK(CLK), .RN(n254), .Q(
        \regArr[6][7] ) );
  DFFRQX2M \regArr_reg[6][6]  ( .D(n103), .CK(CLK), .RN(n254), .Q(
        \regArr[6][6] ) );
  DFFRQX2M \regArr_reg[6][5]  ( .D(n102), .CK(CLK), .RN(n254), .Q(
        \regArr[6][5] ) );
  DFFRQX2M \regArr_reg[6][4]  ( .D(n101), .CK(CLK), .RN(n254), .Q(
        \regArr[6][4] ) );
  DFFRQX2M \regArr_reg[6][3]  ( .D(n100), .CK(CLK), .RN(n254), .Q(
        \regArr[6][3] ) );
  DFFRQX2M \regArr_reg[6][2]  ( .D(n99), .CK(CLK), .RN(n254), .Q(
        \regArr[6][2] ) );
  DFFRQX2M \regArr_reg[6][1]  ( .D(n98), .CK(CLK), .RN(n254), .Q(
        \regArr[6][1] ) );
  DFFRQX2M \regArr_reg[6][0]  ( .D(n97), .CK(CLK), .RN(n254), .Q(
        \regArr[6][0] ) );
  DFFRQX2M \regArr_reg[12][7]  ( .D(n152), .CK(CLK), .RN(n258), .Q(
        \regArr[12][7] ) );
  DFFRQX2M \regArr_reg[12][6]  ( .D(n151), .CK(CLK), .RN(n258), .Q(
        \regArr[12][6] ) );
  DFFRQX2M \regArr_reg[12][5]  ( .D(n150), .CK(CLK), .RN(n258), .Q(
        \regArr[12][5] ) );
  DFFRQX2M \regArr_reg[12][4]  ( .D(n149), .CK(CLK), .RN(n258), .Q(
        \regArr[12][4] ) );
  DFFRQX2M \regArr_reg[12][3]  ( .D(n148), .CK(CLK), .RN(n258), .Q(
        \regArr[12][3] ) );
  DFFRQX2M \regArr_reg[12][2]  ( .D(n147), .CK(CLK), .RN(n258), .Q(
        \regArr[12][2] ) );
  DFFRQX2M \regArr_reg[12][1]  ( .D(n146), .CK(CLK), .RN(n258), .Q(
        \regArr[12][1] ) );
  DFFRQX2M \regArr_reg[12][0]  ( .D(n145), .CK(CLK), .RN(n258), .Q(
        \regArr[12][0] ) );
  DFFRQX2M \regArr_reg[8][7]  ( .D(n120), .CK(CLK), .RN(n256), .Q(
        \regArr[8][7] ) );
  DFFRQX2M \regArr_reg[8][6]  ( .D(n119), .CK(CLK), .RN(n256), .Q(
        \regArr[8][6] ) );
  DFFRQX2M \regArr_reg[8][5]  ( .D(n118), .CK(CLK), .RN(n256), .Q(
        \regArr[8][5] ) );
  DFFRQX2M \regArr_reg[8][4]  ( .D(n117), .CK(CLK), .RN(n256), .Q(
        \regArr[8][4] ) );
  DFFRQX2M \regArr_reg[8][3]  ( .D(n116), .CK(CLK), .RN(n255), .Q(
        \regArr[8][3] ) );
  DFFRQX2M \regArr_reg[8][2]  ( .D(n115), .CK(CLK), .RN(n255), .Q(
        \regArr[8][2] ) );
  DFFRQX2M \regArr_reg[8][1]  ( .D(n114), .CK(CLK), .RN(n255), .Q(
        \regArr[8][1] ) );
  DFFRQX2M \regArr_reg[8][0]  ( .D(n113), .CK(CLK), .RN(n255), .Q(
        \regArr[8][0] ) );
  DFFRQX2M \regArr_reg[4][7]  ( .D(n88), .CK(CLK), .RN(n253), .Q(
        \regArr[4][7] ) );
  DFFRQX2M \regArr_reg[4][6]  ( .D(n87), .CK(CLK), .RN(n253), .Q(
        \regArr[4][6] ) );
  DFFRQX2M \regArr_reg[4][5]  ( .D(n86), .CK(CLK), .RN(n253), .Q(
        \regArr[4][5] ) );
  DFFRQX2M \regArr_reg[4][4]  ( .D(n85), .CK(CLK), .RN(n253), .Q(
        \regArr[4][4] ) );
  DFFRQX2M \regArr_reg[4][3]  ( .D(n84), .CK(CLK), .RN(n253), .Q(
        \regArr[4][3] ) );
  DFFRQX2M \regArr_reg[4][2]  ( .D(n83), .CK(CLK), .RN(n253), .Q(
        \regArr[4][2] ) );
  DFFRQX2M \regArr_reg[4][1]  ( .D(n82), .CK(CLK), .RN(n253), .Q(
        \regArr[4][1] ) );
  DFFRQX2M \regArr_reg[4][0]  ( .D(n81), .CK(CLK), .RN(n253), .Q(
        \regArr[4][0] ) );
  DFFRQX2M RdData_VLD_reg ( .D(n48), .CK(CLK), .RN(n250), .Q(RdData_VLD) );
  DFFSQX2M \regArr_reg[2][0]  ( .D(n65), .CK(CLK), .SN(n250), .Q(REG2[0]) );
  DFFRQX2M \regArr_reg[2][1]  ( .D(n66), .CK(CLK), .RN(n252), .Q(REG2[1]) );
  DFFRQX2M \regArr_reg[3][0]  ( .D(n73), .CK(CLK), .RN(n252), .Q(REG3[0]) );
  DFFRQX2M \regArr_reg[2][3]  ( .D(n68), .CK(CLK), .RN(n252), .Q(REG2[3]) );
  DFFRQX2M \regArr_reg[2][4]  ( .D(n69), .CK(CLK), .RN(n252), .Q(REG2[4]) );
  DFFSQX4M \regArr_reg[2][7]  ( .D(n72), .CK(CLK), .SN(n250), .Q(REG2[7]) );
  DFFSQX4M \regArr_reg[3][5]  ( .D(n78), .CK(CLK), .SN(n250), .Q(REG3[5]) );
  DFFRQX2M \regArr_reg[0][3]  ( .D(n52), .CK(CLK), .RN(n251), .Q(REG0[3]) );
  DFFRQX2M \regArr_reg[0][2]  ( .D(n51), .CK(CLK), .RN(n251), .Q(REG0[2]) );
  DFFRQX2M \regArr_reg[0][0]  ( .D(n49), .CK(CLK), .RN(n250), .Q(REG0[0]) );
  DFFRQX2M \regArr_reg[0][1]  ( .D(n50), .CK(CLK), .RN(n250), .Q(REG0[1]) );
  DFFRQX2M \regArr_reg[2][2]  ( .D(n67), .CK(CLK), .RN(n252), .Q(REG2[2]) );
  DFFRHQX8M \regArr_reg[0][7]  ( .D(n56), .CK(CLK), .RN(n251), .Q(REG0[7]) );
  DFFRHQX8M \regArr_reg[0][4]  ( .D(n53), .CK(CLK), .RN(n251), .Q(REG0[4]) );
  DFFRQX2M \regArr_reg[0][5]  ( .D(n54), .CK(CLK), .RN(n251), .Q(REG0[5]) );
  DFFRQX4M \regArr_reg[2][6]  ( .D(n71), .CK(CLK), .RN(n252), .Q(REG2[6]) );
  DFFRQX4M \regArr_reg[2][5]  ( .D(n70), .CK(CLK), .RN(n252), .Q(REG2[5]) );
  DFFRQX4M \regArr_reg[3][7]  ( .D(n80), .CK(CLK), .RN(n253), .Q(REG3[7]) );
  DFFRQX4M \regArr_reg[3][6]  ( .D(n79), .CK(CLK), .RN(n253), .Q(REG3[6]) );
  DFFRQX4M \regArr_reg[3][4]  ( .D(n77), .CK(CLK), .RN(n252), .Q(REG3[4]) );
  DFFRQX4M \regArr_reg[3][1]  ( .D(n74), .CK(CLK), .RN(n252), .Q(REG3[1]) );
  DFFRQX4M \regArr_reg[3][2]  ( .D(n75), .CK(CLK), .RN(n252), .Q(REG3[2]) );
  DFFRQX4M \regArr_reg[3][3]  ( .D(n76), .CK(CLK), .RN(n252), .Q(REG3[3]) );
  DFFRHQX4M \regArr_reg[1][6]  ( .D(n63), .CK(CLK), .RN(n252), .Q(REG1[6]) );
  DFFRHQX1M \regArr_reg[1][7]  ( .D(n64), .CK(CLK), .RN(n251), .Q(n272) );
  DFFRQX4M \regArr_reg[1][4]  ( .D(n61), .CK(CLK), .RN(n251), .Q(n273) );
  DFFRHQX1M \regArr_reg[1][0]  ( .D(n57), .CK(CLK), .RN(n251), .Q(n274) );
  DFFRHQX4M \regArr_reg[0][6]  ( .D(n55), .CK(CLK), .RN(n251), .Q(REG0[6]) );
  BUFX24M U3 ( .A(n274), .Y(REG1[0]) );
  INVX8M U4 ( .A(n1), .Y(REG1[4]) );
  INVX4M U5 ( .A(n273), .Y(n1) );
  BUFX10M U6 ( .A(n272), .Y(REG1[7]) );
  BUFX6M U7 ( .A(n261), .Y(n251) );
  NOR2BX4M U8 ( .AN(n38), .B(n247), .Y(n32) );
  NOR2BX4M U9 ( .AN(n27), .B(n247), .Y(n18) );
  NOR2BX2M U10 ( .AN(n13), .B(N14), .Y(n27) );
  NOR2X4M U11 ( .A(n249), .B(N13), .Y(n20) );
  NOR2X4M U12 ( .A(n248), .B(N13), .Y(n15) );
  NOR2BX4M U13 ( .AN(N13), .B(n248), .Y(n23) );
  NOR2BX4M U14 ( .AN(N13), .B(n249), .Y(n26) );
  INVX2M U15 ( .A(N11), .Y(n247) );
  INVX2M U16 ( .A(N12), .Y(n249) );
  MX4XLM U17 ( .A(REG0[0]), .B(REG1[0]), .C(REG2[0]), .D(REG3[0]), .S0(n207), 
        .S1(n203), .Y(n8) );
  MX4XLM U18 ( .A(REG0[1]), .B(REG1[1]), .C(REG2[1]), .D(REG3[1]), .S0(n207), 
        .S1(n202), .Y(n177) );
  MX4XLM U19 ( .A(REG0[2]), .B(REG1[2]), .C(REG2[2]), .D(REG3[2]), .S0(n208), 
        .S1(n202), .Y(n181) );
  MX4XLM U20 ( .A(REG0[3]), .B(REG1[3]), .C(REG2[3]), .D(REG3[3]), .S0(n208), 
        .S1(n202), .Y(n185) );
  MX4XLM U21 ( .A(REG0[4]), .B(REG1[4]), .C(REG2[4]), .D(REG3[4]), .S0(n208), 
        .S1(n203), .Y(n189) );
  MX4XLM U22 ( .A(REG0[5]), .B(REG1[5]), .C(REG2[5]), .D(REG3[5]), .S0(n205), 
        .S1(n203), .Y(n193) );
  MX4XLM U23 ( .A(REG0[6]), .B(REG1[6]), .C(REG2[6]), .D(REG3[6]), .S0(n205), 
        .S1(n203), .Y(n197) );
  MX4XLM U24 ( .A(REG0[7]), .B(REG1[7]), .C(REG2[7]), .D(REG3[7]), .S0(n205), 
        .S1(n203), .Y(n201) );
  INVX8M U25 ( .A(WrData[5]), .Y(n268) );
  INVX8M U26 ( .A(WrData[6]), .Y(n269) );
  INVX8M U27 ( .A(WrData[2]), .Y(n265) );
  INVX8M U28 ( .A(WrData[0]), .Y(n263) );
  INVX8M U29 ( .A(WrData[1]), .Y(n264) );
  INVX8M U30 ( .A(WrData[3]), .Y(n266) );
  CLKBUFX8M U31 ( .A(n206), .Y(n208) );
  CLKBUFX8M U32 ( .A(n248), .Y(n202) );
  CLKBUFX6M U33 ( .A(n206), .Y(n207) );
  INVX4M U34 ( .A(n245), .Y(n271) );
  BUFX2M U35 ( .A(n204), .Y(n205) );
  CLKBUFX8M U36 ( .A(n248), .Y(n203) );
  BUFX4M U37 ( .A(n17), .Y(n242) );
  BUFX4M U38 ( .A(n29), .Y(n228) );
  BUFX4M U39 ( .A(n31), .Y(n226) );
  BUFX4M U40 ( .A(n33), .Y(n224) );
  BUFX4M U41 ( .A(n34), .Y(n222) );
  BUFX4M U42 ( .A(n19), .Y(n240) );
  BUFX4M U43 ( .A(n21), .Y(n238) );
  BUFX4M U44 ( .A(n14), .Y(n244) );
  BUFX4M U45 ( .A(n22), .Y(n236) );
  BUFX4M U46 ( .A(n24), .Y(n234) );
  BUFX4M U47 ( .A(n25), .Y(n232) );
  BUFX4M U48 ( .A(n28), .Y(n230) );
  BUFX4M U49 ( .A(n35), .Y(n220) );
  BUFX4M U50 ( .A(n36), .Y(n218) );
  BUFX4M U51 ( .A(n37), .Y(n216) );
  BUFX4M U52 ( .A(n39), .Y(n214) );
  BUFX4M U53 ( .A(n17), .Y(n241) );
  BUFX4M U54 ( .A(n29), .Y(n227) );
  BUFX4M U55 ( .A(n31), .Y(n225) );
  BUFX4M U56 ( .A(n33), .Y(n223) );
  BUFX4M U57 ( .A(n34), .Y(n221) );
  BUFX4M U58 ( .A(n19), .Y(n239) );
  BUFX4M U59 ( .A(n21), .Y(n237) );
  BUFX4M U60 ( .A(n22), .Y(n235) );
  BUFX4M U61 ( .A(n24), .Y(n233) );
  BUFX4M U62 ( .A(n25), .Y(n231) );
  BUFX4M U63 ( .A(n28), .Y(n229) );
  BUFX4M U64 ( .A(n35), .Y(n219) );
  BUFX4M U65 ( .A(n36), .Y(n217) );
  BUFX4M U66 ( .A(n37), .Y(n215) );
  BUFX4M U67 ( .A(n39), .Y(n213) );
  BUFX4M U68 ( .A(n14), .Y(n243) );
  BUFX2M U69 ( .A(n204), .Y(n206) );
  BUFX4M U70 ( .A(n12), .Y(n245) );
  CLKBUFX8M U71 ( .A(n262), .Y(n250) );
  CLKBUFX8M U72 ( .A(n262), .Y(n252) );
  CLKBUFX8M U73 ( .A(n262), .Y(n253) );
  CLKBUFX8M U74 ( .A(n262), .Y(n254) );
  CLKBUFX8M U75 ( .A(n261), .Y(n255) );
  CLKBUFX8M U76 ( .A(n261), .Y(n256) );
  CLKBUFX8M U77 ( .A(n261), .Y(n257) );
  CLKBUFX8M U78 ( .A(RST), .Y(n258) );
  CLKBUFX8M U79 ( .A(RST), .Y(n259) );
  BUFX4M U80 ( .A(RST), .Y(n260) );
  NOR2BX4M U81 ( .AN(n27), .B(n246), .Y(n16) );
  NOR2BX4M U82 ( .AN(n38), .B(n246), .Y(n30) );
  NOR2BX4M U83 ( .AN(WrEn), .B(RdEn), .Y(n13) );
  NAND2X2M U84 ( .A(n23), .B(n16), .Y(n22) );
  NAND2X2M U85 ( .A(n23), .B(n18), .Y(n24) );
  NAND2X2M U86 ( .A(n26), .B(n16), .Y(n25) );
  NAND2X2M U87 ( .A(n26), .B(n18), .Y(n28) );
  NAND2X2M U88 ( .A(n18), .B(n15), .Y(n17) );
  NAND2X2M U89 ( .A(n30), .B(n15), .Y(n29) );
  NAND2X2M U90 ( .A(n32), .B(n15), .Y(n31) );
  NAND2X2M U91 ( .A(n30), .B(n20), .Y(n33) );
  NAND2X2M U92 ( .A(n32), .B(n20), .Y(n34) );
  NAND2X2M U93 ( .A(n30), .B(n23), .Y(n35) );
  NAND2X2M U94 ( .A(n32), .B(n23), .Y(n36) );
  NAND2X2M U95 ( .A(n30), .B(n26), .Y(n37) );
  NAND2X2M U96 ( .A(n32), .B(n26), .Y(n39) );
  NAND2X2M U97 ( .A(n15), .B(n16), .Y(n14) );
  NAND2X2M U98 ( .A(n20), .B(n16), .Y(n19) );
  NAND2X2M U99 ( .A(n20), .B(n18), .Y(n21) );
  BUFX2M U100 ( .A(n246), .Y(n204) );
  NAND2BX2M U101 ( .AN(WrEn), .B(RdEn), .Y(n12) );
  BUFX2M U102 ( .A(RST), .Y(n262) );
  BUFX2M U103 ( .A(RST), .Y(n261) );
  AND2X2M U104 ( .A(N14), .B(n13), .Y(n38) );
  INVX2M U105 ( .A(n247), .Y(n246) );
  INVX2M U106 ( .A(n249), .Y(n248) );
  BUFX4M U107 ( .A(n270), .Y(n212) );
  BUFX4M U108 ( .A(n267), .Y(n209) );
  BUFX4M U109 ( .A(n270), .Y(n211) );
  BUFX4M U110 ( .A(n267), .Y(n210) );
  OAI2BB2X1M U111 ( .B0(n244), .B1(n263), .A0N(REG0[0]), .A1N(n244), .Y(n49)
         );
  OAI2BB2X1M U112 ( .B0(n243), .B1(n264), .A0N(REG0[1]), .A1N(n244), .Y(n50)
         );
  OAI2BB2X1M U113 ( .B0(n243), .B1(n265), .A0N(REG0[2]), .A1N(n244), .Y(n51)
         );
  OAI2BB2X1M U114 ( .B0(n243), .B1(n266), .A0N(REG0[3]), .A1N(n244), .Y(n52)
         );
  OAI2BB2X1M U115 ( .B0(n263), .B1(n242), .A0N(REG1[0]), .A1N(n242), .Y(n57)
         );
  OAI2BB2X1M U116 ( .B0(n264), .B1(n241), .A0N(REG1[1]), .A1N(n242), .Y(n58)
         );
  OAI2BB2X1M U117 ( .B0(n265), .B1(n241), .A0N(REG1[2]), .A1N(n242), .Y(n59)
         );
  OAI2BB2X1M U118 ( .B0(n266), .B1(n241), .A0N(REG1[3]), .A1N(n242), .Y(n60)
         );
  OAI2BB2X1M U119 ( .B0(n264), .B1(n239), .A0N(REG2[1]), .A1N(n240), .Y(n66)
         );
  OAI2BB2X1M U120 ( .B0(n265), .B1(n239), .A0N(REG2[2]), .A1N(n240), .Y(n67)
         );
  OAI2BB2X1M U121 ( .B0(n266), .B1(n239), .A0N(REG2[3]), .A1N(n240), .Y(n68)
         );
  OAI2BB2X1M U122 ( .B0(n263), .B1(n238), .A0N(REG3[0]), .A1N(n238), .Y(n73)
         );
  OAI2BB2X1M U123 ( .B0(n264), .B1(n237), .A0N(REG3[1]), .A1N(n238), .Y(n74)
         );
  OAI2BB2X1M U124 ( .B0(n265), .B1(n237), .A0N(REG3[2]), .A1N(n238), .Y(n75)
         );
  OAI2BB2X1M U125 ( .B0(n266), .B1(n237), .A0N(REG3[3]), .A1N(n238), .Y(n76)
         );
  OAI2BB2X1M U126 ( .B0(n263), .B1(n236), .A0N(\regArr[4][0] ), .A1N(n236), 
        .Y(n81) );
  OAI2BB2X1M U127 ( .B0(n264), .B1(n235), .A0N(\regArr[4][1] ), .A1N(n236), 
        .Y(n82) );
  OAI2BB2X1M U128 ( .B0(n265), .B1(n235), .A0N(\regArr[4][2] ), .A1N(n236), 
        .Y(n83) );
  OAI2BB2X1M U129 ( .B0(n266), .B1(n235), .A0N(\regArr[4][3] ), .A1N(n236), 
        .Y(n84) );
  OAI2BB2X1M U130 ( .B0(n263), .B1(n234), .A0N(\regArr[5][0] ), .A1N(n234), 
        .Y(n89) );
  OAI2BB2X1M U131 ( .B0(n264), .B1(n233), .A0N(\regArr[5][1] ), .A1N(n234), 
        .Y(n90) );
  OAI2BB2X1M U132 ( .B0(n265), .B1(n233), .A0N(\regArr[5][2] ), .A1N(n234), 
        .Y(n91) );
  OAI2BB2X1M U133 ( .B0(n266), .B1(n233), .A0N(\regArr[5][3] ), .A1N(n234), 
        .Y(n92) );
  OAI2BB2X1M U134 ( .B0(n263), .B1(n232), .A0N(\regArr[6][0] ), .A1N(n232), 
        .Y(n97) );
  OAI2BB2X1M U135 ( .B0(n264), .B1(n231), .A0N(\regArr[6][1] ), .A1N(n232), 
        .Y(n98) );
  OAI2BB2X1M U136 ( .B0(n265), .B1(n231), .A0N(\regArr[6][2] ), .A1N(n232), 
        .Y(n99) );
  OAI2BB2X1M U137 ( .B0(n266), .B1(n231), .A0N(\regArr[6][3] ), .A1N(n232), 
        .Y(n100) );
  OAI2BB2X1M U138 ( .B0(n263), .B1(n230), .A0N(\regArr[7][0] ), .A1N(n230), 
        .Y(n105) );
  OAI2BB2X1M U139 ( .B0(n264), .B1(n229), .A0N(\regArr[7][1] ), .A1N(n230), 
        .Y(n106) );
  OAI2BB2X1M U140 ( .B0(n265), .B1(n229), .A0N(\regArr[7][2] ), .A1N(n230), 
        .Y(n107) );
  OAI2BB2X1M U141 ( .B0(n266), .B1(n229), .A0N(\regArr[7][3] ), .A1N(n230), 
        .Y(n108) );
  OAI2BB2X1M U142 ( .B0(n263), .B1(n228), .A0N(\regArr[8][0] ), .A1N(n228), 
        .Y(n113) );
  OAI2BB2X1M U143 ( .B0(n264), .B1(n227), .A0N(\regArr[8][1] ), .A1N(n228), 
        .Y(n114) );
  OAI2BB2X1M U144 ( .B0(n265), .B1(n227), .A0N(\regArr[8][2] ), .A1N(n228), 
        .Y(n115) );
  OAI2BB2X1M U145 ( .B0(n266), .B1(n227), .A0N(\regArr[8][3] ), .A1N(n228), 
        .Y(n116) );
  OAI2BB2X1M U146 ( .B0(n263), .B1(n226), .A0N(\regArr[9][0] ), .A1N(n226), 
        .Y(n121) );
  OAI2BB2X1M U147 ( .B0(n264), .B1(n225), .A0N(\regArr[9][1] ), .A1N(n226), 
        .Y(n122) );
  OAI2BB2X1M U148 ( .B0(n265), .B1(n225), .A0N(\regArr[9][2] ), .A1N(n226), 
        .Y(n123) );
  OAI2BB2X1M U149 ( .B0(n266), .B1(n225), .A0N(\regArr[9][3] ), .A1N(n226), 
        .Y(n124) );
  OAI2BB2X1M U150 ( .B0(n263), .B1(n224), .A0N(\regArr[10][0] ), .A1N(n224), 
        .Y(n129) );
  OAI2BB2X1M U151 ( .B0(n264), .B1(n223), .A0N(\regArr[10][1] ), .A1N(n224), 
        .Y(n130) );
  OAI2BB2X1M U152 ( .B0(n265), .B1(n223), .A0N(\regArr[10][2] ), .A1N(n224), 
        .Y(n131) );
  OAI2BB2X1M U153 ( .B0(n266), .B1(n223), .A0N(\regArr[10][3] ), .A1N(n224), 
        .Y(n132) );
  OAI2BB2X1M U154 ( .B0(n263), .B1(n222), .A0N(\regArr[11][0] ), .A1N(n222), 
        .Y(n137) );
  OAI2BB2X1M U155 ( .B0(n264), .B1(n221), .A0N(\regArr[11][1] ), .A1N(n222), 
        .Y(n138) );
  OAI2BB2X1M U156 ( .B0(n265), .B1(n221), .A0N(\regArr[11][2] ), .A1N(n222), 
        .Y(n139) );
  OAI2BB2X1M U157 ( .B0(n266), .B1(n221), .A0N(\regArr[11][3] ), .A1N(n222), 
        .Y(n140) );
  OAI2BB2X1M U158 ( .B0(n263), .B1(n220), .A0N(\regArr[12][0] ), .A1N(n220), 
        .Y(n145) );
  OAI2BB2X1M U159 ( .B0(n264), .B1(n219), .A0N(\regArr[12][1] ), .A1N(n220), 
        .Y(n146) );
  OAI2BB2X1M U160 ( .B0(n265), .B1(n219), .A0N(\regArr[12][2] ), .A1N(n220), 
        .Y(n147) );
  OAI2BB2X1M U161 ( .B0(n266), .B1(n219), .A0N(\regArr[12][3] ), .A1N(n220), 
        .Y(n148) );
  OAI2BB2X1M U162 ( .B0(n263), .B1(n218), .A0N(\regArr[13][0] ), .A1N(n218), 
        .Y(n153) );
  OAI2BB2X1M U163 ( .B0(n264), .B1(n217), .A0N(\regArr[13][1] ), .A1N(n218), 
        .Y(n154) );
  OAI2BB2X1M U164 ( .B0(n265), .B1(n217), .A0N(\regArr[13][2] ), .A1N(n218), 
        .Y(n155) );
  OAI2BB2X1M U165 ( .B0(n266), .B1(n217), .A0N(\regArr[13][3] ), .A1N(n218), 
        .Y(n156) );
  OAI2BB2X1M U166 ( .B0(n263), .B1(n216), .A0N(\regArr[14][0] ), .A1N(n216), 
        .Y(n161) );
  OAI2BB2X1M U167 ( .B0(n264), .B1(n215), .A0N(\regArr[14][1] ), .A1N(n216), 
        .Y(n162) );
  OAI2BB2X1M U168 ( .B0(n265), .B1(n215), .A0N(\regArr[14][2] ), .A1N(n216), 
        .Y(n163) );
  OAI2BB2X1M U169 ( .B0(n266), .B1(n215), .A0N(\regArr[14][3] ), .A1N(n216), 
        .Y(n164) );
  OAI2BB2X1M U170 ( .B0(n263), .B1(n214), .A0N(\regArr[15][0] ), .A1N(n214), 
        .Y(n169) );
  OAI2BB2X1M U171 ( .B0(n264), .B1(n213), .A0N(\regArr[15][1] ), .A1N(n214), 
        .Y(n170) );
  OAI2BB2X1M U172 ( .B0(n265), .B1(n213), .A0N(\regArr[15][2] ), .A1N(n214), 
        .Y(n171) );
  OAI2BB2X1M U173 ( .B0(n266), .B1(n213), .A0N(\regArr[15][3] ), .A1N(n214), 
        .Y(n172) );
  OAI2BB2X1M U174 ( .B0(n243), .B1(n268), .A0N(REG0[5]), .A1N(n244), .Y(n54)
         );
  OAI2BB2X1M U175 ( .B0(n243), .B1(n269), .A0N(REG0[6]), .A1N(n244), .Y(n55)
         );
  OAI2BB2X1M U176 ( .B0(n268), .B1(n241), .A0N(REG1[5]), .A1N(n242), .Y(n62)
         );
  OAI2BB2X1M U177 ( .B0(n269), .B1(n241), .A0N(REG1[6]), .A1N(n242), .Y(n63)
         );
  OAI2BB2X1M U178 ( .B0(n268), .B1(n239), .A0N(REG2[5]), .A1N(n240), .Y(n70)
         );
  OAI2BB2X1M U179 ( .B0(n269), .B1(n239), .A0N(REG2[6]), .A1N(n240), .Y(n71)
         );
  OAI2BB2X1M U180 ( .B0(n269), .B1(n237), .A0N(REG3[6]), .A1N(n238), .Y(n79)
         );
  OAI2BB2X1M U181 ( .B0(n268), .B1(n235), .A0N(\regArr[4][5] ), .A1N(n236), 
        .Y(n86) );
  OAI2BB2X1M U182 ( .B0(n269), .B1(n235), .A0N(\regArr[4][6] ), .A1N(n236), 
        .Y(n87) );
  OAI2BB2X1M U183 ( .B0(n268), .B1(n233), .A0N(\regArr[5][5] ), .A1N(n234), 
        .Y(n94) );
  OAI2BB2X1M U184 ( .B0(n269), .B1(n233), .A0N(\regArr[5][6] ), .A1N(n234), 
        .Y(n95) );
  OAI2BB2X1M U185 ( .B0(n268), .B1(n231), .A0N(\regArr[6][5] ), .A1N(n232), 
        .Y(n102) );
  OAI2BB2X1M U186 ( .B0(n269), .B1(n231), .A0N(\regArr[6][6] ), .A1N(n232), 
        .Y(n103) );
  OAI2BB2X1M U187 ( .B0(n268), .B1(n229), .A0N(\regArr[7][5] ), .A1N(n230), 
        .Y(n110) );
  OAI2BB2X1M U188 ( .B0(n269), .B1(n229), .A0N(\regArr[7][6] ), .A1N(n230), 
        .Y(n111) );
  OAI2BB2X1M U189 ( .B0(n268), .B1(n227), .A0N(\regArr[8][5] ), .A1N(n228), 
        .Y(n118) );
  OAI2BB2X1M U190 ( .B0(n269), .B1(n227), .A0N(\regArr[8][6] ), .A1N(n228), 
        .Y(n119) );
  OAI2BB2X1M U191 ( .B0(n268), .B1(n225), .A0N(\regArr[9][5] ), .A1N(n226), 
        .Y(n126) );
  OAI2BB2X1M U192 ( .B0(n269), .B1(n225), .A0N(\regArr[9][6] ), .A1N(n226), 
        .Y(n127) );
  OAI2BB2X1M U193 ( .B0(n268), .B1(n223), .A0N(\regArr[10][5] ), .A1N(n224), 
        .Y(n134) );
  OAI2BB2X1M U194 ( .B0(n269), .B1(n223), .A0N(\regArr[10][6] ), .A1N(n224), 
        .Y(n135) );
  OAI2BB2X1M U195 ( .B0(n268), .B1(n221), .A0N(\regArr[11][5] ), .A1N(n222), 
        .Y(n142) );
  OAI2BB2X1M U196 ( .B0(n269), .B1(n221), .A0N(\regArr[11][6] ), .A1N(n222), 
        .Y(n143) );
  OAI2BB2X1M U197 ( .B0(n268), .B1(n219), .A0N(\regArr[12][5] ), .A1N(n220), 
        .Y(n150) );
  OAI2BB2X1M U198 ( .B0(n269), .B1(n219), .A0N(\regArr[12][6] ), .A1N(n220), 
        .Y(n151) );
  OAI2BB2X1M U199 ( .B0(n268), .B1(n217), .A0N(\regArr[13][5] ), .A1N(n218), 
        .Y(n158) );
  OAI2BB2X1M U200 ( .B0(n269), .B1(n217), .A0N(\regArr[13][6] ), .A1N(n218), 
        .Y(n159) );
  OAI2BB2X1M U201 ( .B0(n268), .B1(n215), .A0N(\regArr[14][5] ), .A1N(n216), 
        .Y(n166) );
  OAI2BB2X1M U202 ( .B0(n269), .B1(n215), .A0N(\regArr[14][6] ), .A1N(n216), 
        .Y(n167) );
  OAI2BB2X1M U203 ( .B0(n268), .B1(n213), .A0N(\regArr[15][5] ), .A1N(n214), 
        .Y(n174) );
  OAI2BB2X1M U204 ( .B0(n269), .B1(n213), .A0N(\regArr[15][6] ), .A1N(n214), 
        .Y(n175) );
  OAI2BB2X1M U205 ( .B0(n210), .B1(n241), .A0N(REG1[4]), .A1N(n242), .Y(n61)
         );
  OAI2BB2X1M U206 ( .B0(n212), .B1(n241), .A0N(REG1[7]), .A1N(n242), .Y(n64)
         );
  OAI2BB2X1M U207 ( .B0(n210), .B1(n239), .A0N(REG2[4]), .A1N(n240), .Y(n69)
         );
  OAI2BB2X1M U208 ( .B0(n210), .B1(n237), .A0N(REG3[4]), .A1N(n238), .Y(n77)
         );
  OAI2BB2X1M U209 ( .B0(n212), .B1(n237), .A0N(REG3[7]), .A1N(n238), .Y(n80)
         );
  OAI2BB2X1M U210 ( .B0(n210), .B1(n235), .A0N(\regArr[4][4] ), .A1N(n236), 
        .Y(n85) );
  OAI2BB2X1M U211 ( .B0(n212), .B1(n235), .A0N(\regArr[4][7] ), .A1N(n236), 
        .Y(n88) );
  OAI2BB2X1M U212 ( .B0(n210), .B1(n233), .A0N(\regArr[5][4] ), .A1N(n234), 
        .Y(n93) );
  OAI2BB2X1M U213 ( .B0(n212), .B1(n233), .A0N(\regArr[5][7] ), .A1N(n234), 
        .Y(n96) );
  OAI2BB2X1M U214 ( .B0(n210), .B1(n231), .A0N(\regArr[6][4] ), .A1N(n232), 
        .Y(n101) );
  OAI2BB2X1M U215 ( .B0(n212), .B1(n231), .A0N(\regArr[6][7] ), .A1N(n232), 
        .Y(n104) );
  OAI2BB2X1M U216 ( .B0(n210), .B1(n229), .A0N(\regArr[7][4] ), .A1N(n230), 
        .Y(n109) );
  OAI2BB2X1M U217 ( .B0(n212), .B1(n229), .A0N(\regArr[7][7] ), .A1N(n230), 
        .Y(n112) );
  OAI2BB2X1M U218 ( .B0(n210), .B1(n227), .A0N(\regArr[8][4] ), .A1N(n228), 
        .Y(n117) );
  OAI2BB2X1M U219 ( .B0(n212), .B1(n227), .A0N(\regArr[8][7] ), .A1N(n228), 
        .Y(n120) );
  OAI2BB2X1M U220 ( .B0(n209), .B1(n225), .A0N(\regArr[9][4] ), .A1N(n226), 
        .Y(n125) );
  OAI2BB2X1M U221 ( .B0(n211), .B1(n225), .A0N(\regArr[9][7] ), .A1N(n226), 
        .Y(n128) );
  OAI2BB2X1M U222 ( .B0(n209), .B1(n223), .A0N(\regArr[10][4] ), .A1N(n224), 
        .Y(n133) );
  OAI2BB2X1M U223 ( .B0(n211), .B1(n223), .A0N(\regArr[10][7] ), .A1N(n224), 
        .Y(n136) );
  OAI2BB2X1M U224 ( .B0(n209), .B1(n221), .A0N(\regArr[11][4] ), .A1N(n222), 
        .Y(n141) );
  OAI2BB2X1M U225 ( .B0(n211), .B1(n221), .A0N(\regArr[11][7] ), .A1N(n222), 
        .Y(n144) );
  OAI2BB2X1M U226 ( .B0(n209), .B1(n219), .A0N(\regArr[12][4] ), .A1N(n220), 
        .Y(n149) );
  OAI2BB2X1M U227 ( .B0(n211), .B1(n219), .A0N(\regArr[12][7] ), .A1N(n220), 
        .Y(n152) );
  OAI2BB2X1M U228 ( .B0(n209), .B1(n217), .A0N(\regArr[13][4] ), .A1N(n218), 
        .Y(n157) );
  OAI2BB2X1M U229 ( .B0(n211), .B1(n217), .A0N(\regArr[13][7] ), .A1N(n218), 
        .Y(n160) );
  OAI2BB2X1M U230 ( .B0(n209), .B1(n215), .A0N(\regArr[14][4] ), .A1N(n216), 
        .Y(n165) );
  OAI2BB2X1M U231 ( .B0(n211), .B1(n215), .A0N(\regArr[14][7] ), .A1N(n216), 
        .Y(n168) );
  OAI2BB2X1M U232 ( .B0(n209), .B1(n213), .A0N(\regArr[15][4] ), .A1N(n214), 
        .Y(n173) );
  OAI2BB2X1M U233 ( .B0(n211), .B1(n213), .A0N(\regArr[15][7] ), .A1N(n214), 
        .Y(n176) );
  OAI2BB2X1M U234 ( .B0(n243), .B1(n209), .A0N(REG0[4]), .A1N(n244), .Y(n53)
         );
  OAI2BB2X1M U235 ( .B0(n243), .B1(n211), .A0N(REG0[7]), .A1N(n244), .Y(n56)
         );
  OAI2BB2X1M U236 ( .B0(n263), .B1(n240), .A0N(REG2[0]), .A1N(n240), .Y(n65)
         );
  OAI2BB2X1M U237 ( .B0(n268), .B1(n237), .A0N(REG3[5]), .A1N(n238), .Y(n78)
         );
  OAI2BB2X1M U238 ( .B0(n212), .B1(n239), .A0N(REG2[7]), .A1N(n240), .Y(n72)
         );
  MX4X1M U239 ( .A(\regArr[4][2] ), .B(\regArr[5][2] ), .C(\regArr[6][2] ), 
        .D(\regArr[7][2] ), .S0(n208), .S1(n202), .Y(n180) );
  MX4X1M U240 ( .A(\regArr[4][3] ), .B(\regArr[5][3] ), .C(\regArr[6][3] ), 
        .D(\regArr[7][3] ), .S0(n208), .S1(n202), .Y(n184) );
  MX4X1M U241 ( .A(\regArr[4][4] ), .B(\regArr[5][4] ), .C(\regArr[6][4] ), 
        .D(\regArr[7][4] ), .S0(n208), .S1(n202), .Y(n188) );
  MX4X1M U242 ( .A(\regArr[4][5] ), .B(\regArr[5][5] ), .C(\regArr[6][5] ), 
        .D(\regArr[7][5] ), .S0(n246), .S1(n203), .Y(n192) );
  MX4X1M U243 ( .A(\regArr[4][6] ), .B(\regArr[5][6] ), .C(\regArr[6][6] ), 
        .D(\regArr[7][6] ), .S0(N11), .S1(n203), .Y(n196) );
  MX4X1M U244 ( .A(\regArr[4][7] ), .B(\regArr[5][7] ), .C(\regArr[6][7] ), 
        .D(\regArr[7][7] ), .S0(N11), .S1(n203), .Y(n200) );
  MX4X1M U245 ( .A(\regArr[12][2] ), .B(\regArr[13][2] ), .C(\regArr[14][2] ), 
        .D(\regArr[15][2] ), .S0(n208), .S1(n202), .Y(n178) );
  MX4X1M U246 ( .A(\regArr[12][3] ), .B(\regArr[13][3] ), .C(\regArr[14][3] ), 
        .D(\regArr[15][3] ), .S0(n208), .S1(n202), .Y(n182) );
  MX4X1M U247 ( .A(\regArr[12][4] ), .B(\regArr[13][4] ), .C(\regArr[14][4] ), 
        .D(\regArr[15][4] ), .S0(n208), .S1(n202), .Y(n186) );
  MX4X1M U248 ( .A(\regArr[12][5] ), .B(\regArr[13][5] ), .C(\regArr[14][5] ), 
        .D(\regArr[15][5] ), .S0(n205), .S1(n203), .Y(n190) );
  MX4X1M U249 ( .A(\regArr[12][6] ), .B(\regArr[13][6] ), .C(\regArr[14][6] ), 
        .D(\regArr[15][6] ), .S0(n207), .S1(n203), .Y(n194) );
  MX4X1M U250 ( .A(\regArr[12][7] ), .B(\regArr[13][7] ), .C(\regArr[14][7] ), 
        .D(\regArr[15][7] ), .S0(n208), .S1(n203), .Y(n198) );
  MX4X1M U251 ( .A(\regArr[4][0] ), .B(\regArr[5][0] ), .C(\regArr[6][0] ), 
        .D(\regArr[7][0] ), .S0(n207), .S1(n202), .Y(n7) );
  MX4X1M U252 ( .A(\regArr[4][1] ), .B(\regArr[5][1] ), .C(\regArr[6][1] ), 
        .D(\regArr[7][1] ), .S0(n207), .S1(n202), .Y(n11) );
  MX4X1M U253 ( .A(\regArr[12][0] ), .B(\regArr[13][0] ), .C(\regArr[14][0] ), 
        .D(\regArr[15][0] ), .S0(n207), .S1(n203), .Y(n5) );
  MX4X1M U254 ( .A(\regArr[12][1] ), .B(\regArr[13][1] ), .C(\regArr[14][1] ), 
        .D(\regArr[15][1] ), .S0(n207), .S1(n202), .Y(n9) );
  AO22X1M U255 ( .A0(N43), .A1(n271), .B0(RdData[0]), .B1(n245), .Y(n40) );
  MX4XLM U256 ( .A(n8), .B(n6), .C(n7), .D(n5), .S0(N14), .S1(N13), .Y(N43) );
  MX4X1M U257 ( .A(\regArr[8][0] ), .B(\regArr[9][0] ), .C(\regArr[10][0] ), 
        .D(\regArr[11][0] ), .S0(n207), .S1(N12), .Y(n6) );
  AO22X1M U258 ( .A0(N42), .A1(n271), .B0(RdData[1]), .B1(n12), .Y(n41) );
  MX4XLM U259 ( .A(n177), .B(n10), .C(n11), .D(n9), .S0(N14), .S1(N13), .Y(N42) );
  MX4X1M U260 ( .A(\regArr[8][1] ), .B(\regArr[9][1] ), .C(\regArr[10][1] ), 
        .D(\regArr[11][1] ), .S0(n207), .S1(N12), .Y(n10) );
  AO22X1M U261 ( .A0(N41), .A1(n271), .B0(RdData[2]), .B1(n12), .Y(n42) );
  MX4XLM U262 ( .A(n181), .B(n179), .C(n180), .D(n178), .S0(N14), .S1(N13), 
        .Y(N41) );
  MX4X1M U263 ( .A(\regArr[8][2] ), .B(\regArr[9][2] ), .C(\regArr[10][2] ), 
        .D(\regArr[11][2] ), .S0(n208), .S1(n202), .Y(n179) );
  AO22X1M U264 ( .A0(N40), .A1(n271), .B0(RdData[3]), .B1(n12), .Y(n43) );
  MX4XLM U265 ( .A(n185), .B(n183), .C(n184), .D(n182), .S0(N14), .S1(N13), 
        .Y(N40) );
  MX4X1M U266 ( .A(\regArr[8][3] ), .B(\regArr[9][3] ), .C(\regArr[10][3] ), 
        .D(\regArr[11][3] ), .S0(n208), .S1(n202), .Y(n183) );
  AO22X1M U267 ( .A0(N39), .A1(n271), .B0(RdData[4]), .B1(n245), .Y(n44) );
  MX4XLM U268 ( .A(n189), .B(n187), .C(n188), .D(n186), .S0(N14), .S1(N13), 
        .Y(N39) );
  MX4X1M U269 ( .A(\regArr[8][4] ), .B(\regArr[9][4] ), .C(\regArr[10][4] ), 
        .D(\regArr[11][4] ), .S0(n208), .S1(n202), .Y(n187) );
  AO22X1M U270 ( .A0(N38), .A1(n271), .B0(RdData[5]), .B1(n245), .Y(n45) );
  MX4XLM U271 ( .A(n193), .B(n191), .C(n192), .D(n190), .S0(N14), .S1(N13), 
        .Y(N38) );
  MX4X1M U272 ( .A(\regArr[8][5] ), .B(\regArr[9][5] ), .C(\regArr[10][5] ), 
        .D(\regArr[11][5] ), .S0(N11), .S1(n203), .Y(n191) );
  AO22X1M U273 ( .A0(N37), .A1(n271), .B0(RdData[6]), .B1(n245), .Y(n46) );
  MX4XLM U274 ( .A(n197), .B(n195), .C(n196), .D(n194), .S0(N14), .S1(N13), 
        .Y(N37) );
  MX4X1M U275 ( .A(\regArr[8][6] ), .B(\regArr[9][6] ), .C(\regArr[10][6] ), 
        .D(\regArr[11][6] ), .S0(n204), .S1(n203), .Y(n195) );
  AO22X1M U276 ( .A0(N36), .A1(n271), .B0(RdData[7]), .B1(n245), .Y(n47) );
  MX4XLM U277 ( .A(n201), .B(n199), .C(n200), .D(n198), .S0(N14), .S1(N13), 
        .Y(N36) );
  MX4X1M U278 ( .A(\regArr[8][7] ), .B(\regArr[9][7] ), .C(\regArr[10][7] ), 
        .D(\regArr[11][7] ), .S0(n204), .S1(n203), .Y(n199) );
  OAI2BB1X2M U279 ( .A0N(RdData_VLD), .A1N(n13), .B0(n245), .Y(n48) );
  INVX2M U280 ( .A(WrData[7]), .Y(n270) );
  INVX2M U281 ( .A(WrData[4]), .Y(n267) );
endmodule


module divmux ( F_EMPTY, Busy, clk, rst, REG2, PAR_EN, PAR_TYP, Prescale, 
        divratio, Empty_inv );
  input [7:0] REG2;
  output [5:0] Prescale;
  output [7:0] divratio;
  input F_EMPTY, Busy, clk, rst;
  output PAR_EN, PAR_TYP, Empty_inv;
  wire   int_Busy1, int_Busy, n1, n2, n3;

  NOR3BX4M U7 ( .AN(REG2[6]), .B(REG2[5]), .C(REG2[7]), .Y(n3) );
  NOR3BX4M U8 ( .AN(REG2[5]), .B(REG2[6]), .C(REG2[7]), .Y(n1) );
  DFFRQX1M int_Busy1_reg ( .D(int_Busy), .CK(clk), .RN(rst), .Q(int_Busy1) );
  DFFRQX1M int_Busy_reg ( .D(Busy), .CK(clk), .RN(rst), .Q(int_Busy) );
  INVX2M U3 ( .A(1'b1), .Y(divratio[3]) );
  INVX2M U5 ( .A(1'b1), .Y(divratio[4]) );
  INVX2M U9 ( .A(1'b1), .Y(divratio[5]) );
  INVX2M U11 ( .A(1'b1), .Y(divratio[6]) );
  INVX2M U13 ( .A(1'b1), .Y(divratio[7]) );
  BUFX4M U15 ( .A(REG2[2]), .Y(Prescale[0]) );
  NOR2X2M U16 ( .A(int_Busy1), .B(F_EMPTY), .Y(Empty_inv) );
  AND2X2M U17 ( .A(n1), .B(n2), .Y(divratio[2]) );
  AND2X2M U18 ( .A(n2), .B(n3), .Y(divratio[1]) );
  OAI21X2M U19 ( .A0(n1), .A1(n3), .B0(n2), .Y(divratio[0]) );
  NOR3X6M U20 ( .A(REG2[4]), .B(Prescale[1]), .C(REG2[2]), .Y(n2) );
  BUFX2M U21 ( .A(REG2[3]), .Y(Prescale[1]) );
  BUFX4M U22 ( .A(REG2[0]), .Y(PAR_EN) );
  BUFX2M U23 ( .A(REG2[1]), .Y(PAR_TYP) );
  BUFX10M U24 ( .A(REG2[7]), .Y(Prescale[5]) );
  BUFX10M U25 ( .A(REG2[6]), .Y(Prescale[4]) );
  BUFX10M U26 ( .A(REG2[5]), .Y(Prescale[3]) );
  CLKBUFX6M U27 ( .A(REG2[4]), .Y(Prescale[2]) );
endmodule


module TOP_SYS ( REF_CLK, RST, UART_CLK, RX_IN, TX_OUT );
  input REF_CLK, RST, UART_CLK, RX_IN;
  output TX_OUT;
  wire   SYNC_EN, SYNC_RST1, Rd_D_Vld, FIFO_FULL, OUT_Valid, WrEn, RdEn,
         Gate_EN, EN, WR_INC, SYNC_RST2, TX_CLK, Empty_inv, PAR_EN, PAR_TYP,
         Busy, RX_CLK, UNSYNC_Valid, RD_INC, F_EMPTY, ALU_CLK, n1, n2, n3, n4,
         n5, n6, n7, n8, n9;
  wire   [7:0] SYNC_DATA;
  wire   [15:0] ALU_OUT;
  wire   [7:0] Rd_D;
  wire   [3:0] FUN;
  wire   [7:0] Wr_D;
  wire   [7:0] WR_DATA;
  wire   [3:0] Addr;
  wire   [7:0] Div_Ratio1;
  wire   [7:0] RD_DATA;
  wire   [5:0] Prescale;
  wire   [7:0] UNSYNC_DATA;
  wire   [7:0] Div_Ratio2;
  wire   [7:0] Op_A;
  wire   [7:0] Op_B;
  wire   [7:0] REG2;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4;

  sysctrl U0_sysctrl ( .sync_en(SYNC_EN), .clk(REF_CLK), .rst(n8), .alu_out(
        ALU_OUT), .sync_data(SYNC_DATA), .read_data(Rd_D), .read_valid(
        Rd_D_Vld), .full(FIFO_FULL), .alu_valid(OUT_Valid), .alu_fun(FUN), 
        .write_en(WrEn), .read_en(RdEn), .gate_en(Gate_EN), .alu_en(EN), 
        .write_inc(WR_INC), .write_data(Wr_D), .write_fifo(WR_DATA), .address(
        Addr) );
  CLK_DIV_0 U0_CLK_DIV ( .i_ref_clk(UART_CLK), .i_rst(n4), .i_clk_en(1'b1), 
        .i_div_ratio(Div_Ratio1), .o_div_clk(TX_CLK) );
  UART_TX U0_UART_TX ( .P_DATA(RD_DATA), .DATA_VALID(Empty_inv), .PAR_EN(
        PAR_EN), .PAR_TYP(PAR_TYP), .CLK(TX_CLK), .RST(n4), .TX_OUT(TX_OUT), 
        .Busy(Busy) );
  Uart_Rx_Top U0_Uart_Rx_Top ( .RX_IN(n1), .CLK(RX_CLK), .RST(n4), .PAR_EN(
        PAR_EN), .PAR_TYP(PAR_TYP), .Prescale({Prescale[5:2], n3, Prescale[0]}), .data_valid(UNSYNC_Valid), .P_DATA(UNSYNC_DATA) );
  Pulse U0_Pulse ( .CLK(TX_CLK), .RST(n4), .sig(Busy), .pulse(RD_INC) );
  DATA_SYNC U0_DATA_SYNC ( .CLK(REF_CLK), .RST(n8), .bus_enable(UNSYNC_Valid), 
        .unsync_bus(UNSYNC_DATA), .sync_bus(SYNC_DATA), .enable_pulse(SYNC_EN)
         );
  FIFO U0_FIFO ( .WR_DATA(WR_DATA), .W_CLK(REF_CLK), .R_CLK(TX_CLK), .W_INC(
        WR_INC), .R_INC(RD_INC), .W_RST(n8), .R_RST(n4), .FULL(FIFO_FULL), 
        .EMPTY(F_EMPTY), .RD_DATA(RD_DATA) );
  RST_SYNC_0 U0_RST_SYNC ( .CLK(REF_CLK), .RST(RST), .SYNC_RST(SYNC_RST1) );
  RST_SYNC_1 U1_RST_SYNC ( .CLK(UART_CLK), .RST(RST), .SYNC_RST(SYNC_RST2) );
  CLK_DIV_1 U1_CLK_DIV ( .i_ref_clk(UART_CLK), .i_rst(n4), .i_clk_en(1'b1), 
        .i_div_ratio({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, Div_Ratio2[2:0]}), 
        .o_div_clk(RX_CLK) );
  CLK_GATE U0_CLK_GATE ( .CLK_EN(Gate_EN), .CLK(REF_CLK), .GATED_CLK(ALU_CLK)
         );
  ALU U0_ALU ( .A(Op_A), .B(Op_B), .EN(EN), .ALU_FUN(FUN), .CLK(ALU_CLK), 
        .RST(n8), .ALU_OUT(ALU_OUT), .OUT_VALID(OUT_Valid) );
  RegFile U0_RegFile ( .CLK(REF_CLK), .RST(n8), .WrEn(WrEn), .RdEn(RdEn), 
        .Address({Addr[3:2], n7, n6}), .WrData(Wr_D), .RdData(Rd_D), 
        .RdData_VLD(Rd_D_Vld), .REG0(Op_A), .REG1(Op_B), .REG2(REG2), .REG3(
        Div_Ratio1) );
  divmux U0_divmux ( .F_EMPTY(F_EMPTY), .Busy(Busy), .clk(TX_CLK), .rst(n4), 
        .REG2({REG2[7:4], n2, REG2[2:0]}), .PAR_EN(PAR_EN), .PAR_TYP(PAR_TYP), 
        .Prescale(Prescale), .divratio({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, Div_Ratio2[2:0]}), 
        .Empty_inv(Empty_inv) );
  INVX4M U1 ( .A(n5), .Y(n4) );
  INVX4M U2 ( .A(n9), .Y(n8) );
  BUFX2M U3 ( .A(Addr[0]), .Y(n6) );
  BUFX2M U4 ( .A(Addr[1]), .Y(n7) );
  BUFX2M U5 ( .A(Prescale[1]), .Y(n3) );
  BUFX4M U6 ( .A(RX_IN), .Y(n1) );
  INVX2M U7 ( .A(SYNC_RST2), .Y(n5) );
  INVX2M U8 ( .A(SYNC_RST1), .Y(n9) );
  BUFX2M U9 ( .A(REG2[3]), .Y(n2) );
endmodule

