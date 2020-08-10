%IIR system 
clc;
clear all;
close all;

Nx=51;
b=[0.5,0.7,0.6,0.4];
a=[1,0.4,-0.3,0.2];
n=(0:Nx-1);
x=sin(2*pi*0.125*n);
y=filter(b,a,x)
figure(1)

%subplot('211');
stem(n,x),xlabel('Sample index k'),
ylabel('X'),
hold on

stem(n,y),xlabel('Sample index k'),
ylabel('Y'),
