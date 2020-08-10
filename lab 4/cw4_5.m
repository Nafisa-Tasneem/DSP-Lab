%parallel realization of an iir transfer fn
clc;
clear all;

num=input('Numerator coefficient vector=');
den=input('Denominator coefficient vector=');
[r1,p1,k1]=residuez(num,den);
[r2,p2,k2]=residue(num,den);
disp('Parallel form I')
disp('Residues are');disp(r1);



disp('Constant value');disp(k1);

disp('Parallel form II')
disp('Residues are');disp(r2);
disp('poles are at');disp(p2);
disp('Constant value');disp(k2);
%[R,p,C]= rf2pfez(num,den)
