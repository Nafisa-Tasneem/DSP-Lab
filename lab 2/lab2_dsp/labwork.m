clc;
clear all;

fs=input('Enter sampling frequency : '); %%40
f=input('Enter signal frequency : '); %%2
a=input('Enter amplitude : '); %%2

%%generation of sine signal

t=0:(1/fs):1;
y=a*sin(2*pi*f*t);
subplot(2,1,1);
stem(t,y);
xlabel('Time---------');
ylabel('Amplitude-----------');
title('Sine Wave');

%%generation of cosine signal

t=0:(1/fs):1;
y=a*cos(2*pi*f*t);
subplot(2,1,2);
stem(t,y);
xlabel('Time---------');
ylabel('Amplitude-----------');
title('Cosine Wave');