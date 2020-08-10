clc;
clear all;
t=0:1:10;
y=[zeros(1,5),ones(1,1),zeros(1,5)]; %%Unit impulse signal

subplot(2,2,1);
stem(t,y);
xlabel('Unit impulse');
ylabel('Amplitude');

y=0:1:10; %%Ramp signal

subplot(2,2,2);
stem(t,y);
xlabel('Ramp');
ylabel('Amplitude');

y=ones(1,11); %%unit step signal

subplot(2,2,3);
stem(t,y);
xlabel('Unit Step');
ylabel('Amplitude');


y=exp(t); %%Exponential signal

subplot(2,2,4);
stem(t,y);
xlabel('Exponential');
ylabel('Amplitude');

