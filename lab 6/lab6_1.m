clc;
clear all;
close all;


%creating analog filter

FN=1000/2;
fc=300; %cut off freq
N=5; %filter order
[z,p,k]=buttap(N); %creating analog filter
w=linspace(0,FN/fc,1000);
h=freqs(k*poly(z),poly(p),w);
f=fc*w;
plot(f,20*log10(abs(h))),grid
ylabel('Magnitude(dB)')
xlabel('frequency(Hz)')