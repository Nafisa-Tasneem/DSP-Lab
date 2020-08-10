 %questioncol

clc;
 clear all;
 close all;
 f1=30;%signal freq
 fs=128; %sampling freq
 N=256;%no. of samples
 N1=1024;%no. of FFT points
 n=0:N-1;% index n
 f=(0:N1-1)*fs/N1; %defining the frequency points [axis]
 x=cos(2*pi*f1*n/fs);
 XR=abs(fft(x,N1));%magnitude of FFT using no windowing
 xh=hamming(N);%hamming samples
 xw=x.*xh';%window the signal
 XH=abs(fft(xw,N1));%magnitude of windowed signal
 
 subplot(2,1,1);
 plot(f(1:N1/2),20*log10(XR(1:N1/2)/max(XR)));
 title('spectrum of x(t) using rectangular windows');
 grid;
 xlabel('Frequency,Hz');
 ylabel('Normalized Magnitude,[dB]');
 
 subplot(2,1,2);
 plot(f(1:N1/2),20*log10(XH(1:N1/2)/max(XH)));
 title('spectrum of x(t) using rectangular windows');
 grid;
 xlabel('Frequency,Hz');
 ylabel('Normalized Magnitude,[dB]');
 