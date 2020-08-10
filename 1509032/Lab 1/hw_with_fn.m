%%homework (1-3) with function

clc;
clear all;

%%x(n)= del(n+5), unit impulse , left , 5 shift 
for n=-5:1:5
   y= impulse_func(n);
  stem(n,y);
 
  hold on
end

xlabel ('Unit impulse , x(n)= del(n+5)');
ylabel ('Amplitude')
axis ([-6 4 -.5 1.5 ])

