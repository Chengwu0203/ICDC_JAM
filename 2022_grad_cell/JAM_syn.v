/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : S-2021.06-SP2
// Date      : Tue Jul 19 15:19:35 2022
/////////////////////////////////////////////////////////////


module JAM ( CLK, RST, W, J, Cost, MatchCount, MinCost, Valid );
  output [2:0] W;
  output [2:0] J;
  input [6:0] Cost;
  output [3:0] MatchCount;
  output [9:0] MinCost;
  input CLK, RST;
  output Valid;
  wire   req, N66, N67, N68, N69, \seq[7][2] , \seq[7][1] , \seq[7][0] ,
         \seq[6][2] , \seq[6][1] , \seq[6][0] , \seq[5][2] , \seq[5][1] ,
         \seq[5][0] , \seq[4][2] , \seq[4][1] , \seq[4][0] , \seq[3][2] ,
         \seq[3][1] , \seq[3][0] , \seq[2][2] , \seq[2][1] , \seq[2][0] ,
         \seq[1][2] , \seq[1][1] , \seq[1][0] , \seq[0][2] , \seq[0][1] ,
         \seq[0][0] , n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n125,
         n127, n129, n130, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n160, n162, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, \SORT0/n529 , \SORT0/n528 ,
         \SORT0/n526 , \SORT0/n525 , \SORT0/n524 , \SORT0/n523 , \SORT0/n522 ,
         \SORT0/n521 , \SORT0/n520 , \SORT0/n518 , \SORT0/n517 , \SORT0/n516 ,
         \SORT0/n514 , \SORT0/n513 , \SORT0/n512 , \SORT0/n511 , \SORT0/n510 ,
         \SORT0/n509 , \SORT0/n507 , \SORT0/n506 , \SORT0/n505 , \SORT0/n503 ,
         \SORT0/n502 , \SORT0/n501 , \SORT0/n499 , \SORT0/n498 , \SORT0/n497 ,
         \SORT0/n495 , \SORT0/n494 , \SORT0/n493 , \SORT0/n491 , \SORT0/n490 ,
         \SORT0/n489 , \SORT0/n488 , \SORT0/n487 , \SORT0/n486 , \SORT0/n485 ,
         \SORT0/n484 , \SORT0/n482 , \SORT0/n480 , \SORT0/n479 , \SORT0/n478 ,
         \SORT0/n477 , \SORT0/n476 , \SORT0/n473 , \SORT0/n471 , \SORT0/n470 ,
         \SORT0/n469 , \SORT0/n467 , \SORT0/n466 , \SORT0/n465 , \SORT0/n463 ,
         \SORT0/n462 , \SORT0/n461 , \SORT0/n459 , \SORT0/n458 , \SORT0/n457 ,
         \SORT0/n455 , \SORT0/n454 , \SORT0/n453 , \SORT0/n451 , \SORT0/n450 ,
         \SORT0/n449 , \SORT0/n447 , \SORT0/n446 , \SORT0/n445 , \SORT0/n443 ,
         \SORT0/n442 , \SORT0/n441 , \SORT0/n408 , \SORT0/n406 , \SORT0/n405 ,
         \SORT0/seq[5][1] , \SORT0/seq[4][2] , \SORT0/seq[4][1] ,
         \SORT0/seq[4][0] , \SORT0/seq[3][2] , \SORT0/seq[3][1] ,
         \SORT0/seq[3][0] , \SORT0/seq[2][2] , \SORT0/seq[2][1] ,
         \SORT0/seq[2][0] , \SORT0/seq[1][2] , \SORT0/seq[1][1] ,
         \SORT0/seq[0][2] , \SORT0/seq[0][1] , \SORT0/seq[0][0] , \SORT0/N127 ,
         \SORT0/N126 , \SORT0/N125 , \SORT0/N124 , \SORT0/pos[0] , n198, n199,
         n203, n205, n206, n207, n211, n213, n215, n217, n219, n221, n292,
         n293, n296, n298, n323, n327, n337, n343, n352, n359, n362, n792,
         n794, n795, n796, n797, n798, n799, n800, n801, n802, n803, n804,
         n805, n806, n807, n808, n809, n810, n811, n812, n813, n814, n815,
         n816, n817, n818, n819, n820, n821, n822, n823, n824, n825, n826,
         n827, n828, n829, n830, n831, n832, n833, n834, n835, n836, n837,
         n838, n839, n840, n841, n842, n843, n844, n845, n846, n847, n848,
         n849, n850, n851, n852, n853, n854, n855, n856, n857, n858, n859,
         n860, n861, n862, n863, n864, n865, n866, n867, n868, n869, n870,
         n871, n872, n873, n874, n875, n876, n877, n878, n879, n880, n881,
         n882, n883, n884, n885, n886, n887, n888, n889, n890, n891, n892,
         n893, n894, n895, n896, n897, n898, n899, n900, n901, n902, n903,
         n904, n905, n906, n907, n908, n909, n910, n911, n912, n913, n914,
         n915, n916, n917, n918, n919, n920, n921, n922, n923, n924, n925,
         n926, n927, n928, n929, n930, n931, n932, n933, n934, n935, n936,
         n937, n938, n939, n940, n941, n942, n943, n944, n945, n946, n947,
         n948, n949, n950, n951, n952, n953, n954, n955, n956, n957, n958,
         n959, n960, n961, n962, n963, n964, n965, n966, n967, n968, n969,
         n970, n971, n972, n973, n974, n975, n976, n977, n978, n979, n980,
         n981, n982, n983, n984, n985, n986, n987, n988, n989, n990, n991,
         n992, n993, n994, n995, n996, n997, n998, n999, n1000, n1001, n1002,
         n1003, n1004, n1005, n1006, n1007, n1008, n1009, n1010, n1011, n1012,
         n1013, n1014, n1015, n1016, n1017, n1018, n1019, n1020, n1021, n1022,
         n1023, n1024, n1025, n1026, n1027, n1028, n1029, n1030, n1031, n1032,
         n1033, n1034, n1035, n1036, n1037, n1038, n1039, n1040, n1041, n1042,
         n1043, n1044, n1045, n1046, n1047, n1048, n1049, n1050, n1051, n1052,
         n1053, n1054, n1055, n1056, n1057, n1058, n1059, n1060, n1061, n1062,
         n1063, n1064, n1065, n1066, n1067, n1068, n1069, n1070, n1071, n1072,
         n1073, n1074, n1075, n1076, n1077, n1078, n1079, n1080, n1081, n1082,
         n1083, n1084, n1085, n1086, n1087, n1088, n1089, n1090, n1091, n1092,
         n1093, n1094, n1095, n1096, n1097, n1098, n1099, n1100, n1101, n1102,
         n1103, n1104, n1105, n1106, n1107, n1108, n1109, n1110, n1111, n1112,
         n1113, n1114, n1115, n1116, n1117, n1118, n1119, n1120, n1121, n1122,
         n1123, n1124, n1125, n1126, n1127, n1128, n1129, n1130, n1131, n1132,
         n1133, n1134, n1135, n1136, n1137, n1138, n1139, n1140, n1141, n1142,
         n1143, n1144, n1145, n1146, n1147, n1148, n1149, n1150, n1151, n1152,
         n1153, n1154, n1155, n1156, n1157, n1158, n1159, n1160, n1161, n1162,
         n1163, n1164, n1165, n1166, n1167, n1168, n1169, n1170, n1171, n1172,
         n1173, n1174, n1175, n1176, n1177, n1178, n1179, n1180, n1181, n1182,
         n1183, n1184, n1185, n1186, n1187, n1188, n1189, n1190, n1191, n1192,
         n1193, n1194, n1195, n1196, n1197, n1198, n1199, n1200, n1201, n1202,
         n1203, n1204, n1205, n1206, n1207, n1208, n1209, n1210, n1211, n1212,
         n1213, n1214, n1215, n1216, n1217, n1218, n1219, n1220, n1221, n1222,
         n1223, n1224, n1225, n1226, n1227, n1228, n1229, n1230, n1231, n1232,
         n1233, n1234, n1235, n1236, n1237, n1238, n1239, n1240, n1241, n1242,
         n1243, n1244, n1245, n1246, n1260, n1261, n1262, n1263, n1264, n1265,
         n1266, n1267, n1268;
  wire   [31:0] sequence;
  wire   [2:0] ns;
  wire   [9:0] sum;
  wire   [2:0] \SORT0/ns ;

  DFFSX1 \seq_reg[6][0]  ( .D(n151), .CK(CLK), .SN(n1244), .Q(\seq[6][0] ) );
  DFFSX1 \seq_reg[2][2]  ( .D(n141), .CK(CLK), .SN(n1244), .Q(\seq[2][2] ) );
  DFFSX1 \seq_reg[2][0]  ( .D(n139), .CK(CLK), .SN(n1244), .Q(\seq[2][0] ) );
  DFFSX1 \seq_reg[4][1]  ( .D(n146), .CK(CLK), .SN(n1244), .Q(\seq[4][1] ) );
  DFFSX1 \seq_reg[4][0]  ( .D(n145), .CK(CLK), .SN(n1244), .Q(\seq[4][0] ) );
  DFFSX1 \seq_reg[0][2]  ( .D(n135), .CK(CLK), .SN(n1244), .Q(\seq[0][2] ) );
  DFFSX1 \seq_reg[0][1]  ( .D(n134), .CK(CLK), .SN(n1244), .Q(\seq[0][1] ) );
  DFFSX1 \seq_reg[0][0]  ( .D(n133), .CK(CLK), .SN(n1244), .Q(\seq[0][0] ) );
  DFFRX1 req_reg ( .D(n1246), .CK(CLK), .RN(n1241), .Q(req) );
  DFFSX1 \seq_reg[3][2]  ( .D(n144), .CK(CLK), .SN(n1244), .Q(\seq[3][2] ) );
  DFFSX1 \seq_reg[5][1]  ( .D(n149), .CK(CLK), .SN(n1243), .Q(\seq[5][1] ) );
  DFFSX1 \seq_reg[1][2]  ( .D(n138), .CK(CLK), .SN(n1243), .Q(\seq[1][2] ) );
  DFFSX1 \seq_reg[1][1]  ( .D(n137), .CK(CLK), .SN(n1243), .Q(\seq[1][1] ) );
  DFFRX1 \SORT0/sequence_reg[4]  ( .D(\SORT0/n445 ), .CK(CLK), .RN(n1241), .Q(
        sequence[4]) );
  DFFRX1 \SORT0/sequence_reg[9]  ( .D(\SORT0/n450 ), .CK(CLK), .RN(n1242), .Q(
        sequence[9]) );
  DFFRX1 \SORT0/sequence_reg[12]  ( .D(\SORT0/n453 ), .CK(CLK), .RN(n1241), 
        .Q(sequence[12]) );
  DFFRX1 \SORT0/sequence_reg[13]  ( .D(\SORT0/n454 ), .CK(CLK), .RN(n1242), 
        .Q(sequence[13]) );
  DFFRX1 \SORT0/sequence_reg[18]  ( .D(\SORT0/n459 ), .CK(CLK), .RN(n1241), 
        .Q(sequence[18]) );
  DFFRX1 \SORT0/sequence_reg[20]  ( .D(\SORT0/n461 ), .CK(CLK), .RN(n1242), 
        .Q(sequence[20]) );
  DFFRX1 \SORT0/sequence_reg[22]  ( .D(\SORT0/n463 ), .CK(CLK), .RN(n1242), 
        .Q(sequence[22]) );
  DFFRX1 \SORT0/sequence_reg[25]  ( .D(\SORT0/n466 ), .CK(CLK), .RN(n1242), 
        .Q(sequence[25]) );
  DFFRX1 \SORT0/sequence_reg[26]  ( .D(\SORT0/n467 ), .CK(CLK), .RN(n1241), 
        .Q(sequence[26]) );
  DFFRX1 \SORT0/sequence_reg[28]  ( .D(\SORT0/n469 ), .CK(CLK), .RN(n1242), 
        .Q(sequence[28]) );
  DFFRX1 \SORT0/sequence_reg[29]  ( .D(\SORT0/n470 ), .CK(CLK), .RN(n1242), 
        .Q(sequence[29]) );
  DFFRX1 \SORT0/sequence_reg[30]  ( .D(\SORT0/n471 ), .CK(CLK), .RN(n1242), 
        .Q(sequence[30]) );
  DFFRX1 \SORT0/sequence_reg[0]  ( .D(\SORT0/n441 ), .CK(CLK), .RN(n1242), .Q(
        sequence[0]) );
  DFFRX1 \SORT0/sequence_reg[1]  ( .D(\SORT0/n442 ), .CK(CLK), .RN(n1241), .Q(
        sequence[1]) );
  DFFRX1 \SORT0/sequence_reg[2]  ( .D(\SORT0/n443 ), .CK(CLK), .RN(n1241), .Q(
        sequence[2]) );
  DFFRX1 \SORT0/sequence_reg[5]  ( .D(\SORT0/n446 ), .CK(CLK), .RN(n1241), .Q(
        sequence[5]) );
  DFFRX1 \SORT0/sequence_reg[6]  ( .D(\SORT0/n447 ), .CK(CLK), .RN(n1241), .Q(
        sequence[6]) );
  DFFRX1 \SORT0/sequence_reg[8]  ( .D(\SORT0/n449 ), .CK(CLK), .RN(n1242), .Q(
        sequence[8]) );
  DFFRX1 \SORT0/sequence_reg[10]  ( .D(\SORT0/n451 ), .CK(CLK), .RN(n1241), 
        .Q(sequence[10]) );
  DFFRX1 \SORT0/sequence_reg[14]  ( .D(\SORT0/n455 ), .CK(CLK), .RN(n1242), 
        .Q(sequence[14]) );
  DFFRX1 \SORT0/sequence_reg[16]  ( .D(\SORT0/n457 ), .CK(CLK), .RN(n1241), 
        .Q(sequence[16]) );
  DFFRX1 \SORT0/sequence_reg[17]  ( .D(\SORT0/n458 ), .CK(CLK), .RN(n1242), 
        .Q(sequence[17]) );
  DFFRX1 \SORT0/sequence_reg[21]  ( .D(\SORT0/n462 ), .CK(CLK), .RN(n1241), 
        .Q(sequence[21]) );
  DFFRX1 \SORT0/sequence_reg[24]  ( .D(\SORT0/n465 ), .CK(CLK), .RN(n1242), 
        .Q(sequence[24]) );
  DFFRX1 \seq_reg[6][2]  ( .D(n153), .CK(CLK), .RN(n1241), .Q(\seq[6][2] ) );
  DFFRX1 \seq_reg[6][1]  ( .D(n152), .CK(CLK), .RN(n1242), .Q(\seq[6][1] ) );
  DFFRX1 \seq_reg[2][1]  ( .D(n140), .CK(CLK), .RN(n1242), .Q(\seq[2][1] ) );
  DFFRX1 \seq_reg[4][2]  ( .D(n147), .CK(CLK), .RN(n1242), .Q(\seq[4][2] ) );
  DFFRX1 \seq_reg[7][2]  ( .D(n156), .CK(CLK), .RN(n1242), .Q(\seq[7][2] ) );
  DFFRX1 \seq_reg[7][1]  ( .D(n155), .CK(CLK), .RN(n1242), .Q(\seq[7][1] ) );
  DFFRX1 \seq_reg[7][0]  ( .D(n154), .CK(CLK), .RN(n1242), .Q(\seq[7][0] ) );
  DFFRX1 \seq_reg[3][1]  ( .D(n143), .CK(CLK), .RN(n1242), .Q(\seq[3][1] ) );
  DFFRX1 \seq_reg[3][0]  ( .D(n142), .CK(CLK), .RN(n1242), .Q(\seq[3][0] ) );
  DFFRX1 \seq_reg[5][2]  ( .D(n150), .CK(CLK), .RN(n1244), .Q(\seq[5][2] ) );
  DFFRX1 \seq_reg[5][0]  ( .D(n148), .CK(CLK), .RN(n1243), .Q(\seq[5][0] ) );
  DFFRX1 \seq_reg[1][0]  ( .D(n136), .CK(CLK), .RN(n1245), .Q(\seq[1][0] ) );
  DFFRX1 \SORT0/done_reg  ( .D(\SORT0/n473 ), .CK(CLK), .RN(n1241), .QN(
        \SORT0/n408 ) );
  DFFSX1 \SORT0/com_num_reg[3]  ( .D(\SORT0/n488 ), .CK(CLK), .SN(n1243), .QN(
        \SORT0/n484 ) );
  DFFRX1 \sum_reg[8]  ( .D(n186), .CK(CLK), .RN(n1261), .Q(n1236), .QN(n108)
         );
  DFFSX1 \SORT0/com_num_reg[0]  ( .D(\SORT0/n491 ), .CK(CLK), .SN(n1242), .QN(
        \SORT0/n487 ) );
  DFFRX1 \sum_reg[7]  ( .D(n187), .CK(CLK), .RN(n1245), .Q(n1234), .QN(n107)
         );
  DFFRX1 \sum_reg[6]  ( .D(n188), .CK(CLK), .RN(n1245), .Q(sum[6]), .QN(n106)
         );
  DFFRX1 \sum_reg[5]  ( .D(n189), .CK(CLK), .RN(n1245), .Q(sum[5]), .QN(n105)
         );
  DFFRX1 \SORT0/seq_reg[7][2]  ( .D(\SORT0/n514 ), .CK(CLK), .RN(n1242), .Q(
        \SORT0/n406 ), .QN(n1215) );
  DFFSX1 \SORT0/seq_reg[0][1]  ( .D(\SORT0/n521 ), .CK(CLK), .SN(n1242), .Q(
        \SORT0/seq[0][1] ), .QN(n1213) );
  DFFRX1 \sum_reg[4]  ( .D(n190), .CK(CLK), .RN(n1245), .Q(sum[4]), .QN(n104)
         );
  DFFSX1 \SORT0/seq_reg[6][0]  ( .D(\SORT0/n495 ), .CK(CLK), .SN(n1243), .Q(
        n1226), .QN(n205) );
  DFFRX1 \SORT0/seq_reg[7][0]  ( .D(\SORT0/n512 ), .CK(CLK), .RN(n1242), .QN(
        n198) );
  DFFRX1 \sum_reg[3]  ( .D(n191), .CK(CLK), .RN(n1245), .Q(n1231), .QN(n103)
         );
  DFFRX1 \sum_reg[2]  ( .D(n192), .CK(CLK), .RN(n1261), .Q(sum[2]), .QN(n102)
         );
  DFFRX1 \sum_reg[1]  ( .D(n193), .CK(CLK), .RN(n1244), .Q(sum[1]), .QN(n101)
         );
  DFFRX1 \sum_reg[0]  ( .D(n194), .CK(CLK), .RN(n1261), .QN(n100) );
  DFFSX1 \cs_reg[1]  ( .D(ns[1]), .CK(CLK), .SN(n1242), .QN(n160) );
  DFFSX1 \SORT0/seq_reg[3][2]  ( .D(\SORT0/n505 ), .CK(CLK), .SN(n1242), .Q(
        \SORT0/seq[3][2] ), .QN(n1228) );
  DFFRX1 \SORT0/seq_reg[4][2]  ( .D(\SORT0/n501 ), .CK(CLK), .RN(n1242), .Q(
        \SORT0/seq[4][2] ), .QN(n1262) );
  DFFSX1 \SORT0/seq_reg[1][2]  ( .D(\SORT0/n516 ), .CK(CLK), .SN(n1243), .Q(
        \SORT0/seq[1][2] ), .QN(n1232) );
  DFFSX1 \SORT0/seq_reg[0][2]  ( .D(\SORT0/n520 ), .CK(CLK), .SN(n1243), .Q(
        \SORT0/seq[0][2] ), .QN(n1267) );
  DFFRX1 \SORT0/seq_reg[7][1]  ( .D(\SORT0/n513 ), .CK(CLK), .RN(n1242), .QN(
        n207) );
  DFFSX1 \SORT0/seq_reg[2][2]  ( .D(\SORT0/n509 ), .CK(CLK), .SN(n1242), .Q(
        \SORT0/seq[2][2] ), .QN(n1214) );
  DFFRX1 \SORT0/seq_reg[2][1]  ( .D(\SORT0/n510 ), .CK(CLK), .RN(n1261), .Q(
        \SORT0/seq[2][1] ), .QN(n1227) );
  DFFSX1 \MinCost_reg[0]  ( .D(n184), .CK(CLK), .SN(n1243), .QN(n166) );
  DFFSX1 \MinCost_reg[1]  ( .D(n175), .CK(CLK), .SN(n1243), .QN(n116) );
  DFFSX1 \MatchCount_reg[0]  ( .D(n174), .CK(CLK), .SN(n1243), .QN(n170) );
  DFFSX1 \MinCost_reg[9]  ( .D(n183), .CK(CLK), .SN(n1244), .QN(n110) );
  DFFSX1 \MinCost_reg[6]  ( .D(n180), .CK(CLK), .SN(n1244), .QN(n164) );
  DFFSX1 \MinCost_reg[5]  ( .D(n179), .CK(CLK), .SN(n1244), .QN(n113) );
  DFFSX1 \MinCost_reg[2]  ( .D(n176), .CK(CLK), .SN(n1243), .QN(n115) );
  DFFSX1 \MinCost_reg[8]  ( .D(n182), .CK(CLK), .SN(n1244), .QN(n111) );
  DFFSX1 \MinCost_reg[7]  ( .D(n181), .CK(CLK), .SN(n1244), .QN(n112) );
  DFFSX1 \MinCost_reg[3]  ( .D(n177), .CK(CLK), .SN(n1244), .QN(n114) );
  DFFSX1 \MinCost_reg[4]  ( .D(n178), .CK(CLK), .SN(n1243), .QN(n165) );
  DFFRX1 Valid_reg ( .D(n132), .CK(CLK), .RN(n1245), .QN(n117) );
  TLATSRX1 \W_reg[0]  ( .G(n130), .D(n292), .RN(n1260), .SN(1'b1), .QN(n221)
         );
  TLATSRX1 \W_reg[1]  ( .G(n130), .D(n293), .RN(n1260), .SN(1'b1), .QN(n219)
         );
  TLATSRX1 \W_reg[2]  ( .G(n130), .D(n298), .RN(n1260), .SN(1'b1), .QN(n217)
         );
  TLATSRX1 \J_reg[0]  ( .G(n130), .D(n125), .RN(n1260), .SN(1'b1), .QN(n215)
         );
  TLATSRX1 \J_reg[1]  ( .G(n130), .D(n127), .RN(n1260), .SN(1'b1), .QN(n213)
         );
  TLATSRX1 \J_reg[2]  ( .G(n130), .D(n129), .RN(n1260), .SN(1'b1), .QN(n211)
         );
  DFFRX1 \SORT0/cs_reg[1]  ( .D(\SORT0/ns [1]), .CK(CLK), .RN(n1241), .QN(
        \SORT0/n476 ) );
  DFFRX1 \SORT0/cs_reg[2]  ( .D(\SORT0/ns [2]), .CK(CLK), .RN(n1242), .Q(n362)
         );
  DFFRX1 \cnt_reg[1]  ( .D(N67), .CK(CLK), .RN(n1241), .Q(n293), .QN(n162) );
  DFFRX1 \cnt_reg[0]  ( .D(N66), .CK(CLK), .RN(n1242), .Q(n292) );
  DFFRX1 \cs_reg[2]  ( .D(ns[2]), .CK(CLK), .RN(n1261), .Q(n296), .QN(n1239)
         );
  DFFRX1 \SORT0/cnt_reg[3]  ( .D(\SORT0/N127 ), .CK(CLK), .RN(n1244), .QN(
        \SORT0/n405 ) );
  DFFRX1 \SORT0/cnt_reg[1]  ( .D(\SORT0/N125 ), .CK(CLK), .RN(n1243), .Q(n1218), .QN(\SORT0/n479 ) );
  DFFRX1 \SORT0/cnt_reg[0]  ( .D(\SORT0/N124 ), .CK(CLK), .RN(n1261), .Q(n1222), .QN(\SORT0/n480 ) );
  DFFRX1 \SORT0/cs_reg[0]  ( .D(\SORT0/ns [0]), .CK(CLK), .RN(n1261), .Q(n1229), .QN(\SORT0/n477 ) );
  DFFRX1 \SORT0/com_num_reg[2]  ( .D(\SORT0/n489 ), .CK(CLK), .RN(n1261), .QN(
        \SORT0/n485 ) );
  DFFRX1 \SORT0/com_num_reg[1]  ( .D(\SORT0/n490 ), .CK(CLK), .RN(n1242), .QN(
        \SORT0/n486 ) );
  DFFRX1 \sum_reg[9]  ( .D(n185), .CK(CLK), .RN(n1241), .QN(n109) );
  DFFRX1 \SORT0/com_pos_reg[0]  ( .D(\SORT0/n524 ), .CK(CLK), .RN(n1243), .Q(
        n206), .QN(n1220) );
  DFFRX1 \SORT0/com_pos_reg[2]  ( .D(\SORT0/n528 ), .CK(CLK), .RN(n1241), .Q(
        n199), .QN(n1230) );
  DFFRX1 \SORT0/com_pos_reg[1]  ( .D(\SORT0/n523 ), .CK(CLK), .RN(n1261), .Q(
        n795), .QN(\SORT0/n482 ) );
  DFFRX1 \MatchCount_reg[1]  ( .D(n173), .CK(CLK), .RN(n1245), .QN(n169) );
  DFFRX1 \SORT0/cnt_reg[2]  ( .D(\SORT0/N126 ), .CK(CLK), .RN(n1245), .Q(n1224), .QN(\SORT0/n478 ) );
  DFFRX1 \SORT0/seq_reg[6][1]  ( .D(\SORT0/n494 ), .CK(CLK), .RN(n1245), .Q(
        n1221), .QN(n337) );
  DFFRX1 \cnt_reg[2]  ( .D(N68), .CK(CLK), .RN(n1245), .Q(n298), .QN(n1238) );
  DFFRX1 \MatchCount_reg[2]  ( .D(n172), .CK(CLK), .RN(n1245), .QN(n168) );
  DFFRX1 \MatchCount_reg[3]  ( .D(n171), .CK(CLK), .RN(n1245), .QN(n167) );
  DFFRX1 \SORT0/seq_reg[5][0]  ( .D(\SORT0/n499 ), .CK(CLK), .RN(n1261), .Q(
        n1235), .QN(n343) );
  DFFSX1 \cs_reg[0]  ( .D(n792), .CK(CLK), .SN(n1245), .QN(n118) );
  DFFRX2 \SORT0/seq_reg[1][0]  ( .D(\SORT0/n518 ), .CK(CLK), .RN(n1245), .QN(
        n359) );
  DFFRX2 \SORT0/pos_reg[0]  ( .D(\SORT0/n529 ), .CK(CLK), .RN(n1244), .Q(
        \SORT0/pos[0] ), .QN(n1216) );
  DFFSX2 \SORT0/seq_reg[2][0]  ( .D(\SORT0/n511 ), .CK(CLK), .SN(n1243), .Q(
        \SORT0/seq[2][0] ), .QN(n1265) );
  DFFSX2 \SORT0/seq_reg[1][1]  ( .D(\SORT0/n517 ), .CK(CLK), .SN(n1242), .Q(
        \SORT0/seq[1][1] ), .QN(n1266) );
  DFFSX2 \SORT0/seq_reg[0][0]  ( .D(\SORT0/n522 ), .CK(CLK), .SN(n1243), .Q(
        \SORT0/seq[0][0] ), .QN(n1268) );
  DFFSX2 \SORT0/seq_reg[4][1]  ( .D(\SORT0/n502 ), .CK(CLK), .SN(n1242), .Q(
        \SORT0/seq[4][1] ), .QN(n1263) );
  DFFRX2 \SORT0/seq_reg[3][1]  ( .D(\SORT0/n506 ), .CK(CLK), .RN(n1242), .Q(
        \SORT0/seq[3][1] ), .QN(n1264) );
  DFFRX2 \SORT0/seq_reg[5][2]  ( .D(\SORT0/n497 ), .CK(CLK), .RN(n1261), .Q(
        n1233), .QN(n323) );
  DFFRX2 \SORT0/seq_reg[6][2]  ( .D(\SORT0/n493 ), .CK(CLK), .RN(n1245), .Q(
        n1237), .QN(n327) );
  DFFRX2 \SORT0/pos_reg[1]  ( .D(\SORT0/n526 ), .CK(CLK), .RN(n1243), .Q(n1223), .QN(n203) );
  DFFRX2 \SORT0/seq_reg[3][0]  ( .D(\SORT0/n507 ), .CK(CLK), .RN(n1242), .Q(
        \SORT0/seq[3][0] ), .QN(n1225) );
  DFFSX2 \SORT0/seq_reg[4][0]  ( .D(\SORT0/n503 ), .CK(CLK), .SN(n1242), .Q(
        \SORT0/seq[4][0] ), .QN(n1212) );
  DFFSX2 \SORT0/seq_reg[5][1]  ( .D(\SORT0/n498 ), .CK(CLK), .SN(n1243), .Q(
        \SORT0/seq[5][1] ), .QN(n1217) );
  DFFRX2 \cnt_reg[3]  ( .D(N69), .CK(CLK), .RN(n1261), .Q(n1240), .QN(n130) );
  DFFRX2 \SORT0/pos_reg[2]  ( .D(\SORT0/n525 ), .CK(CLK), .RN(n1245), .Q(n1219), .QN(n352) );
  OR2X1 U715 ( .A(n1160), .B(n1159), .Y(\SORT0/ns [1]) );
  OR2X1 U716 ( .A(n1210), .B(n901), .Y(n896) );
  OR2X1 U717 ( .A(n1097), .B(n1156), .Y(n1193) );
  INVX2 U718 ( .A(n1058), .Y(n1056) );
  BUFX2 U719 ( .A(n1066), .Y(n794) );
  CLKINVX1 U720 ( .A(n818), .Y(n819) );
  OAI22XL U721 ( .A0(n1045), .A1(n116), .B0(n166), .B1(n1077), .Y(n1076) );
  OAI22XL U722 ( .A0(n1083), .A1(n1046), .B0(n1065), .B1(MinCost[3]), .Y(n1047) );
  INVXL U723 ( .A(n1074), .Y(n1086) );
  NAND2X2 U724 ( .A(n800), .B(n799), .Y(n955) );
  NAND2XL U725 ( .A(n959), .B(n1223), .Y(n937) );
  AND2X1 U726 ( .A(n952), .B(n927), .Y(n1077) );
  INVXL U727 ( .A(n949), .Y(n951) );
  CLKINVX1 U728 ( .A(n1051), .Y(n1070) );
  INVX1 U729 ( .A(n1142), .Y(n1137) );
  INVX1 U730 ( .A(n1073), .Y(n1087) );
  NOR2X4 U731 ( .A(n1070), .B(MinCost[9]), .Y(n1058) );
  NAND2X1 U732 ( .A(n1064), .B(MinCost[7]), .Y(n1054) );
  INVX1 U733 ( .A(n794), .Y(n1052) );
  XOR2X1 U734 ( .A(n1050), .B(n164), .Y(n1040) );
  INVX3 U735 ( .A(n815), .Y(n816) );
  OAI211X1 U736 ( .A0(n1034), .A1(n1036), .B0(n1033), .C0(n1032), .Y(n1035) );
  OAI2BB1X1 U737 ( .A0N(n1036), .A1N(\SORT0/n485 ), .B0(n1026), .Y(n1027) );
  OAI2BB1X1 U738 ( .A0N(n1034), .A1N(n1036), .B0(n1031), .Y(n1032) );
  INVX1 U739 ( .A(n1042), .Y(n1065) );
  INVX1 U740 ( .A(n1155), .Y(n1004) );
  INVX1 U741 ( .A(n1184), .Y(n985) );
  AOI221X4 U742 ( .A0(n1175), .A1(n1174), .B0(n1187), .B1(n1174), .C0(n1173), 
        .Y(n1191) );
  INVX1 U743 ( .A(n1028), .Y(n909) );
  INVX1 U744 ( .A(n1163), .Y(n1173) );
  NOR2X1 U745 ( .A(n959), .B(n958), .Y(n992) );
  INVX1 U746 ( .A(n1174), .Y(n994) );
  INVX1 U747 ( .A(n1193), .Y(n1090) );
  OAI21X2 U748 ( .A0(sum[1]), .A1(Cost[1]), .B0(n797), .Y(n800) );
  INVX2 U749 ( .A(n1156), .Y(n1260) );
  INVX1 U750 ( .A(n1077), .Y(n1072) );
  NOR2X1 U751 ( .A(\SORT0/n476 ), .B(n362), .Y(n869) );
  NAND2X1 U752 ( .A(\SORT0/n476 ), .B(n1229), .Y(n1195) );
  NOR2X1 U753 ( .A(n1219), .B(n1223), .Y(n870) );
  INVX1 U754 ( .A(Cost[2]), .Y(n801) );
  INVX1 U755 ( .A(Cost[5]), .Y(n807) );
  AOI21X2 U756 ( .A0(n168), .A1(n1142), .B0(n1141), .Y(n1144) );
  OAI21X1 U757 ( .A0(n169), .A1(n170), .B0(n1142), .Y(n1093) );
  NOR2X4 U758 ( .A(n1089), .B(n1088), .Y(n1142) );
  OAI21X1 U759 ( .A0(n1137), .A1(MatchCount[0]), .B0(n1146), .Y(n1138) );
  OAI21X2 U760 ( .A0(n1140), .A1(MatchCount[1]), .B0(n1139), .Y(n173) );
  INVX3 U761 ( .A(n1145), .Y(n1140) );
  NOR3X1 U762 ( .A(n1059), .B(n1058), .C(n1193), .Y(n1060) );
  OAI21XL U763 ( .A0(n115), .A1(n1044), .B0(n1043), .Y(n1083) );
  INVXL U764 ( .A(n1075), .Y(n1080) );
  NAND4X2 U765 ( .A(n1056), .B(n1055), .C(n1054), .D(n1053), .Y(n1089) );
  XOR2X1 U766 ( .A(n1052), .B(n111), .Y(n1053) );
  XOR2X1 U767 ( .A(n827), .B(n826), .Y(n1041) );
  NAND2XL U768 ( .A(n1110), .B(\SORT0/seq[3][0] ), .Y(n1018) );
  NOR2XL U769 ( .A(n1028), .B(n1135), .Y(n1029) );
  XNOR2X1 U770 ( .A(n822), .B(n109), .Y(n1051) );
  INVXL U771 ( .A(n1165), .Y(n1167) );
  AOI211XL U772 ( .A0(n1175), .A1(n1226), .B0(n872), .C0(n871), .Y(n873) );
  INVXL U773 ( .A(n900), .Y(n935) );
  XOR2X1 U774 ( .A(n815), .B(n809), .Y(n1050) );
  NOR2BX1 U775 ( .AN(n160), .B(n296), .Y(n810) );
  AND2X1 U776 ( .A(n840), .B(n1238), .Y(n812) );
  INVXL U777 ( .A(n1177), .Y(n1166) );
  NAND2XL U778 ( .A(n1122), .B(n1119), .Y(n1128) );
  NAND2XL U779 ( .A(n1120), .B(n1123), .Y(n1131) );
  NAND2XL U780 ( .A(n1160), .B(n854), .Y(n1129) );
  NAND3XL U781 ( .A(n1118), .B(n1117), .C(n1116), .Y(n1133) );
  AOI211XL U782 ( .A0(n1015), .A1(\SORT0/seq[5][1] ), .B0(n1014), .C0(n1013), 
        .Y(n1016) );
  AOI211XL U783 ( .A0(n1015), .A1(\SORT0/seq[1][2] ), .B0(n1006), .C0(n1005), 
        .Y(n1010) );
  AOI211XL U784 ( .A0(\SORT0/n406 ), .A1(n1110), .B0(n1008), .C0(n1007), .Y(
        n1009) );
  INVXL U785 ( .A(n1105), .Y(n1159) );
  BUFX2 U786 ( .A(n875), .Y(n1165) );
  INVXL U787 ( .A(n901), .Y(n902) );
  INVXL U788 ( .A(n1172), .Y(n984) );
  INVXL U789 ( .A(n1180), .Y(n962) );
  BUFX2 U790 ( .A(n874), .Y(n988) );
  NAND3XL U791 ( .A(n206), .B(n1230), .C(n795), .Y(n874) );
  NAND2XL U792 ( .A(n896), .B(n897), .Y(n898) );
  INVXL U793 ( .A(n1050), .Y(n1071) );
  NAND2X1 U794 ( .A(n821), .B(n820), .Y(n1064) );
  OAI211XL U795 ( .A0(n1196), .A1(n1108), .B0(n1224), .C0(n1020), .Y(n1022) );
  INVXL U796 ( .A(n810), .Y(n811) );
  XOR2X1 U797 ( .A(n821), .B(n1236), .Y(n1066) );
  OAI211XL U798 ( .A0(n1036), .A1(\SORT0/n485 ), .B0(\SORT0/n484 ), .C0(n1027), 
        .Y(n1033) );
  BUFX2 U799 ( .A(n1228), .Y(n1198) );
  BUFX2 U800 ( .A(n1214), .Y(n1199) );
  BUFX2 U801 ( .A(n1232), .Y(n1201) );
  BUFX2 U802 ( .A(n1267), .Y(n1205) );
  BUFX2 U803 ( .A(n1213), .Y(n1206) );
  BUFX2 U804 ( .A(n343), .Y(n1196) );
  BUFX2 U805 ( .A(n1262), .Y(n1197) );
  BUFX2 U806 ( .A(n1227), .Y(n1200) );
  BUFX2 U807 ( .A(n1202), .Y(n1203) );
  AOI211XL U808 ( .A0(n1186), .A1(n1165), .B0(n982), .C0(n981), .Y(n983) );
  AOI211XL U809 ( .A0(n1177), .A1(n988), .B0(n942), .C0(n941), .Y(n943) );
  AOI211XL U810 ( .A0(\SORT0/seq[1][1] ), .A1(n1170), .B0(n1169), .C0(n1168), 
        .Y(n1171) );
  NOR4XL U811 ( .A(n1184), .B(n998), .C(n997), .D(n996), .Y(n999) );
  NOR3XL U812 ( .A(n923), .B(n922), .C(n921), .Y(n925) );
  NOR3XL U813 ( .A(n907), .B(n906), .C(n905), .Y(n908) );
  NOR4XL U814 ( .A(n1180), .B(n1002), .C(n1001), .D(n1000), .Y(n1003) );
  AOI211XL U815 ( .A0(n1181), .A1(n1165), .B0(n939), .C0(n938), .Y(n940) );
  AOI211XL U816 ( .A0(n1181), .A1(n988), .B0(n933), .C0(n932), .Y(n934) );
  NOR4XL U817 ( .A(n1176), .B(n1153), .C(n1152), .D(n1151), .Y(n1154) );
  OAI21X1 U818 ( .A0(n1144), .A1(n167), .B0(n1143), .Y(n171) );
  OAI22X1 U819 ( .A0(n352), .A1(n1224), .B0(n1219), .B1(\SORT0/n478 ), .Y(
        n1107) );
  INVXL U820 ( .A(n919), .Y(n920) );
  NAND3X2 U821 ( .A(n1230), .B(n1220), .C(n795), .Y(n919) );
  OAI211XL U822 ( .A0(n203), .A1(n1160), .B0(n1134), .C0(n1133), .Y(
        \SORT0/n526 ) );
  INVX16 U823 ( .A(n169), .Y(MatchCount[1]) );
  NAND2X4 U824 ( .A(n1175), .B(n930), .Y(n1161) );
  INVX16 U825 ( .A(n110), .Y(MinCost[9]) );
  NAND2XL U826 ( .A(n1133), .B(n1126), .Y(\SORT0/n529 ) );
  INVX16 U827 ( .A(n170), .Y(MatchCount[0]) );
  OAI22XL U828 ( .A0(n1068), .A1(MinCost[5]), .B0(n1063), .B1(MinCost[4]), .Y(
        n1084) );
  INVX16 U829 ( .A(n165), .Y(MinCost[4]) );
  NOR2X1 U830 ( .A(n1064), .B(MinCost[7]), .Y(n1073) );
  INVX16 U831 ( .A(n112), .Y(MinCost[7]) );
  NAND3X2 U832 ( .A(\SORT0/n477 ), .B(\SORT0/n476 ), .C(n362), .Y(n1189) );
  INVXL U833 ( .A(n947), .Y(n948) );
  NAND3X2 U834 ( .A(n199), .B(n206), .C(\SORT0/n482 ), .Y(n947) );
  INVX16 U835 ( .A(n168), .Y(MatchCount[2]) );
  INVX4 U836 ( .A(n1209), .Y(n1246) );
  NOR2X2 U837 ( .A(n292), .B(n162), .Y(n1157) );
  AOI211X4 U838 ( .A0(n352), .A1(n203), .B0(n1105), .C0(n1035), .Y(n1211) );
  OAI211XL U839 ( .A0(n359), .A1(n1108), .B0(\SORT0/n478 ), .C0(n1018), .Y(
        n1024) );
  NAND2XL U840 ( .A(\SORT0/seq[0][0] ), .B(n359), .Y(n852) );
  INVXL U841 ( .A(n1067), .Y(n1045) );
  INVXL U842 ( .A(n1076), .Y(n1079) );
  NAND4XL U843 ( .A(n1081), .B(n1080), .C(n1079), .D(n1078), .Y(n1082) );
  NOR3XL U844 ( .A(n1084), .B(n1083), .C(n1082), .Y(n1085) );
  AOI211XL U845 ( .A0(\SORT0/seq[2][1] ), .A1(n1266), .B0(\SORT0/seq[2][0] ), 
        .C0(n359), .Y(n856) );
  NAND2XL U846 ( .A(n902), .B(n930), .Y(n903) );
  NOR2XL U847 ( .A(\SORT0/n405 ), .B(n847), .Y(n845) );
  INVXL U848 ( .A(n1120), .Y(n1121) );
  AOI211XL U849 ( .A0(n1110), .A1(\SORT0/seq[3][1] ), .B0(n1012), .C0(n1011), 
        .Y(n1017) );
  AND2X1 U850 ( .A(\seq[1][0] ), .B(n1158), .Y(n839) );
  NOR3XL U851 ( .A(n913), .B(n912), .C(n911), .Y(n914) );
  AOI211XL U852 ( .A0(n1186), .A1(n988), .B0(n987), .C0(n986), .Y(n990) );
  INVXL U853 ( .A(n1117), .Y(n867) );
  NOR2XL U854 ( .A(n1222), .B(n1113), .Y(\SORT0/N124 ) );
  OAI211XL U855 ( .A0(\SORT0/n487 ), .A1(n1211), .B0(n1210), .C0(n1136), .Y(
        \SORT0/n491 ) );
  NAND2BX1 U856 ( .AN(n118), .B(n810), .Y(n1156) );
  INVX12 U857 ( .A(n111), .Y(MinCost[8]) );
  OR3X2 U858 ( .A(n118), .B(n296), .C(n160), .Y(n1208) );
  CLKBUFX3 U859 ( .A(n1208), .Y(n1209) );
  CLKINVX1 U860 ( .A(Cost[0]), .Y(n796) );
  OR2X2 U861 ( .A(n100), .B(n796), .Y(n952) );
  CLKINVX1 U862 ( .A(n952), .Y(n797) );
  CLKINVX1 U863 ( .A(Cost[1]), .Y(n798) );
  NAND2BX1 U864 ( .AN(n798), .B(sum[1]), .Y(n799) );
  OAI21X4 U865 ( .A0(Cost[2]), .A1(sum[2]), .B0(n955), .Y(n803) );
  NAND2BX1 U866 ( .AN(n801), .B(sum[2]), .Y(n802) );
  NAND2X4 U867 ( .A(n803), .B(n802), .Y(n972) );
  OAI21X4 U868 ( .A0(Cost[3]), .A1(n1231), .B0(n972), .Y(n804) );
  OAI2BB1X4 U869 ( .A0N(Cost[3]), .A1N(n1231), .B0(n804), .Y(n824) );
  CLKINVX1 U870 ( .A(Cost[4]), .Y(n805) );
  NAND2BX1 U871 ( .AN(sum[4]), .B(n805), .Y(n806) );
  AOI2BB2X4 U872 ( .B0(n824), .B1(n806), .A0N(n104), .A1N(n805), .Y(n825) );
  NOR2BX1 U873 ( .AN(n807), .B(sum[5]), .Y(n808) );
  AOI2BB2X4 U874 ( .B0(sum[5]), .B1(Cost[5]), .A0N(n825), .A1N(n808), .Y(n815)
         );
  XNOR2X1 U875 ( .A(sum[6]), .B(Cost[6]), .Y(n809) );
  OAI211XL U876 ( .A0(n160), .A1(n1239), .B0(n118), .C0(n811), .Y(n814) );
  NOR2BX2 U877 ( .AN(n162), .B(n292), .Y(n840) );
  OAI21XL U878 ( .A0(n812), .A1(n1240), .B0(n1260), .Y(n813) );
  NAND3BX1 U879 ( .AN(n298), .B(n840), .C(n1240), .Y(n1097) );
  OAI2BB1X2 U880 ( .A0N(n814), .A1N(n813), .B0(n1193), .Y(n973) );
  NAND2X2 U881 ( .A(n973), .B(n1260), .Y(n974) );
  OAI22XL U882 ( .A0(n1071), .A1(n974), .B0(n106), .B1(n973), .Y(n188) );
  OAI21X4 U883 ( .A0(Cost[6]), .A1(sum[6]), .B0(n816), .Y(n817) );
  OAI2BB1X4 U884 ( .A0N(sum[6]), .A1N(Cost[6]), .B0(n817), .Y(n818) );
  NAND2X4 U885 ( .A(n818), .B(n1234), .Y(n821) );
  NAND2X1 U886 ( .A(n819), .B(n107), .Y(n820) );
  OAI22XL U887 ( .A0(n1064), .A1(n974), .B0(n107), .B1(n973), .Y(n187) );
  OAI22XL U888 ( .A0(n794), .A1(n974), .B0(n108), .B1(n973), .Y(n186) );
  NOR2X2 U889 ( .A(n821), .B(n108), .Y(n822) );
  OAI22XL U890 ( .A0(n1070), .A1(n974), .B0(n109), .B1(n973), .Y(n185) );
  INVX12 U891 ( .A(n115), .Y(MinCost[2]) );
  INVX12 U892 ( .A(n116), .Y(MinCost[1]) );
  XNOR2X1 U893 ( .A(sum[4]), .B(Cost[4]), .Y(n823) );
  XOR2X1 U894 ( .A(n824), .B(n823), .Y(n1063) );
  OAI22XL U895 ( .A0(n974), .A1(n1063), .B0(n104), .B1(n973), .Y(n190) );
  CLKINVX1 U896 ( .A(n825), .Y(n827) );
  XOR2X1 U897 ( .A(sum[5]), .B(Cost[5]), .Y(n826) );
  INVX3 U898 ( .A(n1041), .Y(n1068) );
  OAI22XL U899 ( .A0(n974), .A1(n1068), .B0(n105), .B1(n973), .Y(n189) );
  INVX3 U900 ( .A(RST), .Y(n1261) );
  CLKBUFX3 U901 ( .A(n1261), .Y(n1244) );
  CLKBUFX3 U902 ( .A(n1261), .Y(n1243) );
  CLKBUFX3 U903 ( .A(n1261), .Y(n1245) );
  CLKBUFX8 U904 ( .A(n1261), .Y(n1242) );
  CLKBUFX3 U905 ( .A(n1261), .Y(n1241) );
  NOR2BX2 U906 ( .AN(n292), .B(n162), .Y(n1101) );
  AOI22XL U907 ( .A0(n840), .A1(\seq[4][1] ), .B0(n1101), .B1(\seq[7][1] ), 
        .Y(n832) );
  AND2X1 U908 ( .A(n292), .B(n162), .Y(n1158) );
  AOI22XL U909 ( .A0(n1158), .A1(\seq[5][1] ), .B0(n1157), .B1(\seq[6][1] ), 
        .Y(n831) );
  AO22X1 U910 ( .A0(n840), .A1(\seq[0][1] ), .B0(n1101), .B1(\seq[3][1] ), .Y(
        n829) );
  AO22X1 U911 ( .A0(n1158), .A1(\seq[1][1] ), .B0(n1157), .B1(\seq[2][1] ), 
        .Y(n828) );
  NOR2XL U912 ( .A(n829), .B(n828), .Y(n830) );
  AOI32XL U913 ( .A0(n832), .A1(n298), .A2(n831), .B0(n830), .B1(n1238), .Y(
        n127) );
  AOI22XL U914 ( .A0(n840), .A1(\seq[4][2] ), .B0(n1101), .B1(\seq[7][2] ), 
        .Y(n837) );
  AOI22XL U915 ( .A0(n1158), .A1(\seq[5][2] ), .B0(n1157), .B1(\seq[6][2] ), 
        .Y(n836) );
  AO22X1 U916 ( .A0(n840), .A1(\seq[0][2] ), .B0(n1101), .B1(\seq[3][2] ), .Y(
        n834) );
  AO22X1 U917 ( .A0(n1158), .A1(\seq[1][2] ), .B0(n1157), .B1(\seq[2][2] ), 
        .Y(n833) );
  NOR2XL U918 ( .A(n834), .B(n833), .Y(n835) );
  AOI32XL U919 ( .A0(n837), .A1(n298), .A2(n836), .B0(n835), .B1(n1238), .Y(
        n129) );
  AOI22XL U920 ( .A0(n840), .A1(\seq[4][0] ), .B0(n1101), .B1(\seq[7][0] ), 
        .Y(n843) );
  AOI22XL U921 ( .A0(n1158), .A1(\seq[5][0] ), .B0(n1157), .B1(\seq[6][0] ), 
        .Y(n842) );
  AO22X1 U922 ( .A0(n1157), .A1(\seq[2][0] ), .B0(n1101), .B1(\seq[3][0] ), 
        .Y(n838) );
  AOI211XL U923 ( .A0(n840), .A1(\seq[0][0] ), .B0(n839), .C0(n838), .Y(n841)
         );
  AOI32XL U924 ( .A0(n843), .A1(n298), .A2(n842), .B0(n841), .B1(n1238), .Y(
        n125) );
  NAND3XL U925 ( .A(n118), .B(n296), .C(n160), .Y(n1095) );
  NAND2XL U926 ( .A(n117), .B(n1095), .Y(n132) );
  NOR2XL U927 ( .A(\SORT0/n408 ), .B(n1208), .Y(n1096) );
  NOR2XL U928 ( .A(n296), .B(n1096), .Y(n792) );
  OAI22XL U929 ( .A0(\SORT0/pos[0] ), .A1(n1222), .B0(n1216), .B1(\SORT0/n480 ), .Y(n1104) );
  NAND2X1 U930 ( .A(\SORT0/n477 ), .B(n869), .Y(n1105) );
  OAI22XL U931 ( .A0(n203), .A1(\SORT0/n479 ), .B0(n1223), .B1(n1218), .Y(
        n1103) );
  NAND2X1 U932 ( .A(n203), .B(n1216), .Y(n900) );
  NOR2XL U933 ( .A(n900), .B(n1219), .Y(n847) );
  NAND2XL U934 ( .A(n1223), .B(n1218), .Y(n844) );
  OAI22XL U935 ( .A0(\SORT0/pos[0] ), .A1(n844), .B0(n1107), .B1(n900), .Y(
        n846) );
  AOI211XL U936 ( .A0(\SORT0/n405 ), .A1(n847), .B0(n846), .C0(n845), .Y(n849)
         );
  OAI21XL U937 ( .A0(\SORT0/n479 ), .A1(n900), .B0(n1107), .Y(n848) );
  OAI211XL U938 ( .A0(n1216), .A1(n1103), .B0(n849), .C0(n848), .Y(n851) );
  OAI211XL U939 ( .A0(n362), .A1(req), .B0(\SORT0/n477 ), .C0(\SORT0/n476 ), 
        .Y(n850) );
  OAI31XL U940 ( .A0(n1104), .A1(n1105), .A2(n851), .B0(n850), .Y(
        \SORT0/ns [0]) );
  NOR2X1 U941 ( .A(n362), .B(n1195), .Y(n1160) );
  AOI222XL U942 ( .A0(\SORT0/seq[1][1] ), .A1(n1206), .B0(\SORT0/seq[1][1] ), 
        .B1(n852), .C0(n1206), .C1(n852), .Y(n853) );
  AOI222XL U943 ( .A0(\SORT0/seq[0][2] ), .A1(n853), .B0(\SORT0/seq[0][2] ), 
        .B1(n1201), .C0(n853), .C1(n1201), .Y(n854) );
  OAI22XL U944 ( .A0(\SORT0/seq[2][1] ), .A1(n1266), .B0(\SORT0/seq[2][2] ), 
        .B1(n1201), .Y(n855) );
  OAI22XL U945 ( .A0(\SORT0/seq[1][2] ), .A1(n1199), .B0(n856), .B1(n855), .Y(
        n1120) );
  AOI211XL U946 ( .A0(\SORT0/seq[3][1] ), .A1(n1200), .B0(\SORT0/seq[3][0] ), 
        .C0(n1265), .Y(n858) );
  OAI22XL U947 ( .A0(\SORT0/seq[3][2] ), .A1(n1199), .B0(\SORT0/seq[3][1] ), 
        .B1(n1200), .Y(n857) );
  OAI22X1 U948 ( .A0(n858), .A1(n857), .B0(\SORT0/seq[2][2] ), .B1(n1198), .Y(
        n1123) );
  NOR2X1 U949 ( .A(n1129), .B(n1131), .Y(n1117) );
  AOI22XL U950 ( .A0(n198), .A1(n1226), .B0(n207), .B1(n1221), .Y(n860) );
  OAI22XL U951 ( .A0(n207), .A1(n1221), .B0(n1237), .B1(n1215), .Y(n859) );
  OAI22XL U952 ( .A0(n860), .A1(n859), .B0(n327), .B1(\SORT0/n406 ), .Y(n1116)
         );
  AOI211XL U953 ( .A0(n1221), .A1(n1217), .B0(n1196), .C0(n1226), .Y(n862) );
  OAI22XL U954 ( .A0(n323), .A1(n1237), .B0(n1221), .B1(n1217), .Y(n861) );
  OAI22XL U955 ( .A0(n862), .A1(n861), .B0(n327), .B1(n1233), .Y(n1127) );
  AOI211XL U956 ( .A0(\SORT0/seq[5][1] ), .A1(n1263), .B0(n1235), .C0(n1212), 
        .Y(n864) );
  OAI22XL U957 ( .A0(\SORT0/seq[5][1] ), .A1(n1263), .B0(n1197), .B1(n1233), 
        .Y(n863) );
  OAI22XL U958 ( .A0(n864), .A1(n863), .B0(\SORT0/seq[4][2] ), .B1(n323), .Y(
        n1122) );
  AOI211XL U959 ( .A0(\SORT0/seq[4][1] ), .A1(n1264), .B0(\SORT0/seq[4][0] ), 
        .C0(n1225), .Y(n866) );
  OAI22XL U960 ( .A0(\SORT0/seq[4][1] ), .A1(n1264), .B0(\SORT0/seq[4][2] ), 
        .B1(n1198), .Y(n865) );
  OAI22XL U961 ( .A0(\SORT0/seq[3][2] ), .A1(n1197), .B0(n866), .B1(n865), .Y(
        n1119) );
  NOR2BX1 U962 ( .AN(n1127), .B(n1128), .Y(n1118) );
  NAND2BX1 U963 ( .AN(n1116), .B(n1118), .Y(n868) );
  OAI21XL U964 ( .A0(n867), .A1(n868), .B0(\SORT0/n408 ), .Y(\SORT0/n473 ) );
  OAI2BB2XL U965 ( .B0(n352), .B1(n1160), .A0N(n868), .A1N(n1117), .Y(
        \SORT0/n525 ) );
  NAND2X2 U966 ( .A(n869), .B(n1229), .Y(n1210) );
  NAND3X1 U967 ( .A(\SORT0/pos[0] ), .B(n1219), .C(n1223), .Y(n901) );
  NAND3X1 U968 ( .A(n206), .B(n199), .C(n795), .Y(n891) );
  NOR2X2 U969 ( .A(n870), .B(n1210), .Y(n1174) );
  NAND2BX1 U970 ( .AN(n891), .B(n1174), .Y(n897) );
  NAND3XL U971 ( .A(n1219), .B(n1216), .C(n1223), .Y(n887) );
  CLKINVX1 U972 ( .A(n887), .Y(n1175) );
  NAND2X1 U973 ( .A(n352), .B(n1216), .Y(n961) );
  NAND2X1 U974 ( .A(n352), .B(\SORT0/pos[0] ), .Y(n957) );
  OAI22XL U975 ( .A0(n961), .A1(n1265), .B0(n957), .B1(n1225), .Y(n872) );
  NAND3X1 U976 ( .A(\SORT0/pos[0] ), .B(n203), .C(n1219), .Y(n931) );
  OAI22XL U977 ( .A0(n1196), .A1(n931), .B0(n900), .B1(n1212), .Y(n871) );
  OAI21XL U978 ( .A0(n198), .A1(n901), .B0(n873), .Y(n1028) );
  OAI22XL U979 ( .A0(n1225), .A1(n988), .B0(n1265), .B1(n919), .Y(n879) );
  NAND3XL U980 ( .A(n199), .B(\SORT0/n482 ), .C(n1220), .Y(n875) );
  OAI22XL U981 ( .A0(n1196), .A1(n947), .B0(n1165), .B1(n1212), .Y(n878) );
  NAND3X1 U982 ( .A(n199), .B(n1220), .C(n795), .Y(n1185) );
  NAND3X1 U983 ( .A(\SORT0/n482 ), .B(n1230), .C(n1220), .Y(n993) );
  OAI22XL U984 ( .A0(n205), .A1(n1185), .B0(n993), .B1(n1268), .Y(n877) );
  NAND3X1 U985 ( .A(n206), .B(\SORT0/n482 ), .C(n1230), .Y(n960) );
  OAI22XL U986 ( .A0(n359), .A1(n960), .B0(n198), .B1(n891), .Y(n876) );
  NOR4X1 U987 ( .A(n879), .B(n878), .C(n877), .D(n876), .Y(n910) );
  OAI222XL U988 ( .A0(n898), .A1(n198), .B0(n897), .B1(n909), .C0(n896), .C1(
        n910), .Y(\SORT0/n512 ) );
  OAI22XL U989 ( .A0(n1197), .A1(n900), .B0(n1199), .B1(n961), .Y(n882) );
  OAI22XL U990 ( .A0(n323), .A1(n931), .B0(n957), .B1(n1198), .Y(n881) );
  OAI22XL U991 ( .A0(n327), .A1(n887), .B0(n901), .B1(n1215), .Y(n880) );
  NOR3X1 U992 ( .A(n882), .B(n881), .C(n880), .Y(n1034) );
  OAI22XL U993 ( .A0(n1199), .A1(n919), .B0(n1198), .B1(n988), .Y(n886) );
  OAI22XL U994 ( .A0(n323), .A1(n947), .B0(n1197), .B1(n1165), .Y(n885) );
  OAI22XL U995 ( .A0(n327), .A1(n1185), .B0(n993), .B1(n1205), .Y(n884) );
  OAI22XL U996 ( .A0(n1215), .A1(n891), .B0(n1201), .B1(n960), .Y(n883) );
  NOR4X1 U997 ( .A(n886), .B(n885), .C(n884), .D(n883), .Y(n904) );
  OAI222XL U998 ( .A0(n898), .A1(n1215), .B0(n897), .B1(n1034), .C0(n896), 
        .C1(n904), .Y(\SORT0/n514 ) );
  OAI22XL U999 ( .A0(n900), .A1(n1263), .B0(n957), .B1(n1264), .Y(n890) );
  OAI22XL U1000 ( .A0(n961), .A1(n1200), .B0(n931), .B1(n1217), .Y(n889) );
  OAI22XL U1001 ( .A0(n337), .A1(n887), .B0(n207), .B1(n901), .Y(n888) );
  NOR3X1 U1002 ( .A(n890), .B(n889), .C(n888), .Y(n1030) );
  OAI22XL U1003 ( .A0(n1264), .A1(n988), .B0(n1200), .B1(n919), .Y(n895) );
  OAI22XL U1004 ( .A0(n1263), .A1(n1165), .B0(n1217), .B1(n947), .Y(n894) );
  OAI22XL U1005 ( .A0(n337), .A1(n1185), .B0(n993), .B1(n1206), .Y(n893) );
  OAI22XL U1006 ( .A0(n207), .A1(n891), .B0(n960), .B1(n1266), .Y(n892) );
  NOR4X1 U1007 ( .A(n895), .B(n894), .C(n893), .D(n892), .Y(n915) );
  OAI222XL U1008 ( .A0(n898), .A1(n207), .B0(n897), .B1(n1030), .C0(n896), 
        .C1(n915), .Y(\SORT0/n513 ) );
  NAND2XL U1009 ( .A(n961), .B(n919), .Y(n899) );
  NOR2X1 U1010 ( .A(n352), .B(n1189), .Y(n959) );
  NOR2X1 U1011 ( .A(n957), .B(n1189), .Y(n995) );
  AOI211X1 U1012 ( .A0(n1174), .A1(n899), .B0(n959), .C0(n995), .Y(n926) );
  CLKINVX1 U1013 ( .A(n1189), .Y(n930) );
  NAND3X1 U1014 ( .A(n352), .B(n930), .C(n1223), .Y(n956) );
  NAND2X2 U1015 ( .A(n935), .B(n930), .Y(n1147) );
  OAI22XL U1016 ( .A0(n1205), .A1(n956), .B0(n1201), .B1(n1147), .Y(n907) );
  CLKBUFX3 U1017 ( .A(n903), .Y(n1163) );
  OAI22XL U1018 ( .A0(n1197), .A1(n1163), .B0(n1198), .B1(n1161), .Y(n906) );
  NOR2X1 U1019 ( .A(n1034), .B(n1210), .Y(n1180) );
  NOR2X1 U1020 ( .A(n904), .B(n1210), .Y(n1181) );
  AO22X1 U1021 ( .A0(n920), .A1(n1180), .B0(n919), .B1(n1181), .Y(n905) );
  NAND3X1 U1022 ( .A(\SORT0/pos[0] ), .B(n203), .C(n930), .Y(n1148) );
  NOR2BX1 U1023 ( .AN(n1148), .B(n926), .Y(n924) );
  OAI22XL U1024 ( .A0(n926), .A1(n908), .B0(n924), .B1(n1199), .Y(\SORT0/n509 ) );
  OAI22XL U1025 ( .A0(n359), .A1(n1147), .B0(n1268), .B1(n956), .Y(n913) );
  OAI22XL U1026 ( .A0(n1225), .A1(n1161), .B0(n1212), .B1(n1163), .Y(n912) );
  NOR2X1 U1027 ( .A(n1210), .B(n909), .Y(n1184) );
  NOR2X1 U1028 ( .A(n1210), .B(n910), .Y(n1186) );
  AO22X1 U1029 ( .A0(n920), .A1(n1184), .B0(n919), .B1(n1186), .Y(n911) );
  OAI22XL U1030 ( .A0(n926), .A1(n914), .B0(n924), .B1(n1265), .Y(\SORT0/n511 ) );
  AOI32X1 U1031 ( .A0(n931), .A1(n937), .A2(n947), .B0(n994), .B1(n937), .Y(
        n949) );
  OAI22XL U1032 ( .A0(n1206), .A1(n1161), .B0(n1266), .B1(n1163), .Y(n917) );
  NOR2X1 U1033 ( .A(n915), .B(n1210), .Y(n1177) );
  NOR2X1 U1034 ( .A(n1210), .B(n1030), .Y(n1176) );
  CLKINVX1 U1035 ( .A(n1176), .Y(n1164) );
  OAI22XL U1036 ( .A0(n948), .A1(n1166), .B0(n947), .B1(n1164), .Y(n916) );
  OAI21XL U1037 ( .A0(n917), .A1(n916), .B0(n949), .Y(n918) );
  OAI21XL U1038 ( .A0(n949), .A1(n1217), .B0(n918), .Y(\SORT0/n498 ) );
  OAI22XL U1039 ( .A0(n1206), .A1(n956), .B0(n1266), .B1(n1147), .Y(n923) );
  OAI22XL U1040 ( .A0(n1263), .A1(n1163), .B0(n1264), .B1(n1161), .Y(n922) );
  OAI22XL U1041 ( .A0(n920), .A1(n1166), .B0(n919), .B1(n1164), .Y(n921) );
  OAI22XL U1042 ( .A0(n926), .A1(n925), .B0(n924), .B1(n1200), .Y(\SORT0/n510 ) );
  NAND2BX1 U1043 ( .AN(Cost[0]), .B(n100), .Y(n927) );
  OAI22XL U1044 ( .A0(n974), .A1(n1072), .B0(n100), .B1(n973), .Y(n194) );
  INVXL U1045 ( .A(n957), .Y(n929) );
  INVXL U1046 ( .A(n988), .Y(n928) );
  AOI221X1 U1047 ( .A0(n929), .A1(n1174), .B0(n928), .B1(n1174), .C0(n959), 
        .Y(n991) );
  OAI22XL U1048 ( .A0(n1199), .A1(n1161), .B0(n1205), .B1(n1147), .Y(n933) );
  NAND2BX1 U1049 ( .AN(n931), .B(n930), .Y(n1162) );
  OAI22XL U1050 ( .A0(n1201), .A1(n1162), .B0(n988), .B1(n962), .Y(n932) );
  NOR2X1 U1051 ( .A(n1173), .B(n991), .Y(n989) );
  OAI22XL U1052 ( .A0(n991), .A1(n934), .B0(n989), .B1(n1198), .Y(\SORT0/n505 ) );
  OAI21XL U1053 ( .A0(n935), .A1(n1167), .B0(n1174), .Y(n936) );
  NAND3X1 U1054 ( .A(n937), .B(n1162), .C(n936), .Y(n1172) );
  OAI22XL U1055 ( .A0(n1199), .A1(n1163), .B0(n1205), .B1(n1162), .Y(n939) );
  OAI22XL U1056 ( .A0(n1201), .A1(n1161), .B0(n1165), .B1(n962), .Y(n938) );
  OAI22XL U1057 ( .A0(n984), .A1(n940), .B0(n1172), .B1(n1197), .Y(
        \SORT0/n501 ) );
  OAI22XL U1058 ( .A0(n1200), .A1(n1161), .B0(n1206), .B1(n1147), .Y(n942) );
  OAI22XL U1059 ( .A0(n1266), .A1(n1162), .B0(n988), .B1(n1164), .Y(n941) );
  OAI22XL U1060 ( .A0(n991), .A1(n943), .B0(n989), .B1(n1264), .Y(\SORT0/n506 ) );
  OAI22XL U1061 ( .A0(n359), .A1(n1163), .B0(n1268), .B1(n1161), .Y(n944) );
  AOI221XL U1062 ( .A0(n1184), .A1(n948), .B0(n1186), .B1(n947), .C0(n944), 
        .Y(n945) );
  OAI22XL U1063 ( .A0(n951), .A1(n945), .B0(n949), .B1(n1196), .Y(\SORT0/n499 ) );
  OAI22XL U1064 ( .A0(n1205), .A1(n1161), .B0(n1201), .B1(n1163), .Y(n946) );
  AOI221XL U1065 ( .A0(n1180), .A1(n948), .B0(n1181), .B1(n947), .C0(n946), 
        .Y(n950) );
  OAI22XL U1066 ( .A0(n951), .A1(n950), .B0(n949), .B1(n323), .Y(\SORT0/n497 )
         );
  XNOR2X1 U1067 ( .A(n952), .B(Cost[1]), .Y(n953) );
  XNOR2X1 U1068 ( .A(n953), .B(sum[1]), .Y(n1067) );
  OAI22XL U1069 ( .A0(n974), .A1(n1067), .B0(n101), .B1(n973), .Y(n193) );
  XOR2X1 U1070 ( .A(sum[2]), .B(Cost[2]), .Y(n954) );
  XOR2X1 U1071 ( .A(n955), .B(n954), .Y(n1044) );
  CLKINVX1 U1072 ( .A(n1044), .Y(n1069) );
  OAI22XL U1073 ( .A0(n974), .A1(n1069), .B0(n102), .B1(n973), .Y(n192) );
  OAI31XL U1074 ( .A0(n957), .A1(n1223), .A2(n1105), .B0(n956), .Y(n958) );
  OAI21X1 U1075 ( .A0(n994), .A1(n960), .B0(n992), .Y(n975) );
  NOR2BX1 U1076 ( .AN(n975), .B(n995), .Y(n980) );
  OAI22XL U1077 ( .A0(n323), .A1(n1163), .B0(n1148), .B1(n1198), .Y(n965) );
  OAI22XL U1078 ( .A0(n1197), .A1(n1161), .B0(n1199), .B1(n1147), .Y(n964) );
  OA21X1 U1079 ( .A0(n961), .A1(n1189), .B0(n1105), .Y(n1150) );
  OAI21XL U1080 ( .A0(n1150), .A1(n1205), .B0(n962), .Y(n963) );
  OAI31XL U1081 ( .A0(n965), .A1(n964), .A2(n963), .B0(n975), .Y(n966) );
  OAI21XL U1082 ( .A0(n980), .A1(n1201), .B0(n966), .Y(\SORT0/n516 ) );
  OAI22XL U1083 ( .A0(n1264), .A1(n1148), .B0(n1217), .B1(n1163), .Y(n969) );
  OAI22XL U1084 ( .A0(n1263), .A1(n1161), .B0(n1200), .B1(n1147), .Y(n968) );
  OAI21XL U1085 ( .A0(n1150), .A1(n1206), .B0(n1164), .Y(n967) );
  OAI31XL U1086 ( .A0(n969), .A1(n968), .A2(n967), .B0(n975), .Y(n970) );
  OAI21XL U1087 ( .A0(n980), .A1(n1266), .B0(n970), .Y(\SORT0/n517 ) );
  INVX12 U1088 ( .A(n117), .Y(Valid) );
  XNOR2X1 U1089 ( .A(n103), .B(Cost[3]), .Y(n971) );
  XOR2X1 U1090 ( .A(n972), .B(n971), .Y(n1042) );
  OAI22XL U1091 ( .A0(n974), .A1(n1065), .B0(n103), .B1(n973), .Y(n191) );
  OAI22XL U1092 ( .A0(n1196), .A1(n1163), .B0(n1225), .B1(n1148), .Y(n978) );
  OAI22XL U1093 ( .A0(n1265), .A1(n1147), .B0(n1212), .B1(n1161), .Y(n977) );
  OAI21XL U1094 ( .A0(n1150), .A1(n1268), .B0(n985), .Y(n976) );
  OAI31XL U1095 ( .A0(n978), .A1(n977), .A2(n976), .B0(n975), .Y(n979) );
  OAI21XL U1096 ( .A0(n359), .A1(n980), .B0(n979), .Y(\SORT0/n518 ) );
  OAI22XL U1097 ( .A0(n1265), .A1(n1163), .B0(n1268), .B1(n1162), .Y(n982) );
  OAI22XL U1098 ( .A0(n359), .A1(n1161), .B0(n985), .B1(n1165), .Y(n981) );
  OAI22XL U1099 ( .A0(n984), .A1(n983), .B0(n1172), .B1(n1212), .Y(
        \SORT0/n503 ) );
  OAI22XL U1100 ( .A0(n1265), .A1(n1161), .B0(n1268), .B1(n1147), .Y(n987) );
  OAI22XL U1101 ( .A0(n359), .A1(n1162), .B0(n985), .B1(n988), .Y(n986) );
  OAI22XL U1102 ( .A0(n991), .A1(n990), .B0(n989), .B1(n1225), .Y(\SORT0/n507 ) );
  INVX12 U1103 ( .A(n167), .Y(MatchCount[3]) );
  OAI21X1 U1104 ( .A0(n994), .A1(n993), .B0(n992), .Y(n1155) );
  OAI22XL U1105 ( .A0(n1225), .A1(n1147), .B0(n1212), .B1(n1148), .Y(n998) );
  OAI22XL U1106 ( .A0(n1196), .A1(n1161), .B0(n205), .B1(n1163), .Y(n997) );
  INVXL U1107 ( .A(n995), .Y(n1149) );
  OAI22XL U1108 ( .A0(n359), .A1(n1150), .B0(n1265), .B1(n1149), .Y(n996) );
  OAI22XL U1109 ( .A0(n1004), .A1(n999), .B0(n1155), .B1(n1268), .Y(
        \SORT0/n522 ) );
  OAI22XL U1110 ( .A0(n1197), .A1(n1148), .B0(n1198), .B1(n1147), .Y(n1002) );
  OAI22XL U1111 ( .A0(n323), .A1(n1161), .B0(n327), .B1(n1163), .Y(n1001) );
  OAI22XL U1112 ( .A0(n1150), .A1(n1201), .B0(n1199), .B1(n1149), .Y(n1000) );
  OAI22XL U1113 ( .A0(n1004), .A1(n1003), .B0(n1155), .B1(n1205), .Y(
        \SORT0/n520 ) );
  INVX12 U1114 ( .A(n166), .Y(MinCost[0]) );
  NOR2X1 U1115 ( .A(\SORT0/n480 ), .B(n1218), .Y(n1015) );
  NAND2X1 U1116 ( .A(n1218), .B(n1222), .Y(n1115) );
  OAI21XL U1117 ( .A0(n1198), .A1(n1115), .B0(\SORT0/n478 ), .Y(n1006) );
  NAND2X1 U1118 ( .A(\SORT0/n480 ), .B(n1218), .Y(n1109) );
  NAND2X1 U1119 ( .A(\SORT0/n479 ), .B(\SORT0/n480 ), .Y(n1019) );
  OAI22XL U1120 ( .A0(n1199), .A1(n1109), .B0(n1019), .B1(n1205), .Y(n1005) );
  CLKINVX1 U1121 ( .A(n1115), .Y(n1110) );
  OAI21XL U1122 ( .A0(n327), .A1(n1109), .B0(n1224), .Y(n1008) );
  CLKINVX1 U1123 ( .A(n1015), .Y(n1108) );
  OAI22XL U1124 ( .A0(n323), .A1(n1108), .B0(n1197), .B1(n1019), .Y(n1007) );
  NOR2X1 U1125 ( .A(n1010), .B(n1009), .Y(n1036) );
  OAI21XL U1126 ( .A0(n1109), .A1(n1200), .B0(\SORT0/n478 ), .Y(n1012) );
  OAI22XL U1127 ( .A0(n1019), .A1(n1206), .B0(n1108), .B1(n1266), .Y(n1011) );
  OAI21XL U1128 ( .A0(n207), .A1(n1115), .B0(n1224), .Y(n1014) );
  OAI22XL U1129 ( .A0(n337), .A1(n1109), .B0(n1019), .B1(n1263), .Y(n1013) );
  NOR2X1 U1130 ( .A(n1017), .B(n1016), .Y(n1037) );
  OAI22XL U1131 ( .A0(n1109), .A1(n1265), .B0(n1019), .B1(n1268), .Y(n1023) );
  NAND2BX1 U1132 ( .AN(n1019), .B(\SORT0/seq[4][0] ), .Y(n1020) );
  OAI22XL U1133 ( .A0(n205), .A1(n1109), .B0(n198), .B1(n1115), .Y(n1021) );
  OAI22X1 U1134 ( .A0(n1024), .A1(n1023), .B0(n1022), .B1(n1021), .Y(n1135) );
  NAND2BX1 U1135 ( .AN(\SORT0/n487 ), .B(n1135), .Y(n1025) );
  AOI222XL U1136 ( .A0(n1037), .A1(\SORT0/n486 ), .B0(n1037), .B1(n1025), .C0(
        \SORT0/n486 ), .C1(n1025), .Y(n1026) );
  AOI222XL U1137 ( .A0(n1030), .A1(n1037), .B0(n1030), .B1(n1029), .C0(n1037), 
        .C1(n1029), .Y(n1031) );
  CLKINVX1 U1138 ( .A(n1211), .Y(n1039) );
  NAND2X1 U1139 ( .A(n1210), .B(n1039), .Y(n1038) );
  OAI2BB2XL U1140 ( .B0(\SORT0/n485 ), .B1(n1038), .A0N(n1036), .A1N(n1211), 
        .Y(\SORT0/n489 ) );
  OAI2BB2XL U1141 ( .B0(\SORT0/n486 ), .B1(n1038), .A0N(n1037), .A1N(n1211), 
        .Y(\SORT0/n490 ) );
  OAI22XL U1142 ( .A0(\SORT0/n480 ), .A1(n1039), .B0(n1220), .B1(n1038), .Y(
        \SORT0/n524 ) );
  OAI22XL U1143 ( .A0(\SORT0/n479 ), .A1(n1039), .B0(\SORT0/n482 ), .B1(n1038), 
        .Y(\SORT0/n523 ) );
  OAI22XL U1144 ( .A0(\SORT0/n478 ), .A1(n1039), .B0(n1230), .B1(n1038), .Y(
        \SORT0/n528 ) );
  INVX12 U1145 ( .A(n114), .Y(MinCost[3]) );
  INVX12 U1146 ( .A(n113), .Y(MinCost[5]) );
  OAI21X1 U1147 ( .A0(n113), .A1(n1041), .B0(n1040), .Y(n1074) );
  NAND2X1 U1148 ( .A(n1063), .B(MinCost[4]), .Y(n1081) );
  XOR2X1 U1149 ( .A(n1042), .B(n114), .Y(n1043) );
  OAI22X1 U1150 ( .A0(n1069), .A1(MinCost[2]), .B0(n1067), .B1(MinCost[1]), 
        .Y(n1075) );
  NOR2BX1 U1151 ( .AN(n1076), .B(n1075), .Y(n1046) );
  AOI21X1 U1152 ( .A0(n1081), .A1(n1047), .B0(n1084), .Y(n1048) );
  NOR2X2 U1153 ( .A(n1074), .B(n1048), .Y(n1049) );
  AOI211X1 U1154 ( .A0(n164), .A1(n1050), .B0(n1049), .C0(n1073), .Y(n1061) );
  NOR2X1 U1155 ( .A(n1051), .B(n110), .Y(n1057) );
  CLKINVX1 U1156 ( .A(n1057), .Y(n1055) );
  NOR3X1 U1157 ( .A(n1057), .B(n794), .C(MinCost[8]), .Y(n1059) );
  OA21X4 U1158 ( .A0(n1061), .A1(n1089), .B0(n1060), .Y(n1062) );
  INVX12 U1159 ( .A(n1062), .Y(n1092) );
  MXI2X1 U1160 ( .A(n1063), .B(n165), .S0(n1092), .Y(n178) );
  MXI2X1 U1161 ( .A(n1064), .B(n112), .S0(n1092), .Y(n181) );
  MXI2X1 U1162 ( .A(n1065), .B(n114), .S0(n1092), .Y(n177) );
  MXI2X1 U1163 ( .A(n794), .B(n111), .S0(n1092), .Y(n182) );
  MXI2X1 U1164 ( .A(n1067), .B(n116), .S0(n1092), .Y(n175) );
  MXI2X1 U1165 ( .A(n1068), .B(n113), .S0(n1092), .Y(n179) );
  MXI2X1 U1166 ( .A(n1069), .B(n115), .S0(n1092), .Y(n176) );
  MXI2X1 U1167 ( .A(n1070), .B(n110), .S0(n1092), .Y(n183) );
  MXI2X1 U1168 ( .A(n1071), .B(n164), .S0(n1092), .Y(n180) );
  MXI2X1 U1169 ( .A(n1072), .B(n166), .S0(n1092), .Y(n184) );
  NAND2XL U1170 ( .A(n1077), .B(n166), .Y(n1078) );
  NAND3X1 U1171 ( .A(n1087), .B(n1086), .C(n1085), .Y(n1088) );
  NAND2X2 U1172 ( .A(n1142), .B(n1090), .Y(n1091) );
  NOR2X2 U1173 ( .A(n1091), .B(n170), .Y(n1145) );
  NAND2X2 U1174 ( .A(n1092), .B(n1091), .Y(n1146) );
  NAND2X2 U1175 ( .A(n1146), .B(n1093), .Y(n1141) );
  NAND2X1 U1176 ( .A(n1141), .B(MatchCount[2]), .Y(n1094) );
  OAI31X1 U1177 ( .A0(n169), .A1(MatchCount[2]), .A2(n1140), .B0(n1094), .Y(
        n172) );
  INVX12 U1178 ( .A(n217), .Y(W[2]) );
  INVX12 U1179 ( .A(n219), .Y(W[1]) );
  INVX12 U1180 ( .A(n211), .Y(J[2]) );
  INVX12 U1181 ( .A(n221), .Y(W[0]) );
  INVX12 U1182 ( .A(n215), .Y(J[0]) );
  INVX12 U1183 ( .A(n213), .Y(J[1]) );
  NAND2BX1 U1184 ( .AN(n1096), .B(n1095), .Y(ns[2]) );
  NAND2XL U1185 ( .A(n1210), .B(n1189), .Y(\SORT0/ns [2]) );
  NAND2XL U1186 ( .A(n1260), .B(n1097), .Y(n1099) );
  NOR2XL U1187 ( .A(n292), .B(n1099), .Y(N66) );
  NAND2XL U1188 ( .A(n298), .B(n1101), .Y(n1100) );
  NOR2XL U1189 ( .A(n130), .B(n1100), .Y(n1098) );
  AOI211XL U1190 ( .A0(n130), .A1(n1100), .B0(n1099), .C0(n1098), .Y(N69) );
  OAI211XL U1191 ( .A0(n298), .A1(n1101), .B0(n1100), .C0(n1260), .Y(n1102) );
  INVXL U1192 ( .A(n1102), .Y(N68) );
  NAND3XL U1193 ( .A(n1104), .B(\SORT0/n405 ), .C(n1103), .Y(n1106) );
  OAI21X1 U1194 ( .A0(n1107), .A1(n1106), .B0(n1159), .Y(n1113) );
  AOI21XL U1195 ( .A0(n1109), .A1(n1108), .B0(n1113), .Y(\SORT0/N125 ) );
  NAND2XL U1196 ( .A(n1110), .B(n1224), .Y(n1112) );
  NOR2XL U1197 ( .A(\SORT0/n405 ), .B(n1112), .Y(n1111) );
  AOI211XL U1198 ( .A0(\SORT0/n405 ), .A1(n1112), .B0(n1113), .C0(n1111), .Y(
        \SORT0/N127 ) );
  INVXL U1199 ( .A(n1112), .Y(n1114) );
  AOI211XL U1200 ( .A0(\SORT0/n478 ), .A1(n1115), .B0(n1114), .C0(n1113), .Y(
        \SORT0/N126 ) );
  INVXL U1201 ( .A(n1119), .Y(n1124) );
  AOI221XL U1202 ( .A0(n1124), .A1(n1123), .B0(n1122), .B1(n1123), .C0(n1121), 
        .Y(n1125) );
  OAI22XL U1203 ( .A0(\SORT0/pos[0] ), .A1(n1160), .B0(n1125), .B1(n1129), .Y(
        n1126) );
  NOR2XL U1204 ( .A(n1128), .B(n1127), .Y(n1132) );
  INVXL U1205 ( .A(n1129), .Y(n1130) );
  OAI21XL U1206 ( .A0(n1132), .A1(n1131), .B0(n1130), .Y(n1134) );
  INVX12 U1207 ( .A(n164), .Y(MinCost[6]) );
  NAND2BX1 U1208 ( .AN(n1135), .B(n1211), .Y(n1136) );
  NAND2X1 U1209 ( .A(n1138), .B(MatchCount[1]), .Y(n1139) );
  NAND4X1 U1210 ( .A(n1145), .B(n167), .C(MatchCount[2]), .D(MatchCount[1]), 
        .Y(n1143) );
  AOI2BB1X1 U1211 ( .A0N(n1146), .A1N(MatchCount[0]), .B0(n1145), .Y(n174) );
  OAI22XL U1213 ( .A0(n1263), .A1(n1148), .B0(n1264), .B1(n1147), .Y(n1153) );
  OAI22XL U1214 ( .A0(n337), .A1(n1163), .B0(n1161), .B1(n1217), .Y(n1152) );
  OAI22XL U1215 ( .A0(n1150), .A1(n1266), .B0(n1200), .B1(n1149), .Y(n1151) );
  AOI2BB2X1 U1216 ( .B0(n1155), .B1(n1154), .A0N(n1155), .A1N(
        \SORT0/seq[0][1] ), .Y(\SORT0/n521 ) );
  AOI2BB1X1 U1217 ( .A0N(n1158), .A1N(n1157), .B0(n1156), .Y(N67) );
  INVXL U1218 ( .A(n1161), .Y(n1170) );
  OAI22XL U1219 ( .A0(n1200), .A1(n1163), .B0(n1206), .B1(n1162), .Y(n1169) );
  OAI22XL U1220 ( .A0(n1167), .A1(n1166), .B0(n1165), .B1(n1164), .Y(n1168) );
  AOI2BB2X1 U1221 ( .B0(n1172), .B1(n1171), .A0N(n1172), .A1N(
        \SORT0/seq[4][1] ), .Y(\SORT0/n502 ) );
  INVX1 U1222 ( .A(n1185), .Y(n1187) );
  OAI22XL U1223 ( .A0(n1187), .A1(n1177), .B0(n1185), .B1(n1176), .Y(n1178) );
  OAI21XL U1224 ( .A0(n1206), .A1(n1189), .B0(n1178), .Y(n1179) );
  AOI2BB2X1 U1225 ( .B0(n1191), .B1(n337), .A0N(n1191), .A1N(n1179), .Y(
        \SORT0/n494 ) );
  OAI22XL U1226 ( .A0(n1187), .A1(n1181), .B0(n1185), .B1(n1180), .Y(n1182) );
  OAI21XL U1227 ( .A0(n1205), .A1(n1189), .B0(n1182), .Y(n1183) );
  AOI2BB2X1 U1228 ( .B0(n1191), .B1(n327), .A0N(n1191), .A1N(n1183), .Y(
        \SORT0/n493 ) );
  OAI22XL U1229 ( .A0(n1187), .A1(n1186), .B0(n1185), .B1(n1184), .Y(n1188) );
  OAI21XL U1230 ( .A0(n1268), .A1(n1189), .B0(n1188), .Y(n1190) );
  AOI2BB2X1 U1231 ( .B0(n1191), .B1(n205), .A0N(n1191), .A1N(n1190), .Y(
        \SORT0/n495 ) );
  NAND2XL U1232 ( .A(\SORT0/n477 ), .B(\SORT0/n476 ), .Y(n1192) );
  OAI31XL U1233 ( .A0(n362), .A1(n1192), .A2(n1209), .B0(n792), .Y(n1194) );
  OAI21XL U1234 ( .A0(n160), .A1(n1194), .B0(n1193), .Y(ns[1]) );
  NOR2BX1 U1235 ( .AN(n362), .B(n1195), .Y(n1202) );
  CLKBUFX3 U1236 ( .A(n1202), .Y(n1204) );
  CLKBUFX3 U1237 ( .A(n1203), .Y(n1207) );
  AOI2BB2X1 U1238 ( .B0(n1204), .B1(n1217), .A0N(n1207), .A1N(sequence[21]), 
        .Y(\SORT0/n462 ) );
  AOI2BB2X1 U1239 ( .B0(n1204), .B1(n1196), .A0N(n1207), .A1N(sequence[20]), 
        .Y(\SORT0/n461 ) );
  AOI2BB2X1 U1240 ( .B0(n1204), .B1(n1197), .A0N(n1207), .A1N(sequence[18]), 
        .Y(\SORT0/n459 ) );
  AOI2BB2X1 U1241 ( .B0(n1204), .B1(n1263), .A0N(n1207), .A1N(sequence[17]), 
        .Y(\SORT0/n458 ) );
  AOI2BB2X1 U1242 ( .B0(n1204), .B1(n1212), .A0N(n1203), .A1N(sequence[16]), 
        .Y(\SORT0/n457 ) );
  AOI2BB2X1 U1243 ( .B0(n1204), .B1(n1198), .A0N(n1203), .A1N(sequence[14]), 
        .Y(\SORT0/n455 ) );
  AOI2BB2X1 U1244 ( .B0(n1204), .B1(n1264), .A0N(n1207), .A1N(sequence[13]), 
        .Y(\SORT0/n454 ) );
  AOI2BB2X1 U1245 ( .B0(n1202), .B1(n1225), .A0N(n1207), .A1N(sequence[12]), 
        .Y(\SORT0/n453 ) );
  AOI2BB2X1 U1246 ( .B0(n1204), .B1(n1199), .A0N(n1203), .A1N(sequence[10]), 
        .Y(\SORT0/n451 ) );
  AOI2BB2X1 U1247 ( .B0(n1204), .B1(n1200), .A0N(n1203), .A1N(sequence[9]), 
        .Y(\SORT0/n450 ) );
  AOI2BB2X1 U1248 ( .B0(n1204), .B1(n1265), .A0N(n1203), .A1N(sequence[8]), 
        .Y(\SORT0/n449 ) );
  AOI2BB2X1 U1249 ( .B0(n1204), .B1(n1201), .A0N(n1203), .A1N(sequence[6]), 
        .Y(\SORT0/n447 ) );
  AOI2BB2X1 U1250 ( .B0(n1204), .B1(n1266), .A0N(n1203), .A1N(sequence[5]), 
        .Y(\SORT0/n446 ) );
  AOI2BB2X1 U1251 ( .B0(n1204), .B1(n359), .A0N(n1203), .A1N(sequence[4]), .Y(
        \SORT0/n445 ) );
  AOI2BB2X1 U1252 ( .B0(n1204), .B1(n1215), .A0N(n1203), .A1N(sequence[30]), 
        .Y(\SORT0/n471 ) );
  AOI2BB2X1 U1253 ( .B0(n1202), .B1(n207), .A0N(n1207), .A1N(sequence[29]), 
        .Y(\SORT0/n470 ) );
  AOI2BB2X1 U1254 ( .B0(n1204), .B1(n198), .A0N(n1203), .A1N(sequence[28]), 
        .Y(\SORT0/n469 ) );
  AOI2BB2X1 U1255 ( .B0(n1207), .B1(n327), .A0N(n1203), .A1N(sequence[26]), 
        .Y(\SORT0/n467 ) );
  AOI2BB2X1 U1256 ( .B0(n1207), .B1(n337), .A0N(n1203), .A1N(sequence[25]), 
        .Y(\SORT0/n466 ) );
  AOI2BB2X1 U1257 ( .B0(n1204), .B1(n205), .A0N(n1207), .A1N(sequence[24]), 
        .Y(\SORT0/n465 ) );
  AOI2BB2X1 U1258 ( .B0(n1204), .B1(n323), .A0N(n1207), .A1N(sequence[22]), 
        .Y(\SORT0/n463 ) );
  AOI2BB2X1 U1259 ( .B0(n1207), .B1(n1205), .A0N(n1207), .A1N(sequence[2]), 
        .Y(\SORT0/n443 ) );
  AOI2BB2X1 U1260 ( .B0(n1207), .B1(n1206), .A0N(n1207), .A1N(sequence[1]), 
        .Y(\SORT0/n442 ) );
  AOI2BB2X1 U1261 ( .B0(n1207), .B1(n1268), .A0N(n1207), .A1N(sequence[0]), 
        .Y(\SORT0/n441 ) );
  AO22X1 U1262 ( .A0(n1246), .A1(sequence[4]), .B0(n1209), .B1(\seq[1][0] ), 
        .Y(n136) );
  AO22X1 U1263 ( .A0(n1246), .A1(sequence[0]), .B0(n1209), .B1(\seq[0][0] ), 
        .Y(n133) );
  AO22X1 U1264 ( .A0(n1246), .A1(sequence[14]), .B0(n1209), .B1(\seq[3][2] ), 
        .Y(n144) );
  AO22X1 U1265 ( .A0(n1246), .A1(sequence[16]), .B0(n1209), .B1(\seq[4][0] ), 
        .Y(n145) );
  AO22X1 U1266 ( .A0(n1246), .A1(sequence[17]), .B0(n1209), .B1(\seq[4][1] ), 
        .Y(n146) );
  AO22X1 U1267 ( .A0(n1246), .A1(sequence[21]), .B0(n1209), .B1(\seq[5][1] ), 
        .Y(n149) );
  AO22X1 U1268 ( .A0(n1246), .A1(sequence[24]), .B0(n1209), .B1(\seq[6][0] ), 
        .Y(n151) );
  AO22X1 U1269 ( .A0(n1246), .A1(sequence[9]), .B0(n1208), .B1(\seq[2][1] ), 
        .Y(n140) );
  AO22X1 U1270 ( .A0(n1246), .A1(sequence[12]), .B0(n1208), .B1(\seq[3][0] ), 
        .Y(n142) );
  AO22X1 U1271 ( .A0(n1246), .A1(sequence[13]), .B0(n1208), .B1(\seq[3][1] ), 
        .Y(n143) );
  AO22X1 U1272 ( .A0(n1246), .A1(sequence[29]), .B0(n1208), .B1(\seq[7][1] ), 
        .Y(n155) );
  AO22X1 U1273 ( .A0(n1246), .A1(sequence[30]), .B0(n1208), .B1(\seq[7][2] ), 
        .Y(n156) );
  AO22X1 U1274 ( .A0(n1246), .A1(sequence[18]), .B0(n1209), .B1(\seq[4][2] ), 
        .Y(n147) );
  AO22X1 U1275 ( .A0(n1246), .A1(sequence[20]), .B0(n1209), .B1(\seq[5][0] ), 
        .Y(n148) );
  AO22X1 U1276 ( .A0(n1246), .A1(sequence[22]), .B0(n1209), .B1(\seq[5][2] ), 
        .Y(n150) );
  AO22X1 U1277 ( .A0(n1246), .A1(sequence[25]), .B0(n1209), .B1(\seq[6][1] ), 
        .Y(n152) );
  AO22X1 U1278 ( .A0(n1246), .A1(sequence[26]), .B0(n1209), .B1(\seq[6][2] ), 
        .Y(n153) );
  AO22X1 U1279 ( .A0(n1246), .A1(sequence[28]), .B0(n1209), .B1(\seq[7][0] ), 
        .Y(n154) );
  AO22X1 U1280 ( .A0(n1246), .A1(sequence[1]), .B0(n1209), .B1(\seq[0][1] ), 
        .Y(n134) );
  AO22X1 U1281 ( .A0(n1246), .A1(sequence[2]), .B0(n1209), .B1(\seq[0][2] ), 
        .Y(n135) );
  AO22X1 U1282 ( .A0(n1246), .A1(sequence[5]), .B0(n1209), .B1(\seq[1][1] ), 
        .Y(n137) );
  AO22X1 U1283 ( .A0(n1246), .A1(sequence[6]), .B0(n1209), .B1(\seq[1][2] ), 
        .Y(n138) );
  AO22X1 U1284 ( .A0(n1246), .A1(sequence[8]), .B0(n1209), .B1(\seq[2][0] ), 
        .Y(n139) );
  AO22X1 U1285 ( .A0(n1246), .A1(sequence[10]), .B0(n1209), .B1(\seq[2][2] ), 
        .Y(n141) );
  OAI21XL U1286 ( .A0(\SORT0/n484 ), .A1(n1211), .B0(n1210), .Y(\SORT0/n488 )
         );
endmodule

