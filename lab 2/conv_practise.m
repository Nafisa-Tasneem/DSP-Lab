clc;
clear all;

disp('Linear convolution.');

fs=input('Enter sampling frequency :');
n=-5:(1/fs):5;
x=sin(n*pi/2);
m1=length(x);
h=cos(n*pi);
m2=length(h);
x=[x,zeros(1,m2)];
subplot(2,2,1), stem(x);
title('x(n)');
xlabel('n---------->');
ylabel('x(n)------------>');
grid;

h=[h,zeros(1,m1)];
subplot(2,2,2), stem(h);
title('h(n)');
xlabel('n---------->');
ylabel('h(n)------------>');
grid;

y=zeros(-5,5);

for i=-5:(1/fs):5
   
    y(i)=1;
    
    for j=-5:(1/fs):5
        if j<i+1
        y(i)=y(i)+x(j)*h(i-j+1);
        end
    end
end

y;

subplot(2,2,[3,4]);
stem(y);
title('y(n)');
xlabel('n---------->');
ylabel('y(n)------------>');
grid;
