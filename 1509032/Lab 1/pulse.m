
clc;
clear all;
for n=-5:1:5
    y=step_shift(n)-step_fun(n)1;
 stem(n,y)  
hold on
end
xlabel('Pulse function, x(n)=pi(n+5) ');
ylabel ('Amplitude');
axis([-7 4 -.5 1.5])



