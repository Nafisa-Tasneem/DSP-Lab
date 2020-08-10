%% homework (1-3), without function
clc;
clear all;

%%x(n)= del(n+5), unit impulse , left , 5 shift 

t=-5:1:5;
y=[ones(1,1),zeros(1,10)]; %%Unit impulse signal

subplot(2,2,1);
stem(t,y);
xlabel('Unit impulse, x(n)=del(n+5)');
ylabel('Amplitude');
axis ([-6 4 0 1.5 ])

%% x(n)=u(n-10) , unit step , right shift
t=0:1:15;
y=[zeros(1,10),ones(1,6)]; 

subplot(2,2,2);
stem(t,y);
xlabel('Unit Step, x(n)=u(n-10)');
ylabel('Amplitude');
axis ([0 15 0 1.5 ])

%% x(n)= r(n+2)
t=-2:1:8;
y=0:1:10; %%Ramp signal

subplot(2,2,3);
stem(t,y);
xlabel('Ramp, x(n)=r(n+2)');
ylabel('Amplitude');

axis ([-3 8 0 10 ])
