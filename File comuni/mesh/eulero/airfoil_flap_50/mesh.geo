//mesh per profilo con flap a 50 gradi (per la simulazione della
//tabella A5)


h=0.005; //dimensione caratteristica su profilo
h_bu=h/2; //dimensione caratteristica vicino a bordo uscita e zona tagliata
H = 3 ; //dimensione caratteristica su farfield
h_ba_flap=h/50; //dimensione caratteristica su bordo attacco flap
h_bu_flap=h/2; //dimensione caratteristica su bordo uscita flap
h_flap=h; //dimensione caratteristica su flap
R = 30; //raggio farfield (cerchio)

//POINTS===================================================
Point(1) = {0.825, 0.0249, 0.0, h_bu};
Point(2) = {0.821, 0.0253, 0.0, h_bu};
Point(3) = {0.813, 0.02605, 0.0, h_bu};
Point(4) = {0.8025, 0.02705, 0.0, h};
Point(5) = {0.79, 0.02813, 0.0, h};
Point(6) = {0.775, 0.0296, 0.0, h};
Point(7) = {0.755, 0.03125, 0.0, h};
Point(8) = {0.73, 0.03325, 0.0, h};
Point(9) = {0.675, 0.0369, 0.0, h};
Point(10) = {0.65, 0.0384, 0.0, h};
Point(11) = {0.6, 0.0409, 0.0, h};
Point(12) = {0.55, 0.0429, 0.0, h};
Point(13) = {0.5, 0.044, 0.0, h};
Point(14) = {0.45, 0.0456, 0.0, h};
Point(15) = {0.4, 0.0462, 0.0, h};
Point(16) = {0.35, 0.0465, 0.0, h};
Point(17) = {0.3, 0.0463, 0.0, h};
Point(18) = {0.25, 0.0456, 0.0, h};
Point(19) = {0.2, 0.0441, 0.0, h};
Point(20) = {0.15, 0.0416, 0.0, h};
Point(21) = {0.11, 0.0386, 0.0, h};
Point(22) = {0.075, 0.0346, 0.0, h};
Point(23) = {0.05, 0.0304, 0.0, h};
Point(24) = {0.0325, 0.0263, 0.0, h};
Point(25) = {0.0125, 0.0187, 0.0, h};
Point(26) = {0.007, 0.015, 0.0, h};
Point(27) = {0.004, 0.01185, 0.0, h};
Point(28) = {0.0015, 0.0075, 0.0, h};
Point(29) = {0.00035, 0.0035, 0.0, h};
Point(30) = {0, 0, 0.0, h};
Point(31) = {0.00035, -0.0035, 0.0, h};
Point(32) = {0.0015, -0.0075, 0.0, h};
Point(33) = {0.004, -0.01185, 0.0, h};
Point(34) = {0.007, -0.015, 0.0, h};
Point(35) = {0.0125, -0.0187, 0.0, h};
Point(36) = {0.02, -0.0222, 0.0, h};
Point(37) = {0.0325, -0.0263, 0.0, h};
Point(38) = {0.05, -0.0304, 0.0, h};
Point(39) = {0.075, -0.0346, 0.0, h};
Point(40) = {0.11, -0.0386, 0.0, h};
Point(41) = {0.15, -0.0416, 0.0, h};
Point(42) = {0.2, -0.0441, 0.0, h};
Point(43) = {0.25, -0.0456, 0.0, h};
Point(44) = {0.3, -0.0463, 0.0, h};
Point(45) = {0.35, -0.0465, 0.0, h};
Point(46) = {0.4, -0.0462, 0.0, h};
Point(47) = {0.45, -0.0455, 0.0, h};
Point(48) = {0.5, -0.0443, 0.0, h};
Point(49) = {0.55, -0.0423, 0.0, h};
Point(50) = {0.6, -0.0389, 0.0, h_bu};
Point(51) = {0.65, -0.0331, 0.0, h_bu};
Point(52) = {0.675, -0.0287, 0.0, h_bu};
Point(53) = {0.675, -0.026, 0.0, h_bu};
Point(54) = {0.675, -0.02, 0.0, h_bu};
Point(55) = {0.6785, -0.01, 0.0, h_bu};
Point(56) = {0.69, 0.0023, 0.0, h_bu};
Point(57) = {0.707, 0.012, 0.0, h_bu};
Point(58) = {0.73, 0.0195, 0.0, h_bu};
Point(59) = {0.755, 0.0235, 0.0, h_bu};
Point(60) = {0.775, 0.0249, 0.0, h_bu};
Point(61) = {0.79, 0.0252, 0.0, h_bu};
Point(62) = {0.8025, 0.0252, 0.0, h_bu};
Point(63) = {0.813, 0.025, 0.0, h_bu};
Point(64) = {0.821, 0.0245, 0.0, h_bu};
Point(65) = {0.825, 0.0241, 0.0, h_bu};
Point(66) = {1.00968, -0.209064, 0.0, h_flap};
Point(67) = {1.00746, -0.204476, 0.0, h_flap};
Point(68) = {1.00292, -0.195362, 0.0, h_flap};
Point(69) = {0.998277, -0.184572, 0.0, h_flap};
Point(70) = {0.986585, -0.163823, 0.0, h_flap};
Point(71) = {0.972034, -0.13721, 0.0, h_flap};
Point(72) = {0.954734, -0.106403, 0.0, h_flap};
Point(73) = {0.942006, -0.0846693, 0.0, h_flap};
Point(74) = {0.931426, -0.0675955, 0.0, h_flap};
Point(75) = {0.919851, -0.0512652, 0.0, h_flap};
Point(76) = {0.906769, -0.0360949, 0.0, h_flap};
Point(77) = {0.892621, -0.021754, 0.0, h_flap};
Point(78) = {0.877279, -0.00832372, 0.0, h_flap};
Point(79) = {0.860123, 0.00376755, 0.0, h_ba_flap};
Point(80) = {0.845294, 0.0114673, 0.0, h_ba_flap};
Point(81) = {0.833847, 0.0155423, 0.0, h_ba_flap};
Point(82) = {0.828085, 0.0166995, 0.0, h_ba_flap};
Point(83) = {0.823375, 0.0168986, 0.0, h_ba_flap};
Point(84) = {0.819961, 0.0164094, 0.0, h_ba_flap};
Point(85) = {0.817549, 0.0154563, 0.0, h_ba_flap};
Point(86) = {0.815793, 0.0141264, 0.0, h_ba_flap};
Point(87) = {0.814771, 0.0124982, 0.0, h_ba_flap};
Point(88) = {0.814691, 0.0107732, 0.0, h_ba_flap};
Point(89) = {0.815709, 0.00878187, 0.0, h_ba_flap};
Point(90) = {0.818531, 0.00615003, 0.0, h_ba_flap};
Point(91) = {0.824471, 0.000626161, 0.0, h_ba_flap};
Point(92) = {0.834685, -0.0091968, 0.0, h_ba_flap};
Point(93) = {0.852917, -0.0267555, 0.0, h_flap};
Point(94) = {0.881041, -0.0556209, 0.0, h_flap};
Point(95) = {0.908329, -0.0851229, 0.0, h_flap};
Point(96) = {0.934505, -0.115479, 0.0, h_flap};
Point(97) = {0.959246, -0.146909, 0.0, h_flap};
Point(98) = {0.976586, -0.171417, 0.0, h_flap};
Point(99) = {0.987326, -0.188369, 0.0, h_bu_flap};
Point(100) = {0.994882, -0.201466, 0.0, h_bu_flap};
Point(101) = {0.999575, -0.210466, 0.0, h_bu_flap};
Point(102) = {1.00188, -0.21499, 0.0, h_bu_flap};


//farfield

Point(300) ={0,0,0,H};
Point(301) ={R,0,0,H};
Point(302) ={0,R,0,H};
Point(303) ={-R,0,0,H};
Point(304) ={0,-R,0,H};

// linee ======================================================

Spline(1)={1:52}; //spline del profilo (parte curva 1)
Spline(2)={52:65}; //spline del profilo (parte curva 2)
Line(3)={65,1}; //b.u. non appuntito

//cerhio FARFIELD

Circle(4) = {301,300,302};
Circle(5) = {302,300,303};
Circle(6) = {303,300,304};
Circle(7) = {304,300,301};

//flap

Spline(8)={66:102};
Line(9)={102,66};

//line loops=========================================================

Line Loop(1)={1,2,3}; // profilo
Line Loop(2) ={-7,-6,-5,-4}; //cerchio esterno
Line Loop(3)={8,9}; //flap

//surfaces===========================================================
Plane Surface(1000)= {2,1,3};

Physical Surface(1)={1000};
Physical Line("FARFIELD") = {3,4,5,6};
Physical Line("AIRFOIL") = {1,2};
Physical Line("FLAP") = {8,9};
