clc;
clear all;
close all;
M=15;
n=[0:(M-1)];
om=linspace(-pi,pi,201);
oc=pi/4;
hd=inline('oc/pi*sinc(oc/pi*(n-(M-1)/2))','n','oc','M');
Hd=inline('1*abs(om)<oc','om','oc');

hn_blackman=hd(n,oc,M).*blackman(M);