clc;
clear all;
close all;

N=3; %N barle frq kome
w=2*pi/N;

fs=500; %real time sample rate(Hz)
t=-3:1/fs:3; %time index(s)
n=-3:1:3; %sample index

for cnt=1:4,
    subplot(4,2,cnt*2-1);
    h=plot(t,real(exp(j*cnt*w*t)),'r');
    set(h,'Linewidth',0.1);
    hold on;
    h=stem(n,real(exp(j*cnt*w*n)),'.');
    hold off;
    box off;
    grid on;
    
    xlim([min(t) max(t)]);
    ylim([-1.1 1.1]);
    ylabel(sprintf('\\phi_%d',cnt));
    
     subplot(4,2,cnt*2);
    h=plot(t,imag(exp(j*cnt*w*t)),'r');
    set(h,'Linewidth',0.1);
    hold on;
    h=stem(n,imag(exp(j*cnt*w*n)),'.');
    hold off;
    box off;
    grid on;
    
    xlim([min(t) max(t)]);
    ylim([-1.1 1.1]);
    ylabel(sprintf('\\phi_%d',cnt));
    
end