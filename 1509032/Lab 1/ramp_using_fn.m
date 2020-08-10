clc;
clear all;

for n=0:5
   y=ramp_fn(n)
stem(n-2,y)  
hold on
end
xlabel('Ramp, x(n)=r(n+2)');
ylabel ('Amplitude')
axis([-3 6 -.5 10])