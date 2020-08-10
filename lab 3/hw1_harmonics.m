clc;
clear all;
close all;
N=3; 
w=2*pi*20/N;

fs=200; %real time sample rate(Hz)
n=-3:1/fs:3; %sample index

for cnt=1:5
    y=exp(j*w*n*cnt/3)+exp(j*w*2*n*cnt/5);
    subplot(5,2,(cnt)*2-1);  
    h=stem(n,real(y),'.');
    hold off;
    box off;
    grid on;
    xlim([min(n) max(n)]);
    ylim([-2.5 2.5]);
    ylabel(sprintf('\\phi_%d',cnt)); 
     subplot(5,2,(cnt)*2);
    h=stem(n,imag(y),'.');
    hold off;
    box off;
    grid on;   
    xlim([min(n) max(n)]);
    ylim([-2.5 2.5]);
    ylabel(sprintf('\\phi_%d',cnt));
    
end