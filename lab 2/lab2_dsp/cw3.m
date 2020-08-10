clc;
clear all;
close all;

N=100;

dw=pi/N;
w=0:dw:2*pi;
x=exp(-j*w); %%complex exponential

subplot(2,2,1)
stem(w,real(x));
title('Real part')
xlabel('Index(n)')

subplot(2,2,2)
stem(w,imag(x));
title('Imag. part')
xlabel('Index(n)')
