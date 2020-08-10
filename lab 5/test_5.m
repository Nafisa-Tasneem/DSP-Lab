
clc;
clear all;

format long
num=input('enter numerator coefficient vector=');
den=input('enter denominator coefficient vector=');
[z,p,k]=tf2zp(num,den)
sos=zp2sos(z,p,k)