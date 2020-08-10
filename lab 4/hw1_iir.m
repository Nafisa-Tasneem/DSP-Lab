%IIR system 
clc;
clear all;
close all;

Nx=51;
b=[0,.28,.44,.09];
a=[.6,.5,.19,-.5];
n=(0:Nx-1);
x=sin(2*pi*0.125*n);
y=filter(b,a,x);
figure(1)

%subplot('211');
stem(n,x),xlabel('Sample index k'),
ylabel('X'),
hold on

stem(n,y),xlabel('Sample index k'),
ylabel('Y'),
