clc;
clear all;
disp('linear convolution program');
fs=input('Enter sampling frequency : ');
n= -5:(1/fs):5;
x=sin(n*pi/2);
m1=length(x);
h=cos(n*pi);
m2=length(h);
x=[x,zeros(1,m2)];
subplot(2,2,1), stem(x);
title('i/p sequence x(n) is :');
xlabel('----->n');
ylabel('-----> x(n)'); grid;


h=[h,zeros(1,m1)];
subplot(2,2,2), stem(h);
title('i/p sequence h(n) is :');
xlabel('----->n');
ylabel('-----> h(n)'); grid;
disp('Linear convolution of x(n) & h(n) is y(n) :');
y=zeros(1,m1+m2-1);

for i=1:m1+m2-1
    y(i)=0;
    for j=1:m1+m2-1
        if(j<i+1)
            y(i)=y(i)+x(j)*h(i-j+1);
        end
    end
end

y

subplot(2,2,[3,4]), stem(y);
title('Linear convolution of x(n) & h(n) is :');
xlabel('----->n');
ylabel('-----> y(n)');
grid;



