clc;
clear all;
close all;
fs=50;
n=-3:1/fs:3;

x1=sin(n*pi/2);
x2=cos(n*pi/3);
y=xcorr(x1,x2); 
figure;

subplot(2,2,1)
stem(x1);
xlabel('n-->');
ylabel('Amp-->');
title('input sequence 1');

subplot(2,2,2)
stem(x2);
xlabel('n-->');
ylabel('Amp-->');
title('input sequence 2');

subplot(2,2,3)
stem(y);
xlabel('n-->');
ylabel('Amp-->');
title('output sequence ');

subplot(2,2,4)
stem(fliplr(y));
xlabel('n-->');
ylabel('Amp-->');
title('flipped output sequence');


disp('the resultant is ');
fliplr(y);

