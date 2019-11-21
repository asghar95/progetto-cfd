//mesh per profilo isolato

h = 0.005; //dimensione caratteristica su profilo
H = 3 ; //dimensione caratteristica su farfield
R = 30;
r=0.5; //altezza mesh non triangolare
l=20;  //distanza dal bordo di uscita
pi = 3.14;
thetaLE = pi/8;
thetaTE = pi/12;
//===========================================POINTS
Point(1) = {1, -0.0002, 0.0, h};
Point(2) = {0.995, 0.0007, 0.0, h};
Point(3) = {0.985, 0.0026, 0.0, h};
Point(4) = {0.97, 0.0053, 0.0, h};
Point(5) = {0.94, 0.0102, 0.0, h};
Point(6) = {0.9, 0.0161, 0.0, h};
Point(7) = {0.85, 0.0222, 0.0, h};
Point(8) = {0.8, 0.0274, 0.0, h};
Point(9) = {0.75, 0.0317, 0.0, h};
Point(10) = {0.7, 0.0353, 0.0, h};
Point(11) = {0.65, 0.0384, 0.0, h};
Point(12) = {0.6, 0.0409, 0.0, h};
Point(13) = {0.55, 0.0429, 0.0, h};
Point(14) = {0.5, 0.044, 0.0, h};
Point(15) = {0.45, 0.0456, 0.0, h};
Point(16) = {0.4, 0.0462, 0.0, h};
Point(17) = {0.35, 0.0465, 0.0, h};
Point(18) = {0.3, 0.0463, 0.0, h};
Point(19) = {0.25, 0.0456, 0.0, h};
Point(20) = {0.2, 0.0441, 0.0, h};
Point(21) = {0.15, 0.0416, 0.0, h};
Point(22) = {0.11, 0.0386, 0.0, h};
Point(23) = {0.075, 0.0346, 0.0, h};
Point(24) = {0.05, 0.0304, 0.0, h};
Point(25) = {0.0325, 0.0263, 0.0, h};
Point(26) = {0.0125, 0.0187, 0.0, h};
Point(27) = {0.007, 0.015, 0.0, h};
Point(28) = {0.004, 0.01185, 0.0, h};
Point(29) = {0.0015, 0.0075, 0.0, h};
Point(30) = {0.00035, 0.0035, 0.0, h};
Point(31) = {0, 0, 0.0, h};
Point(32) = {0.00035, -0.0035, 0.0, h};
Point(33) = {0.0015, -0.0075, 0.0, h};
Point(34) = {0.004, -0.01185, 0.0, h};
Point(35) = {0.007, -0.015, 0.0, h};
Point(36) = {0.0125, -0.0187, 0.0, h};
Point(37) = {0.02, -0.0222, 0.0, h};
Point(38) = {0.0325, -0.0263, 0.0, h};
Point(39) = {0.05, -0.0304, 0.0, h};
Point(40) = {0.075, -0.0346, 0.0, h};
Point(41) = {0.11, -0.0386, 0.0, h};
Point(42) = {0.15, -0.0416, 0.0, h};
Point(43) = {0.2, -0.0441, 0.0, h};
Point(44) = {0.25, -0.0456, 0.0, h};
Point(45) = {0.3, -0.0463, 0.0, h};
Point(46) = {0.35, -0.0465, 0.0, h};
Point(47) = {0.4, -0.0462, 0.0, h};
Point(48) = {0.45, -0.0455, 0.0, h};
Point(49) = {0.5, -0.0443, 0.0, h};
Point(50) = {0.55, -0.0423, 0.0, h};
Point(51) = {0.6, -0.0389, 0.0, h};
Point(52) = {0.65, -0.0331, 0.0, h};
Point(53) = {0.7, -0.0243, 0.0, h};
Point(54) = {0.75, -0.0163, 0.0, h};
Point(55) = {0.8, -0.0099, 0.0, h};
Point(56) = {0.85, -0.0052, 0.0, h};
Point(57) = {0.9, -0.0028, 0.0, h};
Point(58) = {0.94, -0.0032, 0.0, h};
Point(59) = {0.97, -0.0058, 0.0, h};
Point(60) = {0.985, -0.00765, 0.0, h};
Point(61) = {0.995, -0.0091, 0.0, h};
Point(62) = {1, -0.01, 0.0, h};

//farfield

Point(70) ={0,0,0,H};
Point(71) ={R,0,0,H};
Point(72) ={0,R,0,H};
Point(73) ={-R,0,0,H};
Point(74) ={0,-R,0,H};

// linee ======================================================

Spline(1)={1:62}; //spline del profilo
Line(2)={62,1}; //b.u. non appuntito

yLE = 0.0263; //point 25
xLE = 0.0325; //point 25
DxLE = (r-yLE) * Tan(thetaLE);
yTE = -0.0002; //TE point 1
xTE = 1; //TE point 1
DxTE = (r-yTE) * Tan(thetaTE);

// strato limite
Point(200) = {0, 0, 0, H};
Point(201) = {xLE-DxLE, r, 0, H};
Point(202) = {-r, 0, 0, H};
Point(203) = {xLE-DxLE, -r, 0, H};

Point(204) = {xTE+DxTE, r, 0, H};
Point(205) = {xTE+DxTE, -r, 0, H};

Point(206) = {1+l, r, 0, H};
Point(207) = {1+l, -r, 0, H};

Point(208) = {1+l, -0.0002, 0, H};
Point(209) = {1+l, -0.01, 0, H};

// DORSO ZONA 1
//spline 1:25
Spline(10) = {1:25};
Line(11) = {25, 201};
Line(12) = {201, 204};
Line(13) = {204, 1};

// orizzontali
Transfinite Line{10} = 50;
Transfinite Line{12} = 50;

//verticali
Transfinite Line{11} = 50 Using Progression 1.1;
Transfinite Line{13} = 50 Using Progression 0.8;

Line Loop(100) = {10, 11, 12, 13};

Plane Surface(100) = {100};
Transfinite Surface{100};
Recombine Surface{100};

// ZONA 2 VENTRE
// spline 38 - 62
Spline(20) = {38:62};
Line(21) = {62, 205};
Line(22) = {205,203};
Line(23) = {203, 38};

// orizzontali
Transfinite Line{20} = 50;
Transfinite Line{22} = 50;

//verticali
Transfinite Line{21} = 50 Using Progression 1.1;
Transfinite Line{23} = 50 Using Progression 0.8;

Line Loop(200) = {20, 21, 22, 23};
Plane Surface(200) = {200};

Transfinite Surface{200};

// ZONA 3 TOP 204,206,208,1
Line(30) = {1, 204};
Line(31) = {204, 206};
Line(32) = {206, 208};
Line(33) = {208, 1};

// orizzontali
Transfinite Line{31} = 50;
Transfinite Line{33} = 50;

//verticali
Transfinite Line{30} = 50 Using Progression 1.1;
Transfinite Line{32} = 50 Using Progression 0.8;

Line Loop(300) = {30,31,32,33};
Plane Surface(300) = {300};

Transfinite Surface{300};

// ZONA 4 TE 1,62,208,209
Line(40) = {1, 62};
Line(41) = {62, 209};
Line(42) = {209, 208};
Line(43) = {208, 1};

// orizzontali
Transfinite Line{41} = 50;
Transfinite Line{43} = 50;

//verticali
Transfinite Line{40} = 10;
Transfinite Line{42} = 10;

Line Loop(400) = {-43,-42,-41,-40};
Plane Surface(400) = {400};

// ZONA 5 BOTTOM 62,209,207, 205
Line(50) = {62, 209};
Line(51) = {209, 207};
Line(52) = {207, 205};
Line(53) = {205, 62};

// orizzontali
Transfinite Line{50} = 50;
Transfinite Line{52} = 50;

//verticali
Transfinite Line{51} = 50 Using Progression 1.1;
Transfinite Line{53} = 50 Using Progression 0.8;

Line Loop(500) = {50,51,52,53};
Plane Surface(500) = {500};

Transfinite Surface{500};

// ZONA 6 FRONT 201,203,25,38
Spline(60) = {25:38};
Circle(61) = {201,200,203};
//Circle(61) = {202,200,203};
Line(62) = {203,38};
Line(63) = {25, 201};

Transfinite Line{60} = 50;
Transfinite Line{61} = 50;

Transfinite Line{62} = 50 Using Progression 0.8;
Transfinite Line{63} = 50 Using Progression 1.1;


Line Loop(600) = {60, -62, -61, -63};
Plane Surface(600) = {600};
Transfinite Surface{600};

Recombine Surface{300, 100, 600, 200, 400, 500};
Physical Surface(2) = {100, 300, 600, 200, 400, 500};

//cerhio FARFIELD

Circle(3) = {71,70,72};
Circle(4) = {72,70,73};
Circle(5) = {73,70,74};
Circle(6) = {74,70,71};

//line loops=========================================================

Line Loop(1)={1,2};
Line Loop(2) ={-6,-5,-4,-3};
Line Loop(700)={52,22,-61,12,31,32,-42,51};
//surfaces===========================================================
Plane Surface(1000)= {700,2};


Physical Surface(1)={1000};
Physical Line("FARFIELD") = {3,4,5,6};
Physical Line("AIRFOIL") = {1,2};
