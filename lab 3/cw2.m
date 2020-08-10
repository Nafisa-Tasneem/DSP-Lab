clc;
clear all;
close all;
x=input('Enter the sequence 1:');
h=input('Enter the sequence 2:');
y=xcorr(x,h); 3
figure;

subplot(2,2,1)
stem(x);
xlabel('n-->');
ylabel('Amp-->');
title('input sequence 1');

subplot(2,2,2)
stem(h);
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

%1=[1 2 1 1 3]
% i/p 2 =[3 4 3 2 1]