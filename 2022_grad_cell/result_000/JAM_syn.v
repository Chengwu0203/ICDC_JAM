/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : S-2021.06-SP2
// Date      : Wed Mar 30 15:17:43 2022
/////////////////////////////////////////////////////////////


module JAM_DW01_add_0 ( A, B, CI, SUM, CO );
  input [9:0] A;
  input [9:0] B;
  output [9:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3;
  wire   [9:1] carry;

  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  AND2X2 U2 ( .A(A[8]), .B(n3), .Y(n2) );
  XOR2XL U3 ( .A(A[8]), .B(n3), .Y(SUM[8]) );
  XOR2XL U4 ( .A(A[7]), .B(carry[7]), .Y(SUM[7]) );
  XOR2XL U5 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
  XOR2X1 U6 ( .A(A[9]), .B(n2), .Y(SUM[9]) );
  AND2X2 U7 ( .A(A[7]), .B(carry[7]), .Y(n3) );
endmodule


module JAM ( CLK, RST, W, J, Cost, MatchCount, MinCost, Valid );
  output [2:0] W;
  output [2:0] J;
  input [6:0] Cost;
  output [3:0] MatchCount;
  output [9:0] MinCost;
  input CLK, RST;
  output Valid;
  wire   N90, N91, N92, N94, N95, N96, N97, N98, n847, n848, n849, n850, n851,
         n852, n853, n854, n855, N163, N164, N165, N166, \seq[7][3] ,
         \seq[7][2] , \seq[7][1] , \seq[7][0] , \seq[6][3] , \seq[6][2] ,
         \seq[6][1] , \seq[6][0] , \seq[5][3] , \seq[5][2] , \seq[5][1] ,
         \seq[5][0] , \seq[4][3] , \seq[4][2] , \seq[4][1] , \seq[4][0] ,
         \seq[3][3] , \seq[3][2] , \seq[3][1] , \seq[3][0] , \seq[2][3] ,
         \seq[2][2] , \seq[2][1] , \seq[2][0] , \seq[1][3] , \seq[1][2] ,
         \seq[1][1] , \seq[1][0] , \seq[0][3] , \seq[0][2] , \seq[0][1] ,
         \seq[0][0] , N167, N171, N172, N173, N174, N363, N364, N365, N366,
         N367, N368, N369, N370, N371, N372, N373, N374, N470, N471, N472,
         N473, N474, N475, N476, N477, N478, N479, N527, N528, N529, n64, n65,
         n66, n69, n71, n72, n73, n74, n75, n76, n77, n79, n80, n82, n83, n84,
         n85, n86, n87, n88, n90, n91, n92, n93, n96, n97, n99, n102, n103,
         n104, n106, n107, n108, n109, n111, n112, n113, n114, n115, n116,
         n118, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n142, n145, n146, n147, n148, n149, n151, n153, n154, n155,
         n157, n158, n160, n161, n162, n164, n165, n166, n168, n169, n170,
         n172, n173, n177, n179, n180, n181, n182, n185, n188, n189, n193,
         n194, n198, n199, n202, n204, n207, n209, n210, n211, n213, n216,
         n217, n220, n221, n224, n225, n227, n228, n229, n230, n232, n233,
         n234, n235, n237, n241, n242, n247, n248, n253, n254, n255, n256,
         n257, n259, n262, n264, n266, n267, n268, n269, n271, n272, n274,
         n275, n278, n280, n281, n283, n284, n285, n286, n287, n289, n290,
         n291, n292, n294, n295, n296, n297, n298, n299, n301, n302, n303,
         n304, n305, n306, n308, n309, n310, n311, n312, n313, n318, n319,
         n320, n328, n329, n330, n331, n332, n333, n334, n335, n336, n337,
         n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, n348,
         n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359,
         n360, n361, n362, n363, n364, n365, n366, n367, n368, n369, n370,
         n371, n372, n373, n374, n375, n377, n378, n379, n381, n383, n385,
         n388, n389, n390, n391, n392, n393, n394, n395, n396, n397, n406,
         n408, n409, n411, n412, n413, n414, n415, n417, n419, n420, n421,
         n423, n424, n425, n426, n427, n428, n429, n430, n431, n432, n433,
         n434, n435, n436, n437, n438, n439, n440, n441, n442, n443, n444,
         n445, n446, n447, n448, n449, n450, n451, n452, n453, n454, n455,
         n456, n457, n458, n459, n460, n461, n462, n463, n464, n465, n466,
         n467, n468, n469, n470, n471, n472, n473, n474, n475, n476, n477,
         n478, n479, n480, n481, n482, n483, n484, n485, n486, n487, n488,
         n489, n490, n491, n492, n493, n494, n495, n496, n497, n590, n591,
         n592, n593, n594, n595, n596, n597, n598, n599, n600, n601, n602,
         n603, n604, n605, n606, n607, n608, n609, n610, n611, n612, n613,
         n614, n615, n616, n617, n618, n619, n620, n621, n622, n623, n625,
         n627, n629, n631, n633, n644, n645, n646, n647, n648, n649, n650,
         n651, n652, n653, n654, n655, n656, n657, n658, n659, n660, n661,
         n662, n663, n664, n665, n666, n667, n668, n669, n670, n671, n672,
         n673, n674, n675, n676, n677, n678, n679, n680, n681, n682, n683,
         n684, n685, n686, n687, n688, n689, n690, n691, n692, n693, n694,
         n695, n696, n697, n698, n699, n700, n701, n702, n703, n704, n705,
         n706, n707, n708, n709, n710, n711, n712, n713, n714, n715, n716,
         n717, n718, n719, n720, n721, n722, n723, n724, n725, n726, n727,
         n728, n729, n730, n731, n732, n733, n734, n735, n736, n737, n738,
         n739, n740, n741, n742, n743, n744, n745, n746, n747, n748, n749,
         n750, n751, n752, n753, n754, n755, n756, n757, n758, n759, n760,
         n761, n762, n763, n764, n765, n766, n767, n768, n769, n770, n771,
         n772, n773, n774, n775, n776, n777, n778, n779, n780, n781, n782,
         n783, n784, n785, n786, n787, n788, n789, n790, n791, n792, n793,
         n794, n795, n796, n797, n798, n799, n800, n801, n802, n803, n804,
         n805, n806, n807, n808, n809, n810, n811, n812, n813, n814, n815,
         n816, n817, n818, n819, n820, n821, n822, n823, n824, n825, n826,
         n827, n828, n829, n830, n831, n832, n833, n834, n835, n836, n837,
         n838, n839, n840;
  wire   [2:0] ns;
  wire   [9:0] sum;

  OAI31X2 U279 ( .A0(n328), .A1(n812), .A2(n329), .B0(n764), .Y(n319) );
  JAM_DW01_add_0 add_246 ( .A(sum), .B({1'b0, 1'b0, 1'b0, Cost}), .CI(1'b0), 
        .SUM({N479, N478, N477, N476, N475, N474, N473, N472, N471, N470}) );
  DFFRX1 done_reg ( .D(n409), .CK(CLK), .RN(n785), .QN(n420) );
  DFFRX1 \cnt_reg[3]  ( .D(N166), .CK(CLK), .RN(n782), .Q(n611), .QN(n406) );
  DFFRX1 \com_num_reg[2]  ( .D(n494), .CK(CLK), .RN(n782), .QN(n419) );
  DFFSX1 \com_num_reg[3]  ( .D(n493), .CK(CLK), .SN(n784), .Q(n388), .QN(n613)
         );
  DFFRX1 \sum_reg[8]  ( .D(n447), .CK(CLK), .RN(n783), .Q(sum[8]), .QN(n600)
         );
  DFFRX1 \sum_reg[7]  ( .D(n448), .CK(CLK), .RN(n783), .Q(sum[7]), .QN(n599)
         );
  DFFSX1 \com_num_reg[0]  ( .D(n496), .CK(CLK), .SN(n784), .QN(n839) );
  DFFRX1 \sum_reg[6]  ( .D(n449), .CK(CLK), .RN(n783), .Q(sum[6]), .QN(n598)
         );
  DFFRX1 \sum_reg[5]  ( .D(n450), .CK(CLK), .RN(n783), .Q(sum[5]), .QN(n618)
         );
  DFFRX1 \com_num_reg[1]  ( .D(n495), .CK(CLK), .RN(n785), .QN(n609) );
  DFFRX1 \sum_reg[4]  ( .D(n451), .CK(CLK), .RN(n783), .Q(sum[4]), .QN(n595)
         );
  DFFRX1 \sum_reg[1]  ( .D(n454), .CK(CLK), .RN(n783), .Q(sum[1]), .QN(n596)
         );
  DFFRX1 \sum_reg[0]  ( .D(n455), .CK(CLK), .RN(n783), .Q(sum[0]), .QN(n622)
         );
  DFFRX1 \sum_reg[2]  ( .D(n453), .CK(CLK), .RN(n783), .Q(sum[2]), .QN(n619)
         );
  DFFRX1 \sum_reg[3]  ( .D(n452), .CK(CLK), .RN(n783), .Q(sum[3]), .QN(n620)
         );
  DFFRX1 \seq_reg[7][3]  ( .D(n486), .CK(CLK), .RN(n782), .Q(\seq[7][3] ), 
        .QN(n614) );
  DFFRX1 \seq_reg[2][3]  ( .D(n471), .CK(CLK), .RN(n782), .Q(\seq[2][3] ), 
        .QN(n594) );
  DFFRX1 \seq_reg[7][0]  ( .D(n489), .CK(CLK), .RN(n785), .Q(\seq[7][0] ), 
        .QN(n621) );
  DFFSX1 \seq_reg[6][0]  ( .D(n459), .CK(CLK), .SN(n785), .Q(\seq[6][0] ), 
        .QN(n610) );
  DFFRX1 \seq_reg[1][3]  ( .D(n476), .CK(CLK), .RN(n783), .Q(\seq[1][3] ), 
        .QN(n608) );
  DFFRX1 \seq_reg[0][3]  ( .D(n479), .CK(CLK), .RN(n784), .Q(\seq[0][3] ), 
        .QN(n615) );
  DFFSX1 \seq_reg[0][0]  ( .D(n482), .CK(CLK), .SN(n785), .Q(\seq[0][0] ), 
        .QN(n602) );
  DFFRX1 \seq_reg[1][0]  ( .D(n478), .CK(CLK), .RN(n782), .Q(\seq[1][0] ), 
        .QN(n605) );
  DFFRX1 \seq_reg[7][2]  ( .D(n487), .CK(CLK), .RN(n782), .Q(\seq[7][2] ), 
        .QN(n612) );
  DFFSX1 \seq_reg[2][2]  ( .D(n472), .CK(CLK), .SN(n785), .Q(\seq[2][2] ), 
        .QN(n607) );
  DFFRX1 \cnt_reg[2]  ( .D(N165), .CK(CLK), .RN(n783), .Q(N92), .QN(n413) );
  DFFSX1 \seq_reg[1][2]  ( .D(n477), .CK(CLK), .SN(n785), .Q(\seq[1][2] ), 
        .QN(n591) );
  DFFSX1 \seq_reg[0][2]  ( .D(n480), .CK(CLK), .SN(n785), .Q(\seq[0][2] ), 
        .QN(n593) );
  DFFRX1 \seq_reg[2][1]  ( .D(n473), .CK(CLK), .RN(n785), .Q(\seq[2][1] ), 
        .QN(n604) );
  DFFSX1 \seq_reg[1][1]  ( .D(n483), .CK(CLK), .SN(n785), .Q(\seq[1][1] ), 
        .QN(n592) );
  DFFSX1 \seq_reg[0][1]  ( .D(n481), .CK(CLK), .SN(n785), .Q(\seq[0][1] ), 
        .QN(n590) );
  DFFRX1 \cs_reg[1]  ( .D(ns[1]), .CK(CLK), .RN(n782), .Q(n601), .QN(n397) );
  DFFRX1 \cs_reg[0]  ( .D(ns[0]), .CK(CLK), .RN(n782), .Q(n597), .QN(n412) );
  DFFRX1 \pos_reg[2]  ( .D(n484), .CK(CLK), .RN(n783), .Q(N95), .QN(n421) );
  DFFRX1 \seq_reg[7][1]  ( .D(n488), .CK(CLK), .RN(n784), .Q(\seq[7][1] ), 
        .QN(n617) );
  DFFRX1 \cnt_reg[1]  ( .D(N164), .CK(CLK), .RN(n782), .Q(N91), .QN(n414) );
  DFFRX1 \seq_reg[5][0]  ( .D(n463), .CK(CLK), .RN(n782), .Q(\seq[5][0] ), 
        .QN(n616) );
  DFFRX1 \seq_reg[6][2]  ( .D(n457), .CK(CLK), .RN(n782), .Q(\seq[6][2] ), 
        .QN(n606) );
  DFFRX1 \cnt_reg[0]  ( .D(N163), .CK(CLK), .RN(n785), .Q(N90), .QN(n415) );
  DFFRX1 \sum_reg[9]  ( .D(n446), .CK(CLK), .RN(n783), .Q(sum[9]), .QN(n603)
         );
  DFFSX1 \MinCost_reg[8]  ( .D(n443), .CK(CLK), .SN(n784), .QN(n390) );
  DFFSX1 \MinCost_reg[9]  ( .D(n444), .CK(CLK), .SN(n784), .QN(n389) );
  DFFSX1 \MinCost_reg[7]  ( .D(n442), .CK(CLK), .SN(n785), .Q(n848), .QN(n391)
         );
  DFFSX1 \MinCost_reg[6]  ( .D(n441), .CK(CLK), .SN(n784), .Q(n849), .QN(n424)
         );
  DFFSX1 \MinCost_reg[5]  ( .D(n440), .CK(CLK), .SN(n784), .Q(n850), .QN(n392)
         );
  DFFSX1 \MinCost_reg[4]  ( .D(n439), .CK(CLK), .SN(n784), .Q(n851), .QN(n425)
         );
  DFFSX1 \MatchCount_reg[0]  ( .D(n435), .CK(CLK), .SN(n784), .QN(n430) );
  DFFSX1 \MinCost_reg[1]  ( .D(n436), .CK(CLK), .SN(n784), .QN(n395) );
  DFFSX1 \MinCost_reg[2]  ( .D(n437), .CK(CLK), .SN(n784), .Q(n853), .QN(n394)
         );
  DFFSX1 \MinCost_reg[3]  ( .D(n438), .CK(CLK), .SN(n785), .Q(n852), .QN(n393)
         );
  DFFSX1 \MinCost_reg[0]  ( .D(n445), .CK(CLK), .SN(n784), .Q(n854), .QN(n426)
         );
  DFFRX1 \MatchCount_reg[1]  ( .D(n434), .CK(CLK), .RN(n784), .QN(n429) );
  DFFRX1 \MatchCount_reg[3]  ( .D(n432), .CK(CLK), .RN(n783), .Q(n847), .QN(
        n427) );
  DFFRX1 \MatchCount_reg[2]  ( .D(n433), .CK(CLK), .RN(n784), .QN(n428) );
  DFFRX1 Valid_reg ( .D(n408), .CK(CLK), .RN(n782), .Q(n855), .QN(n396) );
  TLATSRX1 \W_reg[0]  ( .G(n781), .D(N90), .RN(n431), .SN(1'b1), .QN(n633) );
  TLATSRX1 \W_reg[1]  ( .G(n781), .D(N91), .RN(n431), .SN(1'b1), .QN(n631) );
  TLATSRX1 \W_reg[2]  ( .G(n781), .D(n823), .RN(n431), .SN(1'b1), .QN(n629) );
  TLATSRX1 \J_reg[0]  ( .G(n781), .D(N529), .RN(n431), .SN(1'b1), .QN(n627) );
  TLATSRX1 \J_reg[1]  ( .G(n781), .D(N528), .RN(n431), .SN(1'b1), .QN(n625) );
  DFFRX1 \com_pos_reg[1]  ( .D(n491), .CK(CLK), .RN(n785), .Q(N97), .QN(n417)
         );
  TLATSRX1 \J_reg[2]  ( .G(n781), .D(N527), .RN(n431), .SN(1'b1), .QN(n623) );
  DFFSX1 \seq_reg[5][1]  ( .D(n460), .CK(CLK), .SN(n786), .Q(\seq[5][1] ), 
        .QN(n749) );
  DFFSX1 \seq_reg[4][0]  ( .D(n467), .CK(CLK), .SN(n786), .Q(\seq[4][0] ), 
        .QN(n748) );
  DFFRX1 \seq_reg[3][0]  ( .D(n470), .CK(CLK), .RN(n786), .Q(\seq[3][0] ), 
        .QN(n838) );
  DFFRX1 \seq_reg[6][3]  ( .D(n456), .CK(CLK), .RN(n786), .Q(\seq[6][3] ), 
        .QN(n834) );
  DFFRX1 \seq_reg[6][1]  ( .D(n458), .CK(CLK), .RN(n786), .Q(\seq[6][1] ), 
        .QN(n837) );
  DFFRX1 \seq_reg[5][3]  ( .D(n462), .CK(CLK), .RN(n786), .Q(\seq[5][3] ), 
        .QN(n754) );
  DFFRX1 \seq_reg[5][2]  ( .D(n461), .CK(CLK), .RN(n786), .Q(\seq[5][2] ), 
        .QN(n752) );
  DFFRX1 \cs_reg[2]  ( .D(ns[2]), .CK(CLK), .RN(n786), .Q(n824), .QN(n411) );
  DFFRX2 \pos_reg[1]  ( .D(n485), .CK(CLK), .RN(n786), .Q(N94), .QN(n669) );
  DFFRX2 \com_pos_reg[0]  ( .D(n492), .CK(CLK), .RN(n786), .Q(N96), .QN(n691)
         );
  DFFRX2 \com_pos_reg[2]  ( .D(n490), .CK(CLK), .RN(n786), .Q(N98), .QN(n693)
         );
  DFFSX2 \seq_reg[2][0]  ( .D(n474), .CK(CLK), .SN(n786), .Q(\seq[2][0] ), 
        .QN(n832) );
  DFFRX2 \seq_reg[3][1]  ( .D(n475), .CK(CLK), .RN(n786), .Q(\seq[3][1] ), 
        .QN(n829) );
  DFFSX2 \seq_reg[3][2]  ( .D(n469), .CK(CLK), .SN(n786), .Q(\seq[3][2] ), 
        .QN(n836) );
  DFFRX2 \seq_reg[3][3]  ( .D(n468), .CK(CLK), .RN(n786), .Q(\seq[3][3] ), 
        .QN(n835) );
  DFFRX1 \seq_reg[4][3]  ( .D(n466), .CK(CLK), .RN(n786), .Q(\seq[4][3] ), 
        .QN(n753) );
  DFFRX1 \seq_reg[4][2]  ( .D(n465), .CK(CLK), .RN(n786), .Q(\seq[4][2] ), 
        .QN(n751) );
  DFFSX1 \seq_reg[4][1]  ( .D(n464), .CK(CLK), .SN(n786), .Q(\seq[4][1] ), 
        .QN(n750) );
  DFFRX2 \pos_reg[0]  ( .D(n497), .CK(CLK), .RN(n786), .Q(n670), .QN(n423) );
  OAI211X1 U506 ( .A0(n202), .A1(n813), .B0(n794), .C0(n795), .Y(n177) );
  AOI211XL U507 ( .A0(\seq[3][1] ), .A1(n604), .B0(n832), .C0(\seq[3][0] ), 
        .Y(n363) );
  INVX4 U508 ( .A(RST), .Y(n786) );
  AND2XL U509 ( .A(N94), .B(N95), .Y(n716) );
  INVX1 U510 ( .A(N95), .Y(n668) );
  OAI22X1 U511 ( .A0(n713), .A1(n714), .B0(N92), .B1(n712), .Y(N167) );
  NOR2X2 U512 ( .A(N90), .B(N91), .Y(n707) );
  NOR2X2 U513 ( .A(n423), .B(N94), .Y(n662) );
  OAI22X1 U514 ( .A0(n668), .A1(n655), .B0(N95), .B1(n654), .Y(N173) );
  NOR2X2 U515 ( .A(n715), .B(N91), .Y(n708) );
  NOR2X2 U516 ( .A(n755), .B(n423), .Y(n740) );
  NOR2X2 U517 ( .A(n414), .B(n715), .Y(n710) );
  NOR2X2 U518 ( .A(n669), .B(n423), .Y(n664) );
  INVX12 U519 ( .A(n623), .Y(J[2]) );
  NOR2X2 U520 ( .A(N96), .B(N97), .Y(n684) );
  NOR2X2 U521 ( .A(n692), .B(n691), .Y(n687) );
  NOR2X2 U522 ( .A(n755), .B(n670), .Y(n741) );
  NOR2X2 U523 ( .A(n414), .B(N90), .Y(n711) );
  INVX12 U524 ( .A(n625), .Y(J[1]) );
  OAI22X1 U525 ( .A0(n714), .A1(n701), .B0(N92), .B1(n700), .Y(N528) );
  INVX12 U526 ( .A(n627), .Y(J[0]) );
  OAI22X1 U527 ( .A0(n714), .A1(n705), .B0(N92), .B1(n704), .Y(N529) );
  INVX12 U528 ( .A(n629), .Y(W[2]) );
  INVX12 U529 ( .A(n631), .Y(W[1]) );
  INVX12 U530 ( .A(n633), .Y(W[0]) );
  BUFX12 U531 ( .A(n855), .Y(Valid) );
  INVX16 U532 ( .A(n428), .Y(MatchCount[2]) );
  BUFX12 U533 ( .A(n847), .Y(MatchCount[3]) );
  INVX16 U534 ( .A(n429), .Y(MatchCount[1]) );
  BUFX12 U535 ( .A(n854), .Y(MinCost[0]) );
  BUFX12 U536 ( .A(n852), .Y(MinCost[3]) );
  BUFX12 U537 ( .A(n853), .Y(MinCost[2]) );
  INVX16 U538 ( .A(n395), .Y(MinCost[1]) );
  INVX16 U539 ( .A(n430), .Y(MatchCount[0]) );
  BUFX12 U540 ( .A(n851), .Y(MinCost[4]) );
  BUFX12 U541 ( .A(n850), .Y(MinCost[5]) );
  BUFX12 U542 ( .A(n849), .Y(MinCost[6]) );
  BUFX12 U543 ( .A(n848), .Y(MinCost[7]) );
  INVX16 U544 ( .A(n389), .Y(MinCost[9]) );
  INVX12 U545 ( .A(n390), .Y(MinCost[8]) );
  NOR2X2 U546 ( .A(n691), .B(N97), .Y(n685) );
  NOR2X2 U547 ( .A(n692), .B(N96), .Y(n688) );
  NOR2X2 U548 ( .A(n669), .B(n670), .Y(n665) );
  OAI22X1 U549 ( .A0(n714), .A1(n697), .B0(N92), .B1(n696), .Y(N527) );
  AO22XL U550 ( .A0(n775), .A1(n708), .B0(n771), .B1(n707), .Y(n699) );
  AO22XL U551 ( .A0(n776), .A1(n708), .B0(n770), .B1(n707), .Y(n703) );
  AO22XL U552 ( .A0(n772), .A1(n708), .B0(n773), .B1(n707), .Y(n695) );
  INVXL U553 ( .A(N167), .Y(n822) );
  AO22XL U554 ( .A0(n777), .A1(n708), .B0(n778), .B1(n707), .Y(n709) );
  AO22XL U555 ( .A0(n772), .A1(n685), .B0(n773), .B1(n684), .Y(n680) );
  AO22XL U556 ( .A0(n777), .A1(n685), .B0(n778), .B1(n684), .Y(n686) );
  AO22XL U557 ( .A0(n776), .A1(n685), .B0(n770), .B1(n684), .Y(n672) );
  AO22XL U558 ( .A0(n775), .A1(n685), .B0(n771), .B1(n684), .Y(n676) );
  AOI22XL U559 ( .A0(n770), .A1(n741), .B0(n776), .B1(n740), .Y(n735) );
  AOI22XL U560 ( .A0(n778), .A1(n741), .B0(n777), .B1(n740), .Y(n746) );
  AOI22XL U561 ( .A0(n777), .A1(n741), .B0(n780), .B1(n740), .Y(n733) );
  AOI22XL U562 ( .A0(n775), .A1(n741), .B0(n779), .B1(n740), .Y(n729) );
  AOI22XL U563 ( .A0(n773), .A1(n741), .B0(n772), .B1(n740), .Y(n739) );
  AOI22XL U564 ( .A0(n772), .A1(n741), .B0(n774), .B1(n740), .Y(n731) );
  AOI22XL U565 ( .A0(n771), .A1(n741), .B0(n775), .B1(n740), .Y(n737) );
  AO22XL U566 ( .A0(\seq[5][1] ), .A1(n708), .B0(\seq[4][1] ), .B1(n707), .Y(
        n698) );
  AO22XL U567 ( .A0(\seq[5][0] ), .A1(n708), .B0(\seq[4][0] ), .B1(n707), .Y(
        n702) );
  AO22XL U568 ( .A0(\seq[5][2] ), .A1(n708), .B0(\seq[4][2] ), .B1(n707), .Y(
        n694) );
  AO22XL U569 ( .A0(\seq[5][3] ), .A1(n708), .B0(\seq[4][3] ), .B1(n707), .Y(
        n706) );
  AO22XL U570 ( .A0(\seq[5][3] ), .A1(n685), .B0(\seq[4][3] ), .B1(n684), .Y(
        n683) );
  AO22XL U571 ( .A0(\seq[5][2] ), .A1(n685), .B0(\seq[4][2] ), .B1(n684), .Y(
        n679) );
  AO22XL U572 ( .A0(\seq[5][0] ), .A1(n685), .B0(\seq[4][0] ), .B1(n684), .Y(
        n671) );
  AO22XL U573 ( .A0(\seq[5][1] ), .A1(n685), .B0(\seq[4][1] ), .B1(n684), .Y(
        n675) );
  AOI22XL U574 ( .A0(n776), .A1(n741), .B0(\seq[2][0] ), .B1(n740), .Y(n727)
         );
  NAND4BX1 U575 ( .AN(n767), .B(n227), .C(n794), .D(n795), .Y(n207) );
  NAND2X1 U576 ( .A(n794), .B(n172), .Y(n151) );
  NOR2X1 U577 ( .A(n173), .B(n811), .Y(n180) );
  CLKINVX1 U578 ( .A(n185), .Y(n826) );
  OAI222XL U579 ( .A0(n603), .A1(MinCost[9]), .B0(MinCost[8]), .B1(n130), .C0(
        n131), .C1(n113), .Y(n104) );
  NAND2X1 U580 ( .A(n790), .B(n296), .Y(n281) );
  NAND2X1 U581 ( .A(n790), .B(n294), .Y(n287) );
  OAI22XL U582 ( .A0(n383), .A1(n812), .B0(n71), .B1(n818), .Y(n379) );
  OAI21XL U583 ( .A0(\seq[4][3] ), .A1(n835), .B0(n365), .Y(n346) );
  CLKBUFX3 U584 ( .A(n66), .Y(n764) );
  OAI21XL U585 ( .A0(\seq[6][3] ), .A1(n614), .B0(n348), .Y(n90) );
  CLKINVX1 U586 ( .A(n413), .Y(n823) );
  NOR3X2 U587 ( .A(n691), .B(n693), .C(n828), .Y(n185) );
  CLKBUFX3 U588 ( .A(n406), .Y(n781) );
  NOR3X2 U589 ( .A(n691), .B(n417), .C(N98), .Y(n234) );
  CLKINVX1 U590 ( .A(n766), .Y(n794) );
  CLKINVX1 U591 ( .A(n166), .Y(n799) );
  CLKINVX1 U592 ( .A(n162), .Y(n801) );
  CLKINVX1 U593 ( .A(n158), .Y(n803) );
  CLKINVX1 U594 ( .A(n170), .Y(n797) );
  CLKINVX1 U595 ( .A(n161), .Y(n815) );
  CLKINVX1 U596 ( .A(n155), .Y(n816) );
  CLKINVX1 U597 ( .A(n169), .Y(n814) );
  CLKINVX1 U598 ( .A(n165), .Y(n805) );
  CLKINVX1 U599 ( .A(n102), .Y(n809) );
  INVX3 U600 ( .A(n769), .Y(n810) );
  NOR2X1 U601 ( .A(n811), .B(n257), .Y(n256) );
  CLKINVX1 U602 ( .A(n763), .Y(n812) );
  CLKINVX1 U603 ( .A(n177), .Y(n792) );
  CLKINVX1 U604 ( .A(n765), .Y(n811) );
  INVX3 U605 ( .A(n180), .Y(n795) );
  CLKINVX1 U606 ( .A(n229), .Y(n813) );
  CLKBUFX3 U607 ( .A(n181), .Y(n766) );
  NOR2X1 U608 ( .A(n280), .B(n811), .Y(n181) );
  CLKINVX1 U609 ( .A(n207), .Y(n791) );
  AOI21X2 U610 ( .A0(n318), .A1(n280), .B0(n813), .Y(n313) );
  NAND2X1 U611 ( .A(n313), .B(n318), .Y(n312) );
  CLKINVX1 U612 ( .A(n151), .Y(n793) );
  CLKINVX1 U613 ( .A(n340), .Y(n807) );
  NOR2X1 U614 ( .A(n766), .B(n232), .Y(n230) );
  NAND2BX1 U615 ( .AN(n318), .B(n313), .Y(n311) );
  CLKBUFX3 U616 ( .A(n782), .Y(n785) );
  CLKBUFX3 U617 ( .A(n782), .Y(n784) );
  CLKBUFX3 U618 ( .A(n782), .Y(n783) );
  INVXL U619 ( .A(N528), .Y(n806) );
  NAND2X1 U620 ( .A(n763), .B(n319), .Y(n320) );
  OAI221XL U621 ( .A0(N171), .A1(n822), .B0(N172), .B1(n820), .C0(n335), .Y(
        n330) );
  OAI22XL U622 ( .A0(N527), .A1(n802), .B0(n336), .B1(n337), .Y(n335) );
  NOR2XL U623 ( .A(N173), .B(n806), .Y(n337) );
  AOI211XL U624 ( .A0(N173), .A1(n806), .B0(n821), .C0(N174), .Y(n336) );
  OAI221XL U625 ( .A0(n821), .A1(n320), .B0(n839), .B1(n319), .C0(n764), .Y(
        n496) );
  OAI221XL U626 ( .A0(n822), .A1(n320), .B0(n613), .B1(n319), .C0(n764), .Y(
        n493) );
  OAI22XL U627 ( .A0(n609), .A1(n319), .B0(n806), .B1(n320), .Y(n495) );
  INVXL U628 ( .A(N527), .Y(n820) );
  INVXL U629 ( .A(N529), .Y(n821) );
  OAI2BB2XL U630 ( .B0(n598), .B1(n768), .A0N(N476), .A1N(n146), .Y(n449) );
  OAI2BB2XL U631 ( .B0(n618), .B1(n768), .A0N(N475), .A1N(n146), .Y(n450) );
  OAI2BB2XL U632 ( .B0(n595), .B1(n768), .A0N(N474), .A1N(n146), .Y(n451) );
  OAI2BB2XL U633 ( .B0(n620), .B1(n768), .A0N(N473), .A1N(n146), .Y(n452) );
  CLKINVX1 U634 ( .A(N172), .Y(n802) );
  INVXL U635 ( .A(N173), .Y(n800) );
  OAI22XL U636 ( .A0(n750), .A1(n207), .B0(n791), .B1(n209), .Y(n464) );
  AOI221XL U637 ( .A0(n767), .A1(n771), .B0(n766), .B1(n779), .C0(n211), .Y(
        n209) );
  OAI222XL U638 ( .A0(n799), .A1(n827), .B0(n213), .B1(n805), .C0(n592), .C1(
        n795), .Y(n211) );
  NOR2X1 U639 ( .A(n800), .B(n764), .Y(n166) );
  OAI2BB2XL U640 ( .B0(n619), .B1(n768), .A0N(N472), .A1N(n146), .Y(n453) );
  OAI22XL U641 ( .A0(n749), .A1(n177), .B0(n792), .B1(n179), .Y(n460) );
  AOI221XL U642 ( .A0(n180), .A1(n771), .B0(n766), .B1(n775), .C0(n182), .Y(
        n179) );
  OAI22XL U643 ( .A0(n799), .A1(n826), .B0(n185), .B1(n805), .Y(n182) );
  CLKINVX1 U644 ( .A(N171), .Y(n804) );
  OAI22XL U645 ( .A0(n837), .A1(n151), .B0(n793), .B1(n164), .Y(n458) );
  AOI222XL U646 ( .A0(n765), .A1(n771), .B0(n165), .B1(n825), .C0(n166), .C1(
        n157), .Y(n164) );
  OAI22XL U647 ( .A0(n230), .A1(n829), .B0(n232), .B1(n274), .Y(n475) );
  AOI221XL U648 ( .A0(n767), .A1(n775), .B0(n234), .B1(n166), .C0(n275), .Y(
        n274) );
  OAI222XL U649 ( .A0(n234), .A1(n805), .B0(n590), .B1(n237), .C0(n604), .C1(
        n795), .Y(n275) );
  OAI2BB2XL U650 ( .B0(n596), .B1(n768), .A0N(N471), .A1N(n146), .Y(n454) );
  NOR2X1 U651 ( .A(n802), .B(n764), .Y(n162) );
  OAI22XL U652 ( .A0(n751), .A1(n207), .B0(n791), .B1(n216), .Y(n465) );
  AOI221XL U653 ( .A0(n767), .A1(n773), .B0(n766), .B1(n774), .C0(n217), .Y(
        n216) );
  OAI222XL U654 ( .A0(n801), .A1(n827), .B0(n213), .B1(n815), .C0(n591), .C1(
        n795), .Y(n217) );
  NOR2X1 U655 ( .A(n804), .B(n764), .Y(n158) );
  OAI22XL U656 ( .A0(n753), .A1(n207), .B0(n791), .B1(n220), .Y(n466) );
  AOI221XL U657 ( .A0(n767), .A1(n778), .B0(n766), .B1(n780), .C0(n221), .Y(
        n220) );
  OAI222XL U658 ( .A0(n803), .A1(n827), .B0(n213), .B1(n816), .C0(n608), .C1(
        n795), .Y(n221) );
  OAI221XL U659 ( .A0(n800), .A1(n253), .B0(n647), .B1(n254), .C0(n262), .Y(
        n473) );
  AOI22X1 U660 ( .A0(N372), .A1(n256), .B0(n257), .B1(n779), .Y(n262) );
  INVXL U661 ( .A(N174), .Y(n798) );
  NOR2X1 U662 ( .A(n798), .B(n764), .Y(n170) );
  OAI22XL U663 ( .A0(n752), .A1(n177), .B0(n792), .B1(n188), .Y(n461) );
  AOI221XL U664 ( .A0(n180), .A1(n773), .B0(n766), .B1(n772), .C0(n189), .Y(
        n188) );
  OAI22XL U665 ( .A0(n801), .A1(n826), .B0(n185), .B1(n815), .Y(n189) );
  OAI22XL U666 ( .A0(n754), .A1(n177), .B0(n792), .B1(n193), .Y(n462) );
  AOI221XL U667 ( .A0(n180), .A1(n778), .B0(n766), .B1(n777), .C0(n194), .Y(
        n193) );
  OAI22XL U668 ( .A0(n803), .A1(n826), .B0(n185), .B1(n816), .Y(n194) );
  OAI22XL U669 ( .A0(n616), .A1(n177), .B0(n792), .B1(n198), .Y(n463) );
  AOI221XL U670 ( .A0(n180), .A1(n770), .B0(n766), .B1(n776), .C0(n199), .Y(
        n198) );
  OAI22XL U671 ( .A0(n797), .A1(n826), .B0(n185), .B1(n814), .Y(n199) );
  OAI22XL U672 ( .A0(n606), .A1(n151), .B0(n793), .B1(n160), .Y(n457) );
  AOI222XL U673 ( .A0(n765), .A1(n773), .B0(n161), .B1(n825), .C0(n162), .C1(
        n157), .Y(n160) );
  OAI22XL U674 ( .A0(n834), .A1(n151), .B0(n793), .B1(n153), .Y(n456) );
  AOI222XL U675 ( .A0(n765), .A1(n778), .B0(n155), .B1(n825), .C0(n157), .C1(
        n158), .Y(n153) );
  OAI22XL U676 ( .A0(n230), .A1(n835), .B0(n232), .B1(n233), .Y(n468) );
  AOI221XL U677 ( .A0(n767), .A1(n777), .B0(n234), .B1(n158), .C0(n235), .Y(
        n233) );
  OAI222XL U678 ( .A0(n234), .A1(n816), .B0(n615), .B1(n237), .C0(n594), .C1(
        n795), .Y(n235) );
  OAI22XL U679 ( .A0(n230), .A1(n836), .B0(n232), .B1(n241), .Y(n469) );
  AOI221XL U680 ( .A0(n767), .A1(n772), .B0(n234), .B1(n162), .C0(n242), .Y(
        n241) );
  OAI222XL U681 ( .A0(n234), .A1(n815), .B0(n593), .B1(n237), .C0(n607), .C1(
        n795), .Y(n242) );
  OAI22XL U682 ( .A0(n230), .A1(n838), .B0(n232), .B1(n247), .Y(n470) );
  AOI221XL U683 ( .A0(n767), .A1(n776), .B0(n234), .B1(n170), .C0(n248), .Y(
        n247) );
  OAI222XL U684 ( .A0(n234), .A1(n814), .B0(n602), .B1(n237), .C0(n832), .C1(
        n795), .Y(n248) );
  OAI22XL U685 ( .A0(n610), .A1(n151), .B0(n793), .B1(n168), .Y(n459) );
  AOI222XL U686 ( .A0(n765), .A1(n770), .B0(n169), .B1(n825), .C0(n170), .C1(
        n157), .Y(n168) );
  OAI222XL U687 ( .A0(n802), .A1(n311), .B0(n644), .B1(n312), .C0(n313), .C1(
        n612), .Y(n487) );
  OAI222XL U688 ( .A0(n804), .A1(n311), .B0(n645), .B1(n312), .C0(n313), .C1(
        n614), .Y(n486) );
  OAI221XL U689 ( .A0(n804), .A1(n253), .B0(n645), .B1(n254), .C0(n255), .Y(
        n471) );
  AOI22X1 U690 ( .A0(N374), .A1(n256), .B0(n257), .B1(n780), .Y(n255) );
  OAI221XL U691 ( .A0(n802), .A1(n253), .B0(n644), .B1(n254), .C0(n259), .Y(
        n472) );
  AOI22X1 U692 ( .A0(N373), .A1(n256), .B0(n257), .B1(n774), .Y(n259) );
  NOR2X1 U693 ( .A(n644), .B(n764), .Y(n161) );
  NOR2X1 U694 ( .A(n645), .B(n764), .Y(n155) );
  NOR2X1 U695 ( .A(n646), .B(n764), .Y(n169) );
  NOR2X1 U696 ( .A(n647), .B(n764), .Y(n165) );
  CLKINVX1 U697 ( .A(n725), .Y(n755) );
  OAI31X1 U698 ( .A0(n96), .A1(n597), .A2(n85), .B0(n810), .Y(n102) );
  CLKBUFX3 U699 ( .A(n118), .Y(n769) );
  NOR3X1 U700 ( .A(n85), .B(n597), .C(n104), .Y(n118) );
  CLKINVX1 U701 ( .A(n93), .Y(n808) );
  OA21XL U702 ( .A0(n96), .A1(MatchCount[0]), .B0(n102), .Y(n99) );
  OA21XL U703 ( .A0(n96), .A1(MatchCount[1]), .B0(n99), .Y(n97) );
  CLKINVX1 U704 ( .A(n140), .Y(n840) );
  AOI221X4 U705 ( .A0(n268), .A1(n229), .B0(n765), .B1(n269), .C0(n787), .Y(
        n257) );
  OAI21XL U706 ( .A0(n272), .A1(n670), .B0(n267), .Y(n268) );
  CLKINVX1 U707 ( .A(n271), .Y(n787) );
  NAND2X1 U708 ( .A(n82), .B(n670), .Y(n280) );
  NAND2X1 U709 ( .A(n765), .B(n299), .Y(n271) );
  NAND4BX1 U710 ( .AN(n228), .B(n173), .C(n204), .D(n280), .Y(n299) );
  CLKINVX1 U711 ( .A(n747), .Y(n756) );
  NOR2X1 U712 ( .A(n764), .B(n257), .Y(n266) );
  NAND2BX1 U713 ( .AN(n267), .B(n266), .Y(n253) );
  NAND2X1 U714 ( .A(n266), .B(n267), .Y(n254) );
  CLKBUFX3 U715 ( .A(n284), .Y(n763) );
  NOR2X1 U716 ( .A(n597), .B(n64), .Y(n284) );
  NOR2X2 U717 ( .A(n764), .B(n830), .Y(n229) );
  CLKINVX1 U718 ( .A(n281), .Y(n789) );
  CLKINVX1 U719 ( .A(n287), .Y(n788) );
  CLKINVX1 U720 ( .A(n297), .Y(n790) );
  OAI211X1 U721 ( .A0(n811), .A1(n272), .B0(n298), .C0(n271), .Y(n297) );
  NAND3X1 U722 ( .A(n830), .B(n670), .C(n763), .Y(n298) );
  NOR2BX1 U723 ( .AN(n204), .B(n185), .Y(n202) );
  CLKBUFX3 U724 ( .A(n154), .Y(n765) );
  NOR2X1 U725 ( .A(n65), .B(n597), .Y(n154) );
  NAND4BX1 U726 ( .AN(n106), .B(n107), .C(n108), .D(n109), .Y(n96) );
  NAND3BX1 U727 ( .AN(n114), .B(n115), .C(n116), .Y(n106) );
  NOR4X1 U728 ( .A(n840), .B(n111), .C(n112), .D(n113), .Y(n109) );
  CLKINVX1 U729 ( .A(n84), .Y(n830) );
  OAI21XL U730 ( .A0(n213), .A1(n228), .B0(n229), .Y(n227) );
  NAND2X1 U731 ( .A(n228), .B(n765), .Y(n237) );
  AO21X1 U732 ( .A0(n825), .A1(n173), .B0(n813), .Y(n172) );
  NOR4X1 U733 ( .A(n90), .B(n87), .C(n88), .D(n305), .Y(n303) );
  AOI211X1 U734 ( .A0(n775), .A1(n590), .B0(n602), .C0(n776), .Y(n355) );
  NAND3X1 U735 ( .A(n309), .B(n310), .C(n807), .Y(n88) );
  OAI2BB1X1 U736 ( .A0N(n352), .A1N(n778), .B0(n353), .Y(n340) );
  OAI21XL U737 ( .A0(n778), .A1(n352), .B0(n608), .Y(n353) );
  OAI21XL U738 ( .A0(n772), .A1(n593), .B0(n354), .Y(n352) );
  OAI22XL U739 ( .A0(n773), .A1(n591), .B0(n355), .B1(n356), .Y(n354) );
  AND2X2 U740 ( .A(n278), .B(n271), .Y(n232) );
  OAI21XL U741 ( .A0(n269), .A1(n234), .B0(n229), .Y(n278) );
  NAND2BX1 U742 ( .AN(n346), .B(n347), .Y(n87) );
  CLKBUFX3 U743 ( .A(n210), .Y(n767) );
  NOR2X1 U744 ( .A(n204), .B(n811), .Y(n210) );
  XNOR2X1 U745 ( .A(n823), .B(n80), .Y(n76) );
  AOI211X1 U746 ( .A0(n670), .A1(n831), .B0(n82), .C0(n83), .Y(n80) );
  NOR2X1 U747 ( .A(n775), .B(n590), .Y(n356) );
  NOR2X1 U748 ( .A(n84), .B(n670), .Y(n83) );
  OAI21X1 U749 ( .A0(n777), .A1(n594), .B0(n357), .Y(n310) );
  OAI221XL U750 ( .A0(n780), .A1(n608), .B0(n774), .B1(n591), .C0(n358), .Y(
        n357) );
  OAI22XL U751 ( .A0(n772), .A1(n607), .B0(n359), .B1(n360), .Y(n358) );
  NOR2X1 U752 ( .A(n779), .B(n592), .Y(n360) );
  CLKINVX1 U753 ( .A(n305), .Y(n833) );
  CLKINVX1 U754 ( .A(n379), .Y(n796) );
  AOI2BB1X1 U755 ( .A0N(N91), .A1N(n796), .B0(N163), .Y(n381) );
  OAI2BB1X1 U756 ( .A0N(n375), .A1N(n611), .B0(n377), .Y(N166) );
  NAND4X1 U757 ( .A(n378), .B(n781), .C(n379), .D(n823), .Y(n377) );
  OAI21XL U758 ( .A0(n823), .A1(n796), .B0(n381), .Y(n375) );
  NOR2X1 U759 ( .A(n796), .B(N90), .Y(N163) );
  CLKINVX1 U760 ( .A(n157), .Y(n825) );
  NAND2X1 U761 ( .A(n824), .B(n601), .Y(n85) );
  XNOR2X1 U762 ( .A(n781), .B(n83), .Y(n75) );
  CLKINVX1 U763 ( .A(n213), .Y(n827) );
  NAND3X1 U764 ( .A(n828), .B(N98), .C(N96), .Y(n318) );
  AND2X2 U765 ( .A(n768), .B(n431), .Y(n146) );
  NOR2X1 U766 ( .A(n149), .B(n781), .Y(n71) );
  CLKINVX1 U767 ( .A(n301), .Y(n817) );
  CLKBUFX3 U768 ( .A(n786), .Y(n782) );
  OAI22XL U769 ( .A0(n388), .A1(n822), .B0(N167), .B1(n804), .Y(n329) );
  NAND3X1 U770 ( .A(n330), .B(n84), .C(n331), .Y(n328) );
  OAI221XL U771 ( .A0(N167), .A1(n613), .B0(N527), .B1(n419), .C0(n332), .Y(
        n331) );
  OAI22XL U772 ( .A0(n419), .A1(n319), .B0(n820), .B1(n320), .Y(n494) );
  OAI22XL U773 ( .A0(n691), .A1(n319), .B0(n415), .B1(n320), .Y(n492) );
  OAI22XL U774 ( .A0(n417), .A1(n319), .B0(n414), .B1(n320), .Y(n491) );
  OAI22XL U775 ( .A0(n693), .A1(n319), .B0(n413), .B1(n320), .Y(n490) );
  CLKINVX1 U776 ( .A(N90), .Y(n715) );
  OAI2BB2XL U777 ( .B0(n603), .B1(n768), .A0N(N479), .A1N(n146), .Y(n446) );
  OAI2BB2XL U778 ( .B0(n600), .B1(n768), .A0N(N478), .A1N(n146), .Y(n447) );
  OAI2BB2XL U779 ( .B0(n333), .B1(n334), .A0N(N527), .A1N(n419), .Y(n332) );
  NOR2XL U780 ( .A(N528), .B(n609), .Y(n334) );
  AOI211XL U781 ( .A0(N528), .A1(n609), .B0(n839), .C0(N529), .Y(n333) );
  OAI2BB2XL U782 ( .B0(n599), .B1(n768), .A0N(N477), .A1N(n146), .Y(n448) );
  AND2X2 U783 ( .A(n423), .B(n669), .Y(n661) );
  CLKBUFX3 U784 ( .A(\seq[0][1] ), .Y(n771) );
  CLKBUFX3 U785 ( .A(\seq[1][1] ), .Y(n775) );
  CLKBUFX3 U786 ( .A(\seq[2][1] ), .Y(n779) );
  CLKBUFX3 U787 ( .A(\seq[0][2] ), .Y(n773) );
  CLKBUFX3 U788 ( .A(\seq[1][2] ), .Y(n772) );
  CLKBUFX3 U789 ( .A(\seq[2][2] ), .Y(n774) );
  CLKINVX1 U790 ( .A(N92), .Y(n714) );
  CLKBUFX3 U791 ( .A(\seq[1][0] ), .Y(n776) );
  CLKBUFX3 U792 ( .A(\seq[0][0] ), .Y(n770) );
  CLKBUFX3 U793 ( .A(\seq[0][3] ), .Y(n778) );
  CLKBUFX3 U794 ( .A(\seq[1][3] ), .Y(n777) );
  OAI22XL U795 ( .A0(n590), .A1(n287), .B0(n788), .B1(n291), .Y(n481) );
  AOI221XL U796 ( .A0(n763), .A1(n775), .B0(N364), .B1(n765), .C0(n166), .Y(
        n291) );
  OAI22XL U797 ( .A0(n592), .A1(n281), .B0(n789), .B1(n295), .Y(n483) );
  AOI221XL U798 ( .A0(n763), .A1(n771), .B0(N368), .B1(n765), .C0(n166), .Y(
        n295) );
  OAI2BB2XL U799 ( .B0(n622), .B1(n768), .A0N(N470), .A1N(n146), .Y(n455) );
  CLKBUFX3 U800 ( .A(\seq[2][3] ), .Y(n780) );
  OAI222XL U801 ( .A0(n800), .A1(n311), .B0(n647), .B1(n312), .C0(n313), .C1(
        n617), .Y(n488) );
  OAI22XL U802 ( .A0(n748), .A1(n207), .B0(n791), .B1(n224), .Y(n467) );
  AOI221XL U803 ( .A0(n767), .A1(n770), .B0(n766), .B1(\seq[2][0] ), .C0(n225), 
        .Y(n224) );
  OAI222XL U804 ( .A0(n797), .A1(n827), .B0(n213), .B1(n814), .C0(n605), .C1(
        n795), .Y(n225) );
  OAI22XL U805 ( .A0(n608), .A1(n281), .B0(n789), .B1(n283), .Y(n476) );
  AOI221XL U806 ( .A0(n763), .A1(n778), .B0(N370), .B1(n765), .C0(n158), .Y(
        n283) );
  OAI22XL U807 ( .A0(n615), .A1(n287), .B0(n788), .B1(n289), .Y(n479) );
  AOI221XL U808 ( .A0(n763), .A1(n777), .B0(N366), .B1(n765), .C0(n158), .Y(
        n289) );
  OAI22XL U809 ( .A0(n591), .A1(n281), .B0(n789), .B1(n285), .Y(n477) );
  AOI221XL U810 ( .A0(n763), .A1(n773), .B0(N369), .B1(n765), .C0(n162), .Y(
        n285) );
  OAI22XL U811 ( .A0(n593), .A1(n287), .B0(n788), .B1(n290), .Y(n480) );
  AOI221XL U812 ( .A0(n763), .A1(n772), .B0(N365), .B1(n765), .C0(n162), .Y(
        n290) );
  OAI22XL U813 ( .A0(n605), .A1(n281), .B0(n789), .B1(n286), .Y(n478) );
  AOI221XL U814 ( .A0(n763), .A1(n770), .B0(N367), .B1(n765), .C0(n170), .Y(
        n286) );
  OAI22XL U815 ( .A0(n602), .A1(n287), .B0(n788), .B1(n292), .Y(n482) );
  AOI221XL U816 ( .A0(n763), .A1(n776), .B0(N363), .B1(n765), .C0(n170), .Y(
        n292) );
  OAI222XL U817 ( .A0(n798), .A1(n311), .B0(n646), .B1(n312), .C0(n313), .C1(
        n621), .Y(n489) );
  OAI221XL U818 ( .A0(n798), .A1(n253), .B0(n646), .B1(n254), .C0(n264), .Y(
        n474) );
  AOI22XL U819 ( .A0(N371), .A1(n256), .B0(n257), .B1(\seq[2][0] ), .Y(n264)
         );
  OA22X1 U820 ( .A0(n693), .A1(n682), .B0(N98), .B1(n681), .Y(n644) );
  OA22X1 U821 ( .A0(n690), .A1(n693), .B0(N98), .B1(n689), .Y(n645) );
  OA22X1 U822 ( .A0(n693), .A1(n674), .B0(N98), .B1(n673), .Y(n646) );
  OA22X1 U823 ( .A0(n693), .A1(n678), .B0(N98), .B1(n677), .Y(n647) );
  CLKINVX1 U824 ( .A(N97), .Y(n692) );
  NAND2X1 U825 ( .A(sum[8]), .B(n133), .Y(n130) );
  AOI22X1 U826 ( .A0(n116), .A1(n134), .B0(n391), .B1(sum[7]), .Y(n131) );
  AOI32X1 U827 ( .A0(n394), .A1(n140), .A2(sum[2]), .B0(sum[3]), .B1(n393), 
        .Y(n139) );
  OAI32X1 U828 ( .A0(MatchCount[2]), .A1(n429), .A2(n808), .B0(n428), .B1(n97), 
        .Y(n433) );
  XOR2X1 U829 ( .A(n393), .B(sum[3]), .Y(n140) );
  OAI2BB2XL U830 ( .B0(n112), .B1(n135), .A0N(sum[6]), .A1N(n424), .Y(n134) );
  AOI2BB2X1 U831 ( .B0(sum[5]), .B1(n392), .A0N(n136), .A1N(n114), .Y(n135) );
  AOI32X1 U832 ( .A0(n137), .A1(n138), .A2(n115), .B0(n425), .B1(sum[4]), .Y(
        n136) );
  OAI21XL U833 ( .A0(n840), .A1(n111), .B0(n139), .Y(n138) );
  OAI211X1 U834 ( .A0(n596), .A1(MinCost[1]), .B0(n142), .C0(n139), .Y(n137)
         );
  OAI21XL U835 ( .A0(n426), .A1(n107), .B0(n108), .Y(n142) );
  NOR3X1 U836 ( .A(n809), .B(n430), .C(n96), .Y(n93) );
  OAI22XL U837 ( .A0(n429), .A1(n99), .B0(n808), .B1(MatchCount[1]), .Y(n434)
         );
  OAI21XL U838 ( .A0(n427), .A1(n91), .B0(n92), .Y(n432) );
  NAND4X1 U839 ( .A(n427), .B(n93), .C(MatchCount[1]), .D(MatchCount[2]), .Y(
        n92) );
  OA21XL U840 ( .A0(n96), .A1(MatchCount[2]), .B0(n97), .Y(n91) );
  XOR2X1 U841 ( .A(n426), .B(sum[0]), .Y(n107) );
  XNOR2X1 U842 ( .A(MinCost[1]), .B(sum[1]), .Y(n108) );
  XNOR2X1 U843 ( .A(n394), .B(sum[2]), .Y(n111) );
  CLKINVX1 U844 ( .A(n717), .Y(n760) );
  CLKINVX1 U845 ( .A(n721), .Y(n758) );
  CLKBUFX3 U846 ( .A(n743), .Y(n762) );
  NOR2BX1 U847 ( .AN(n716), .B(n423), .Y(n743) );
  CLKINVX1 U848 ( .A(n719), .Y(n759) );
  CLKINVX1 U849 ( .A(n723), .Y(n757) );
  NAND2X2 U850 ( .A(n716), .B(n423), .Y(n747) );
  XNOR2X1 U851 ( .A(n425), .B(n595), .Y(n115) );
  OAI22XL U852 ( .A0(n430), .A1(n102), .B0(n809), .B1(n103), .Y(n435) );
  AND2X2 U853 ( .A(n104), .B(MatchCount[0]), .Y(n103) );
  NAND3X1 U854 ( .A(n670), .B(n831), .C(n669), .Y(n204) );
  NOR3BX1 U855 ( .AN(n669), .B(n670), .C(n421), .Y(n228) );
  XNOR2X1 U856 ( .A(n392), .B(sum[5]), .Y(n114) );
  XOR2X1 U857 ( .A(n424), .B(n598), .Y(n112) );
  NAND2X1 U858 ( .A(n411), .B(n601), .Y(n64) );
  OR2X1 U859 ( .A(n64), .B(n412), .Y(n66) );
  NAND4X1 U860 ( .A(n693), .B(n417), .C(n229), .D(N96), .Y(n296) );
  NAND4X1 U861 ( .A(n693), .B(n417), .C(n229), .D(n691), .Y(n294) );
  XNOR2X1 U862 ( .A(n391), .B(n599), .Y(n116) );
  CLKBUFX3 U863 ( .A(n742), .Y(n761) );
  NOR2X1 U864 ( .A(n670), .B(N94), .Y(n742) );
  OAI22XL U865 ( .A0(n600), .A1(n810), .B0(n390), .B1(n769), .Y(n443) );
  OAI22XL U866 ( .A0(n622), .A1(n810), .B0(n426), .B1(n769), .Y(n445) );
  OAI22XL U867 ( .A0(n599), .A1(n810), .B0(n391), .B1(n769), .Y(n442) );
  OAI22XL U868 ( .A0(n618), .A1(n810), .B0(n392), .B1(n769), .Y(n440) );
  OAI22XL U869 ( .A0(n619), .A1(n810), .B0(n394), .B1(n769), .Y(n437) );
  OAI22XL U870 ( .A0(n620), .A1(n810), .B0(n393), .B1(n769), .Y(n438) );
  OAI22XL U871 ( .A0(n595), .A1(n810), .B0(n425), .B1(n769), .Y(n439) );
  OAI22XL U872 ( .A0(n598), .A1(n810), .B0(n424), .B1(n769), .Y(n441) );
  OAI22XL U873 ( .A0(n603), .A1(n810), .B0(n389), .B1(n769), .Y(n444) );
  OAI22XL U874 ( .A0(n596), .A1(n810), .B0(n395), .B1(n769), .Y(n436) );
  NAND2X1 U875 ( .A(n132), .B(n133), .Y(n113) );
  XNOR2X1 U876 ( .A(n600), .B(n390), .Y(n132) );
  NAND2X1 U877 ( .A(n397), .B(n824), .Y(n65) );
  NOR2X1 U878 ( .A(n669), .B(n421), .Y(n82) );
  NAND2X1 U879 ( .A(n82), .B(n423), .Y(n173) );
  CLKINVX1 U880 ( .A(n421), .Y(n831) );
  XNOR2X1 U881 ( .A(MinCost[9]), .B(sum[9]), .Y(n133) );
  CLKINVX1 U882 ( .A(n417), .Y(n828) );
  NAND3X1 U883 ( .A(n691), .B(n828), .C(n693), .Y(n267) );
  NAND2X1 U884 ( .A(n421), .B(n669), .Y(n84) );
  NOR2X1 U885 ( .A(n272), .B(n423), .Y(n269) );
  OR2X1 U886 ( .A(n669), .B(n831), .Y(n272) );
  OAI22XL U887 ( .A0(n423), .A1(n301), .B0(n338), .B1(n817), .Y(n497) );
  AOI211X1 U888 ( .A0(n339), .A1(n310), .B0(n340), .C0(n303), .Y(n338) );
  OAI21XL U889 ( .A0(n347), .A1(n346), .B0(n309), .Y(n339) );
  AOI211X1 U890 ( .A0(\seq[4][1] ), .A1(n829), .B0(n838), .C0(\seq[4][0] ), 
        .Y(n368) );
  OAI21XL U891 ( .A0(\seq[3][3] ), .A1(n753), .B0(n366), .Y(n365) );
  OAI21XL U892 ( .A0(\seq[4][2] ), .A1(n836), .B0(n367), .Y(n366) );
  OAI22XL U893 ( .A0(\seq[3][2] ), .A1(n751), .B0(n368), .B1(n369), .Y(n367)
         );
  OAI21X1 U894 ( .A0(n780), .A1(n835), .B0(n361), .Y(n309) );
  OAI221XL U895 ( .A0(\seq[3][3] ), .A1(n594), .B0(\seq[3][2] ), .B1(n607), 
        .C0(n362), .Y(n361) );
  OAI22XL U896 ( .A0(n774), .A1(n836), .B0(n363), .B1(n364), .Y(n362) );
  NOR2X1 U897 ( .A(\seq[3][1] ), .B(n604), .Y(n364) );
  NOR2X4 U898 ( .A(n423), .B(N94), .Y(n744) );
  AOI211X1 U899 ( .A0(\seq[5][1] ), .A1(n750), .B0(n748), .C0(\seq[5][0] ), 
        .Y(n373) );
  OA21XL U900 ( .A0(\seq[5][3] ), .A1(n753), .B0(n370), .Y(n347) );
  OAI21XL U901 ( .A0(\seq[4][3] ), .A1(n754), .B0(n371), .Y(n370) );
  OAI21XL U902 ( .A0(\seq[5][2] ), .A1(n751), .B0(n372), .Y(n371) );
  OAI22XL U903 ( .A0(\seq[4][2] ), .A1(n752), .B0(n373), .B1(n374), .Y(n372)
         );
  OAI22XL U904 ( .A0(n72), .A1(n597), .B0(n71), .B1(n65), .Y(ns[0]) );
  NOR3BXL U905 ( .AN(n420), .B(n73), .C(n64), .Y(n72) );
  NOR4BX1 U906 ( .AN(n74), .B(n75), .C(n76), .D(n77), .Y(n73) );
  XNOR2X1 U907 ( .A(n670), .B(n79), .Y(n77) );
  OAI22XL U908 ( .A0(n669), .A1(n301), .B0(n306), .B1(n817), .Y(n485) );
  AOI21X1 U909 ( .A0(n807), .A1(n308), .B0(n303), .Y(n306) );
  OAI211X1 U910 ( .A0(n833), .A1(n87), .B0(n309), .C0(n310), .Y(n308) );
  AOI211X1 U911 ( .A0(n779), .A1(n592), .B0(n605), .C0(\seq[2][0] ), .Y(n359)
         );
  NOR2X1 U912 ( .A(\seq[4][1] ), .B(n829), .Y(n369) );
  OAI21X1 U913 ( .A0(\seq[6][3] ), .A1(n754), .B0(n341), .Y(n305) );
  OAI21XL U914 ( .A0(\seq[5][3] ), .A1(n834), .B0(n342), .Y(n341) );
  OAI21XL U915 ( .A0(\seq[6][2] ), .A1(n752), .B0(n343), .Y(n342) );
  OAI22XL U916 ( .A0(\seq[5][2] ), .A1(n606), .B0(n344), .B1(n345), .Y(n343)
         );
  AOI211X1 U917 ( .A0(\seq[6][1] ), .A1(n749), .B0(n616), .C0(\seq[6][0] ), 
        .Y(n344) );
  XOR2X1 U918 ( .A(n415), .B(n423), .Y(n74) );
  CLKINVX1 U919 ( .A(n431), .Y(n818) );
  NOR4X1 U920 ( .A(n611), .B(n74), .C(n385), .D(n79), .Y(n383) );
  XNOR2X1 U921 ( .A(n823), .B(n421), .Y(n385) );
  OAI32X1 U922 ( .A0(n819), .A1(n823), .A2(n796), .B0(n413), .B1(n381), .Y(
        N165) );
  CLKINVX1 U923 ( .A(n378), .Y(n819) );
  OAI21XL U924 ( .A0(n421), .A1(n301), .B0(n302), .Y(n484) );
  OAI21XL U925 ( .A0(n303), .A1(n304), .B0(n301), .Y(n302) );
  AOI2BB1X1 U926 ( .A0N(n305), .A1N(n87), .B0(n88), .Y(n304) );
  NOR2X1 U927 ( .A(\seq[5][1] ), .B(n750), .Y(n374) );
  NOR3X2 U928 ( .A(n417), .B(n693), .C(N96), .Y(n157) );
  NOR2X2 U929 ( .A(n65), .B(n412), .Y(n431) );
  AOI211X1 U930 ( .A0(\seq[7][1] ), .A1(n837), .B0(n610), .C0(\seq[7][0] ), 
        .Y(n350) );
  OAI221XL U931 ( .A0(\seq[7][3] ), .A1(n834), .B0(\seq[7][2] ), .B1(n606), 
        .C0(n349), .Y(n348) );
  OAI22XL U932 ( .A0(\seq[6][2] ), .A1(n612), .B0(n350), .B1(n351), .Y(n349)
         );
  NOR2X1 U933 ( .A(\seq[7][1] ), .B(n837), .Y(n351) );
  OAI31XL U934 ( .A0(n86), .A1(n87), .A2(n817), .B0(n420), .Y(n409) );
  NAND3BX1 U935 ( .AN(n88), .B(n833), .C(n90), .Y(n86) );
  NOR2X1 U936 ( .A(\seq[6][1] ), .B(n749), .Y(n345) );
  AOI211X1 U937 ( .A0(n414), .A1(n415), .B0(n796), .C0(n378), .Y(N164) );
  NOR3X2 U938 ( .A(N96), .B(n693), .C(n828), .Y(n213) );
  XNOR2X1 U939 ( .A(N91), .B(n669), .Y(n79) );
  NAND3X1 U940 ( .A(n414), .B(n415), .C(n413), .Y(n149) );
  CLKBUFX3 U941 ( .A(n145), .Y(n768) );
  NAND2X1 U942 ( .A(n824), .B(n147), .Y(n145) );
  OAI21XL U943 ( .A0(n412), .A1(n148), .B0(n397), .Y(n147) );
  XNOR2X1 U944 ( .A(n781), .B(n149), .Y(n148) );
  NOR3X2 U945 ( .A(n824), .B(n412), .C(n601), .Y(n301) );
  NAND3X1 U946 ( .A(n817), .B(n812), .C(n69), .Y(ns[1]) );
  NAND3X1 U947 ( .A(n397), .B(n597), .C(n71), .Y(n69) );
  OAI211X1 U948 ( .A0(n420), .A1(n64), .B0(n65), .C0(n764), .Y(ns[2]) );
  NOR2X1 U949 ( .A(n415), .B(n414), .Y(n378) );
  OAI21XL U950 ( .A0(n412), .A1(n85), .B0(n396), .Y(n408) );
  AO22X1 U951 ( .A0(\seq[5][0] ), .A1(n662), .B0(\seq[4][0] ), .B1(n661), .Y(
        n648) );
  AOI221XL U952 ( .A0(\seq[6][0] ), .A1(n665), .B0(\seq[7][0] ), .B1(n664), 
        .C0(n648), .Y(n651) );
  AO22X1 U953 ( .A0(n776), .A1(n662), .B0(n770), .B1(n661), .Y(n649) );
  AOI221XL U954 ( .A0(\seq[2][0] ), .A1(n665), .B0(\seq[3][0] ), .B1(n664), 
        .C0(n649), .Y(n650) );
  OAI22XL U955 ( .A0(n668), .A1(n651), .B0(N95), .B1(n650), .Y(N174) );
  AO22X1 U956 ( .A0(\seq[5][1] ), .A1(n662), .B0(\seq[4][1] ), .B1(n661), .Y(
        n652) );
  AOI221XL U957 ( .A0(\seq[6][1] ), .A1(n665), .B0(\seq[7][1] ), .B1(n664), 
        .C0(n652), .Y(n655) );
  AO22X1 U958 ( .A0(n775), .A1(n662), .B0(n771), .B1(n661), .Y(n653) );
  AOI221XL U959 ( .A0(n779), .A1(n665), .B0(\seq[3][1] ), .B1(n664), .C0(n653), 
        .Y(n654) );
  AO22X1 U960 ( .A0(\seq[5][2] ), .A1(n662), .B0(\seq[4][2] ), .B1(n661), .Y(
        n656) );
  AOI221XL U961 ( .A0(\seq[6][2] ), .A1(n665), .B0(\seq[7][2] ), .B1(n664), 
        .C0(n656), .Y(n659) );
  AO22X1 U962 ( .A0(n772), .A1(n662), .B0(n773), .B1(n661), .Y(n657) );
  AOI221XL U963 ( .A0(n774), .A1(n665), .B0(\seq[3][2] ), .B1(n664), .C0(n657), 
        .Y(n658) );
  OAI22XL U964 ( .A0(n668), .A1(n659), .B0(N95), .B1(n658), .Y(N172) );
  AO22X1 U965 ( .A0(\seq[5][3] ), .A1(n662), .B0(\seq[4][3] ), .B1(n661), .Y(
        n660) );
  AOI221XL U966 ( .A0(\seq[6][3] ), .A1(n665), .B0(\seq[7][3] ), .B1(n664), 
        .C0(n660), .Y(n667) );
  AO22X1 U967 ( .A0(n777), .A1(n662), .B0(n778), .B1(n661), .Y(n663) );
  AOI221XL U968 ( .A0(n780), .A1(n665), .B0(\seq[3][3] ), .B1(n664), .C0(n663), 
        .Y(n666) );
  OAI22XL U969 ( .A0(n667), .A1(n668), .B0(N95), .B1(n666), .Y(N171) );
  AOI221XL U970 ( .A0(\seq[6][0] ), .A1(n688), .B0(\seq[7][0] ), .B1(n687), 
        .C0(n671), .Y(n674) );
  AOI221XL U971 ( .A0(\seq[2][0] ), .A1(n688), .B0(\seq[3][0] ), .B1(n687), 
        .C0(n672), .Y(n673) );
  AOI221XL U972 ( .A0(\seq[6][1] ), .A1(n688), .B0(\seq[7][1] ), .B1(n687), 
        .C0(n675), .Y(n678) );
  AOI221XL U973 ( .A0(n779), .A1(n688), .B0(\seq[3][1] ), .B1(n687), .C0(n676), 
        .Y(n677) );
  AOI221XL U974 ( .A0(\seq[6][2] ), .A1(n688), .B0(\seq[7][2] ), .B1(n687), 
        .C0(n679), .Y(n682) );
  AOI221XL U975 ( .A0(n774), .A1(n688), .B0(\seq[3][2] ), .B1(n687), .C0(n680), 
        .Y(n681) );
  AOI221XL U976 ( .A0(\seq[6][3] ), .A1(n688), .B0(\seq[7][3] ), .B1(n687), 
        .C0(n683), .Y(n690) );
  AOI221XL U977 ( .A0(n780), .A1(n688), .B0(\seq[3][3] ), .B1(n687), .C0(n686), 
        .Y(n689) );
  AOI221XL U978 ( .A0(\seq[6][2] ), .A1(n711), .B0(\seq[7][2] ), .B1(n710), 
        .C0(n694), .Y(n697) );
  AOI221XL U979 ( .A0(n774), .A1(n711), .B0(\seq[3][2] ), .B1(n710), .C0(n695), 
        .Y(n696) );
  AOI221XL U980 ( .A0(\seq[6][1] ), .A1(n711), .B0(\seq[7][1] ), .B1(n710), 
        .C0(n698), .Y(n701) );
  AOI221XL U981 ( .A0(n779), .A1(n711), .B0(\seq[3][1] ), .B1(n710), .C0(n699), 
        .Y(n700) );
  AOI221XL U982 ( .A0(\seq[6][0] ), .A1(n711), .B0(\seq[7][0] ), .B1(n710), 
        .C0(n702), .Y(n705) );
  AOI221XL U983 ( .A0(\seq[2][0] ), .A1(n711), .B0(\seq[3][0] ), .B1(n710), 
        .C0(n703), .Y(n704) );
  AOI221XL U984 ( .A0(\seq[6][3] ), .A1(n711), .B0(\seq[7][3] ), .B1(n710), 
        .C0(n706), .Y(n713) );
  AOI221XL U985 ( .A0(n780), .A1(n711), .B0(\seq[3][3] ), .B1(n710), .C0(n709), 
        .Y(n712) );
  NOR2BX1 U986 ( .AN(N94), .B(N95), .Y(n725) );
  AOI222XL U987 ( .A0(n776), .A1(n761), .B0(\seq[3][0] ), .B1(n756), .C0(
        \seq[4][0] ), .C1(n762), .Y(n717) );
  AOI221XL U988 ( .A0(n744), .A1(\seq[2][0] ), .B0(n725), .B1(n770), .C0(n760), 
        .Y(n718) );
  CLKINVX1 U989 ( .A(n718), .Y(N371) );
  AOI222XL U990 ( .A0(n775), .A1(n761), .B0(\seq[3][1] ), .B1(n756), .C0(
        \seq[4][1] ), .C1(n762), .Y(n719) );
  AOI221XL U991 ( .A0(n744), .A1(n779), .B0(n725), .B1(n771), .C0(n759), .Y(
        n720) );
  CLKINVX1 U992 ( .A(n720), .Y(N372) );
  AOI222XL U993 ( .A0(n772), .A1(n761), .B0(\seq[3][2] ), .B1(n756), .C0(
        \seq[4][2] ), .C1(n762), .Y(n721) );
  AOI221XL U994 ( .A0(n744), .A1(n774), .B0(n725), .B1(n773), .C0(n758), .Y(
        n722) );
  CLKINVX1 U995 ( .A(n722), .Y(N373) );
  AOI222XL U996 ( .A0(n761), .A1(n777), .B0(\seq[3][3] ), .B1(n756), .C0(n762), 
        .C1(\seq[4][3] ), .Y(n723) );
  AOI221XL U997 ( .A0(n780), .A1(n744), .B0(n725), .B1(n778), .C0(n757), .Y(
        n724) );
  CLKINVX1 U998 ( .A(n724), .Y(N374) );
  AOI222XL U999 ( .A0(\seq[4][0] ), .A1(n744), .B0(\seq[6][0] ), .B1(n762), 
        .C0(\seq[3][0] ), .C1(n761), .Y(n726) );
  OAI211X1 U1000 ( .A0(n747), .A1(n616), .B0(n727), .C0(n726), .Y(N363) );
  AOI222XL U1001 ( .A0(\seq[4][1] ), .A1(n744), .B0(\seq[6][1] ), .B1(n762), 
        .C0(\seq[3][1] ), .C1(n761), .Y(n728) );
  OAI211X1 U1002 ( .A0(n747), .A1(n749), .B0(n729), .C0(n728), .Y(N364) );
  AOI222XL U1003 ( .A0(\seq[4][2] ), .A1(n744), .B0(\seq[6][2] ), .B1(n762), 
        .C0(\seq[3][2] ), .C1(n761), .Y(n730) );
  OAI211X1 U1004 ( .A0(n747), .A1(n752), .B0(n731), .C0(n730), .Y(N365) );
  AOI222XL U1005 ( .A0(n744), .A1(\seq[4][3] ), .B0(\seq[6][3] ), .B1(n762), 
        .C0(\seq[3][3] ), .C1(n761), .Y(n732) );
  OAI211X1 U1006 ( .A0(n747), .A1(n754), .B0(n733), .C0(n732), .Y(N366) );
  AOI222XL U1007 ( .A0(\seq[3][0] ), .A1(n744), .B0(\seq[5][0] ), .B1(n762), 
        .C0(\seq[2][0] ), .C1(n761), .Y(n734) );
  OAI211X1 U1008 ( .A0(n747), .A1(n748), .B0(n735), .C0(n734), .Y(N367) );
  AOI222XL U1009 ( .A0(\seq[3][1] ), .A1(n744), .B0(\seq[5][1] ), .B1(n762), 
        .C0(n779), .C1(n761), .Y(n736) );
  OAI211X1 U1010 ( .A0(n747), .A1(n750), .B0(n737), .C0(n736), .Y(N368) );
  AOI222XL U1011 ( .A0(\seq[3][2] ), .A1(n744), .B0(\seq[5][2] ), .B1(n762), 
        .C0(n774), .C1(n761), .Y(n738) );
  OAI211X1 U1012 ( .A0(n747), .A1(n751), .B0(n739), .C0(n738), .Y(N369) );
  AOI222XL U1013 ( .A0(\seq[3][3] ), .A1(n744), .B0(\seq[5][3] ), .B1(n762), 
        .C0(n780), .C1(n761), .Y(n745) );
  OAI211X1 U1014 ( .A0(n747), .A1(n753), .B0(n746), .C0(n745), .Y(N370) );
endmodule

