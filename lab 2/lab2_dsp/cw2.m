clc;
clear all;
close all;

N=1024;
a=3;
b=2;
c=1;

dw=2*pi/N;
w=-pi:dw:pi-dw;
s=exp(j*w);
G=(s-a)./((s-b).*(s-c));

figure;
plot(w,abs(G));
figure;
plot(w,20*log10(abs(G)));
