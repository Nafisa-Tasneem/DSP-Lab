
clc;
clear all;
for n=0:15
    y=step_func(n);
 stem(n,y)  
hold on
end
xlabel('Unit Step, x(n)=u(n-10)');
ylabel ('Amplitude')
axis([0 15 -.5 1.5])