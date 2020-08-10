clc;
close all;
clear all;
x=rand(100,1);
y=x+rand(100,1);
subplot(2,2,1);
plot(x,y,'o','MarkerSize',10) %2-D scatter plot

r=corrcoef(x,y);
z=randn(100,1);
subplot(2,2,2);
plot3(x,y,z,'.');
