%a=0; b=0;
%8x15 = 120 eigenvalues
%there are 7 infinite eigenvalues, which can be removed.
%Mat0 has one zero-eigenvalue

function [ftemp ttemp] = PnP_f_Solver_V6(a,b)
  %vec1 = [f^7*t1^8, f^6*t1^8, f^5*t1^8, f^4*t1^8, f^3*t1^8, f^2*t1^8, f*t1^8, t1^8, f^7*t1^7, f^6*t1^7, f^5*t1^7, f^4*t1^7, f^3*t1^7, f^2*t1^7, f*t1^7, t1^7, f^7*t1^6, f^6*t1^6, f^5*t1^6, f^4*t1^6, f^3*t1^6, f^2*t1^6, f*t1^6, t1^6, f^7*t1^5, f^6*t1^5, f^5*t1^5, f^4*t1^5, f^3*t1^5, f^2*t1^5, f*t1^5, t1^5, f^7*t1^4, f^6*t1^4, f^5*t1^4, f^4*t1^4, f^3*t1^4, f^2*t1^4, f*t1^4, t1^4, f^7*t1^3, f^6*t1^3, f^5*t1^3, f^4*t1^3, f^3*t1^3, f^2*t1^3, f*t1^3, t1^3, f^7*t1^2, f^6*t1^2, f^5*t1^2, f^4*t1^2, f^3*t1^2, f^2*t1^2, f*t1^2, t1^2, f^7*t1, f^6*t1, f^5*t1, f^4*t1, f^3*t1, f^2*t1, f*t1, t1, f^7, f^6, f^5, f^4, f^3, f^2, f, 1].';
  %vec2 = [f^8*t1^7, f^7*t1^7, f^6*t1^7, f^5*t1^7, f^4*t1^7, f^3*t1^7, f^2*t1^7, f*t1^7, t1^7, f^8*t1^6, f^7*t1^6, f^6*t1^6, f^5*t1^6, f^4*t1^6, f^3*t1^6, f^2*t1^6, f*t1^6, t1^6, f^8*t1^5, f^7*t1^5, f^6*t1^5, f^5*t1^5, f^4*t1^5, f^3*t1^5, f^2*t1^5, f*t1^5, t1^5, f^8*t1^4, f^7*t1^4, f^6*t1^4, f^5*t1^4, f^4*t1^4, f^3*t1^4, f^2*t1^4, f*t1^4, t1^4, f^8*t1^3, f^7*t1^3, f^6*t1^3, f^5*t1^3, f^4*t1^3, f^3*t1^3, f^2*t1^3, f*t1^3, t1^3, f^8*t1^2, f^7*t1^2, f^6*t1^2, f^5*t1^2, f^4*t1^2, f^3*t1^2, f^2*t1^2, f*t1^2, t1^2, f^8*t1, f^7*t1, f^6*t1, f^5*t1, f^4*t1, f^3*t1, f^2*t1, f*t1, t1, f^8, f^7, f^6, f^5, f^4, f^3, f^2, f, 1].';
    a1 =  a(1);  a2 =  a(2);  a3 =  a(3);  a4 =  a(4);  a5 =  a(5);  a6 =  a(6);  a7 =  a(7);  a8 =  a(8);  a9 =  a(9);  a10 = a(10);
    a11 = a(11); a12 = a(12); a13 = a(13); a14 = a(14); a15 = a(15); a16 = a(16); a17 = a(17); a18 = a(18); a19 = a(19); a20 = a(20);
    a21 = a(21); a22 = a(22); a23 = a(23); a24 = a(24); a25 = a(25); a26 = a(26); a27 = a(27); a28 = a(28); a29 = a(29); a30 = a(30);
    a31 = a(31); a32 = a(32); a33 = a(33); a34 = a(34); a35 = a(35); a36 = a(36); a37 = a(37); a38 = a(38); a39 = a(39); a40 = a(40);
    a41 = a(41); a42 = a(42); a43 = a(43); a44 = a(44); a45 = a(45); a46 = a(46); a47 = a(47); a48 = a(48); a49 = a(49); a50 = a(50);
    a51 = a(51); a52 = a(52); a53 = a(53); a54 = a(54); a55 = a(55); a56 = a(56); a57 = a(57); a58 = a(58); a59 = a(59); a60 = a(60);
    a61 = a(61); a62 = a(62); a63 = a(63); a64 = a(64); a65 = a(65); a66 = a(66); a67 = a(67); a68 = a(68); a69 = a(69); a70 = a(70);
    a71 = a(71); a72 = a(72); 
    
    b1 =  b(1);  b2 =  b(2);  b3 =  b(3);  b4 =  b(4);  b5 =  b(5);  b6 =  b(6);  b7 =  b(7);  b8 =  b(8);  b9 =  b(9);  b10 = b(10);
    b11 = b(11); b12 = b(12); b13 = b(13); b14 = b(14); b15 = b(15); b16 = b(16); b17 = b(17); b18 = b(18); b19 = b(19); b20 = b(20);
    b21 = b(21); b22 = b(22); b23 = b(23); b24 = b(24); b25 = b(25); b26 = b(26); b27 = b(27); b28 = b(28); b29 = b(29); b30 = b(30);
    b31 = b(31); b32 = b(32); b33 = b(33); b34 = b(34); b35 = b(35); b36 = b(36); b37 = b(37); b38 = b(38); b39 = b(39); b40 = b(40);
    b41 = b(41); b42 = b(42); b43 = b(43); b44 = b(44); b45 = b(45); b46 = b(46); b47 = b(47); b48 = b(48); b49 = b(49); b50 = b(50);
    b51 = b(51); b52 = b(52); b53 = b(53); b54 = b(54); b55 = b(55); b56 = b(56); b57 = b(57); b58 = b(58); b59 = b(59); b60 = b(60);
    b61 = b(61); b62 = b(62); b63 = b(63); b64 = b(64); b65 = b(65); b66 = b(66); b67 = b(67); b68 = b(68); b69 = b(69); b70 = b(70);
    b71 = b(71); b72 = b(72); 
    
  Mat8 = [[ a1, a2, a3, a4, a5, a6, a7, a8,  0,  0,  0,  0,  0,  0,  0]
[  0, a1, a2, a3, a4, a5, a6, a7, a8,  0,  0,  0,  0,  0,  0]
[  0,  0, a1, a2, a3, a4, a5, a6, a7, a8,  0,  0,  0,  0,  0]
[  0,  0,  0, a1, a2, a3, a4, a5, a6, a7, a8,  0,  0,  0,  0]
[  0,  0,  0,  0, a1, a2, a3, a4, a5, a6, a7, a8,  0,  0,  0]
[  0,  0,  0,  0,  0, a1, a2, a3, a4, a5, a6, a7, a8,  0,  0]
[  0,  0,  0,  0,  0,  0, a1, a2, a3, a4, a5, a6, a7, a8,  0]
[  0,  0,  0,  0,  0,  0,  0, a1, a2, a3, a4, a5, a6, a7, a8]
[  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0]
[  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0]
[  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0]
[  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0]
[  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0]
[  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0]
[  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0]];
 
 
Mat7 = [[ a9, a10, a11, a12, a13, a14, a15, a16,   0,   0,   0,   0,   0,   0,   0]
[  0,  a9, a10, a11, a12, a13, a14, a15, a16,   0,   0,   0,   0,   0,   0]
[  0,   0,  a9, a10, a11, a12, a13, a14, a15, a16,   0,   0,   0,   0,   0]
[  0,   0,   0,  a9, a10, a11, a12, a13, a14, a15, a16,   0,   0,   0,   0]
[  0,   0,   0,   0,  a9, a10, a11, a12, a13, a14, a15, a16,   0,   0,   0]
[  0,   0,   0,   0,   0,  a9, a10, a11, a12, a13, a14, a15, a16,   0,   0]
[  0,   0,   0,   0,   0,   0,  a9, a10, a11, a12, a13, a14, a15, a16,   0]
[  0,   0,   0,   0,   0,   0,   0,  a9, a10, a11, a12, a13, a14, a15, a16]
[ b1,  b2,  b3,  b4,  b5,  b6,  b7,  b8,  b9,   0,   0,   0,   0,   0,   0]
[  0,  b1,  b2,  b3,  b4,  b5,  b6,  b7,  b8,  b9,   0,   0,   0,   0,   0]
[  0,   0,  b1,  b2,  b3,  b4,  b5,  b6,  b7,  b8,  b9,   0,   0,   0,   0]
[  0,   0,   0,  b1,  b2,  b3,  b4,  b5,  b6,  b7,  b8,  b9,   0,   0,   0]
[  0,   0,   0,   0,  b1,  b2,  b3,  b4,  b5,  b6,  b7,  b8,  b9,   0,   0]
[  0,   0,   0,   0,   0,  b1,  b2,  b3,  b4,  b5,  b6,  b7,  b8,  b9,   0]
[  0,   0,   0,   0,   0,   0,  b1,  b2,  b3,  b4,  b5,  b6,  b7,  b8,  b9]];
 

Mat6 = [[ a17, a18, a19, a20, a21, a22, a23, a24,   0,   0,   0,   0,   0,   0,   0]
[   0, a17, a18, a19, a20, a21, a22, a23, a24,   0,   0,   0,   0,   0,   0]
[   0,   0, a17, a18, a19, a20, a21, a22, a23, a24,   0,   0,   0,   0,   0]
[   0,   0,   0, a17, a18, a19, a20, a21, a22, a23, a24,   0,   0,   0,   0]
[   0,   0,   0,   0, a17, a18, a19, a20, a21, a22, a23, a24,   0,   0,   0]
[   0,   0,   0,   0,   0, a17, a18, a19, a20, a21, a22, a23, a24,   0,   0]
[   0,   0,   0,   0,   0,   0, a17, a18, a19, a20, a21, a22, a23, a24,   0]
[   0,   0,   0,   0,   0,   0,   0, a17, a18, a19, a20, a21, a22, a23, a24]
[ b10, b11, b12, b13, b14, b15, b16, b17, b18,   0,   0,   0,   0,   0,   0]
[   0, b10, b11, b12, b13, b14, b15, b16, b17, b18,   0,   0,   0,   0,   0]
[   0,   0, b10, b11, b12, b13, b14, b15, b16, b17, b18,   0,   0,   0,   0]
[   0,   0,   0, b10, b11, b12, b13, b14, b15, b16, b17, b18,   0,   0,   0]
[   0,   0,   0,   0, b10, b11, b12, b13, b14, b15, b16, b17, b18,   0,   0]
[   0,   0,   0,   0,   0, b10, b11, b12, b13, b14, b15, b16, b17, b18,   0]
[   0,   0,   0,   0,   0,   0, b10, b11, b12, b13, b14, b15, b16, b17, b18]];
 
 
Mat5 = [[ a25, a26, a27, a28, a29, a30, a31, a32,   0,   0,   0,   0,   0,   0,   0]
[   0, a25, a26, a27, a28, a29, a30, a31, a32,   0,   0,   0,   0,   0,   0]
[   0,   0, a25, a26, a27, a28, a29, a30, a31, a32,   0,   0,   0,   0,   0]
[   0,   0,   0, a25, a26, a27, a28, a29, a30, a31, a32,   0,   0,   0,   0]
[   0,   0,   0,   0, a25, a26, a27, a28, a29, a30, a31, a32,   0,   0,   0]
[   0,   0,   0,   0,   0, a25, a26, a27, a28, a29, a30, a31, a32,   0,   0]
[   0,   0,   0,   0,   0,   0, a25, a26, a27, a28, a29, a30, a31, a32,   0]
[   0,   0,   0,   0,   0,   0,   0, a25, a26, a27, a28, a29, a30, a31, a32]
[ b19, b20, b21, b22, b23, b24, b25, b26, b27,   0,   0,   0,   0,   0,   0]
[   0, b19, b20, b21, b22, b23, b24, b25, b26, b27,   0,   0,   0,   0,   0]
[   0,   0, b19, b20, b21, b22, b23, b24, b25, b26, b27,   0,   0,   0,   0]
[   0,   0,   0, b19, b20, b21, b22, b23, b24, b25, b26, b27,   0,   0,   0]
[   0,   0,   0,   0, b19, b20, b21, b22, b23, b24, b25, b26, b27,   0,   0]
[   0,   0,   0,   0,   0, b19, b20, b21, b22, b23, b24, b25, b26, b27,   0]
[   0,   0,   0,   0,   0,   0, b19, b20, b21, b22, b23, b24, b25, b26, b27]];
 
 
Mat4 = [[ a33, a34, a35, a36, a37, a38, a39, a40,   0,   0,   0,   0,   0,   0,   0]
[   0, a33, a34, a35, a36, a37, a38, a39, a40,   0,   0,   0,   0,   0,   0]
[   0,   0, a33, a34, a35, a36, a37, a38, a39, a40,   0,   0,   0,   0,   0]
[   0,   0,   0, a33, a34, a35, a36, a37, a38, a39, a40,   0,   0,   0,   0]
[   0,   0,   0,   0, a33, a34, a35, a36, a37, a38, a39, a40,   0,   0,   0]
[   0,   0,   0,   0,   0, a33, a34, a35, a36, a37, a38, a39, a40,   0,   0]
[   0,   0,   0,   0,   0,   0, a33, a34, a35, a36, a37, a38, a39, a40,   0]
[   0,   0,   0,   0,   0,   0,   0, a33, a34, a35, a36, a37, a38, a39, a40]
[ b28, b29, b30, b31, b32, b33, b34, b35, b36,   0,   0,   0,   0,   0,   0]
[   0, b28, b29, b30, b31, b32, b33, b34, b35, b36,   0,   0,   0,   0,   0]
[   0,   0, b28, b29, b30, b31, b32, b33, b34, b35, b36,   0,   0,   0,   0]
[   0,   0,   0, b28, b29, b30, b31, b32, b33, b34, b35, b36,   0,   0,   0]
[   0,   0,   0,   0, b28, b29, b30, b31, b32, b33, b34, b35, b36,   0,   0]
[   0,   0,   0,   0,   0, b28, b29, b30, b31, b32, b33, b34, b35, b36,   0]
[   0,   0,   0,   0,   0,   0, b28, b29, b30, b31, b32, b33, b34, b35, b36]];
 
 
Mat3 = [[ a41, a42, a43, a44, a45, a46, a47, a48,   0,   0,   0,   0,   0,   0,   0]
[   0, a41, a42, a43, a44, a45, a46, a47, a48,   0,   0,   0,   0,   0,   0]
[   0,   0, a41, a42, a43, a44, a45, a46, a47, a48,   0,   0,   0,   0,   0]
[   0,   0,   0, a41, a42, a43, a44, a45, a46, a47, a48,   0,   0,   0,   0]
[   0,   0,   0,   0, a41, a42, a43, a44, a45, a46, a47, a48,   0,   0,   0]
[   0,   0,   0,   0,   0, a41, a42, a43, a44, a45, a46, a47, a48,   0,   0]
[   0,   0,   0,   0,   0,   0, a41, a42, a43, a44, a45, a46, a47, a48,   0]
[   0,   0,   0,   0,   0,   0,   0, a41, a42, a43, a44, a45, a46, a47, a48]
[ b37, b38, b39, b40, b41, b42, b43, b44, b45,   0,   0,   0,   0,   0,   0]
[   0, b37, b38, b39, b40, b41, b42, b43, b44, b45,   0,   0,   0,   0,   0]
[   0,   0, b37, b38, b39, b40, b41, b42, b43, b44, b45,   0,   0,   0,   0]
[   0,   0,   0, b37, b38, b39, b40, b41, b42, b43, b44, b45,   0,   0,   0]
[   0,   0,   0,   0, b37, b38, b39, b40, b41, b42, b43, b44, b45,   0,   0]
[   0,   0,   0,   0,   0, b37, b38, b39, b40, b41, b42, b43, b44, b45,   0]
[   0,   0,   0,   0,   0,   0, b37, b38, b39, b40, b41, b42, b43, b44, b45]];
 
Mat2 = [[ a49, a50, a51, a52, a53, a54, a55, a56,   0,   0,   0,   0,   0,   0,   0]
[   0, a49, a50, a51, a52, a53, a54, a55, a56,   0,   0,   0,   0,   0,   0]
[   0,   0, a49, a50, a51, a52, a53, a54, a55, a56,   0,   0,   0,   0,   0]
[   0,   0,   0, a49, a50, a51, a52, a53, a54, a55, a56,   0,   0,   0,   0]
[   0,   0,   0,   0, a49, a50, a51, a52, a53, a54, a55, a56,   0,   0,   0]
[   0,   0,   0,   0,   0, a49, a50, a51, a52, a53, a54, a55, a56,   0,   0]
[   0,   0,   0,   0,   0,   0, a49, a50, a51, a52, a53, a54, a55, a56,   0]
[   0,   0,   0,   0,   0,   0,   0, a49, a50, a51, a52, a53, a54, a55, a56]
[ b46, b47, b48, b49, b50, b51, b52, b53, b54,   0,   0,   0,   0,   0,   0]
[   0, b46, b47, b48, b49, b50, b51, b52, b53, b54,   0,   0,   0,   0,   0]
[   0,   0, b46, b47, b48, b49, b50, b51, b52, b53, b54,   0,   0,   0,   0]
[   0,   0,   0, b46, b47, b48, b49, b50, b51, b52, b53, b54,   0,   0,   0]
[   0,   0,   0,   0, b46, b47, b48, b49, b50, b51, b52, b53, b54,   0,   0]
[   0,   0,   0,   0,   0, b46, b47, b48, b49, b50, b51, b52, b53, b54,   0]
[   0,   0,   0,   0,   0,   0, b46, b47, b48, b49, b50, b51, b52, b53, b54]];
 
 
Mat1 = [[ a57, a58, a59, a60, a61, a62, a63, a64,   0,   0,   0,   0,   0,   0,   0]
[   0, a57, a58, a59, a60, a61, a62, a63, a64,   0,   0,   0,   0,   0,   0]
[   0,   0, a57, a58, a59, a60, a61, a62, a63, a64,   0,   0,   0,   0,   0]
[   0,   0,   0, a57, a58, a59, a60, a61, a62, a63, a64,   0,   0,   0,   0]
[   0,   0,   0,   0, a57, a58, a59, a60, a61, a62, a63, a64,   0,   0,   0]
[   0,   0,   0,   0,   0, a57, a58, a59, a60, a61, a62, a63, a64,   0,   0]
[   0,   0,   0,   0,   0,   0, a57, a58, a59, a60, a61, a62, a63, a64,   0]
[   0,   0,   0,   0,   0,   0,   0, a57, a58, a59, a60, a61, a62, a63, a64]
[ b55, b56, b57, b58, b59, b60, b61, b62, b63,   0,   0,   0,   0,   0,   0]
[   0, b55, b56, b57, b58, b59, b60, b61, b62, b63,   0,   0,   0,   0,   0]
[   0,   0, b55, b56, b57, b58, b59, b60, b61, b62, b63,   0,   0,   0,   0]
[   0,   0,   0, b55, b56, b57, b58, b59, b60, b61, b62, b63,   0,   0,   0]
[   0,   0,   0,   0, b55, b56, b57, b58, b59, b60, b61, b62, b63,   0,   0]
[   0,   0,   0,   0,   0, b55, b56, b57, b58, b59, b60, b61, b62, b63,   0]
[   0,   0,   0,   0,   0,   0, b55, b56, b57, b58, b59, b60, b61, b62, b63]];
 
 
Mat0 = [[ a65, a66, a67, a68, a69, a70, a71, a72,   0,   0,   0,   0,   0,   0,   0]
[   0, a65, a66, a67, a68, a69, a70, a71, a72,   0,   0,   0,   0,   0,   0]
[   0,   0, a65, a66, a67, a68, a69, a70, a71, a72,   0,   0,   0,   0,   0]
[   0,   0,   0, a65, a66, a67, a68, a69, a70, a71, a72,   0,   0,   0,   0]
[   0,   0,   0,   0, a65, a66, a67, a68, a69, a70, a71, a72,   0,   0,   0]
[   0,   0,   0,   0,   0, a65, a66, a67, a68, a69, a70, a71, a72,   0,   0]
[   0,   0,   0,   0,   0,   0, a65, a66, a67, a68, a69, a70, a71, a72,   0]
[   0,   0,   0,   0,   0,   0,   0, a65, a66, a67, a68, a69, a70, a71, a72]
[ b64, b65, b66, b67, b68, b69, b70, b71, b72,   0,   0,   0,   0,   0,   0]
[   0, b64, b65, b66, b67, b68, b69, b70, b71, b72,   0,   0,   0,   0,   0]
[   0,   0, b64, b65, b66, b67, b68, b69, b70, b71, b72,   0,   0,   0,   0]
[   0,   0,   0, b64, b65, b66, b67, b68, b69, b70, b71, b72,   0,   0,   0]
[   0,   0,   0,   0, b64, b65, b66, b67, b68, b69, b70, b71, b72,   0,   0]
[   0,   0,   0,   0,   0, b64, b65, b66, b67, b68, b69, b70, b71, b72,   0]
[   0,   0,   0,   0,   0,   0, b64, b65, b66, b67, b68, b69, b70, b71, b72]];
 
%polynomial eigenvalue factorization
[X E] = polyeig(Mat0,Mat1,Mat2,Mat3,Mat4,Mat5,Mat6,Mat7,Mat8);

I = find(abs(imag(E))<1e-6);
ttemp = real(E(I));
X = real(X(:,I));
X = X(1:end-1,:)./X(2:end,:);
ftemp = median(X,1).';

end
