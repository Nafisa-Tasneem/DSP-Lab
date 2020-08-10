clc;
close all;
clear all;
fs=1e4;
t=0:1/fs/5;
sw=sin(2*pi*262.62*t); %original signal
n=0.1*randn(size(sw)); %noisy signal
swn=sw+n;

%%   create a butterworth filter of order 2 with fc=400 hz
N=2;
FN=fs/2; %normalized freq
fc=150;
Fc=fc/FN; %normalized cutoff freq ( normalized cutoff freq always in the interval 0<f<1)
[b a]=butter(2,400/(fs/2));
figure(1)
w=linspace(0,FN/fc,400); %plot the reponse of filter
[h,f]=freqz(b,a);
plot(f,20*log10(abs(h))),grid

ylabel('Magnitude Response(dB)')
xlabel('frequency(Hz)')
 %%
 
%% create a filter with filter
y1=filter(b,a,swn);
figure(2),
subplot('311')
plot(t,sw),axis([0 0.04 -1.1 1.1]), title('Original signal')
soundsc(sw,1e4)

subplot('312')
plot(t,swn),axis([0 0.04 -1.1 1.1]), title('Noisy signal')
soundsc(swn,1e4)

subplot('313')
plot(t,y1),axis([0 0.04 -1.1 1.1]), title('Using filter')
soundsc(y1,1e4)

y2=filtfilt(b,a,swn);
figure(3),
subplot('311')
plot(t,sw),axis([0 0.04 -1.1 1.1]), title('Original signal')
soundsc(sw,1e4)

subplot('312')
plot(t,swn),axis([0 0.04 -1.1 1.1]), title('Noisy signal')
soundsc(swn,1e4)

subplot('313')
plot(t,y2),axis([0 0.04 -1.1 1.1]), title('Using filtfilt(zero- phase filter)')
soundsc(y2,1e4)

[bz1,az1]=impinvar(b,a,fs);
y3=filter(bz1,az1,swn);
figure(4),
subplot('311')
plot(t,sw),axis([0 0.04 -1.1 1.1]), title('Original signal')
soundsc(sw,1e4)

subplot('312')
plot(t,swn),axis([0 0.04 -1.1 1.1]), title('Noisy signal')
soundsc(swn,1e4)

subplot('313')
plot(t,y3),axis([0 0.04 -1.1 1.1]), title('Using filter(impulse invariant)')
soundsc(y3,1e4)
%%
%% bilinear method
[bz2,az2]=bilinear(b,a,fs);
y4=filter(bz2,az2,swn);
figure(5),
subplot('311')
plot(t,sw),axis([0 0.04 -1.1 1.1]), title('Original signal')
soundsc(sw,1e4)

subplot('312')
plot(t,swn),axis([0 0.04 -1.1 1.1]), title('Noisy signal')
soundsc(swn,1e4)

subplot('313')
plot(t,y4),axis([0 0.04 -1.1 1.1]), title('Using filter(bilinear)')
soundsc(y4,1e4)

%% implements the overlap-add method for Fir filters

y5=fftfilt(b,swn);
figure(6),
subplot('311')
plot(t,sw),axis([0 0.04 -1.1 1.1]), title('Original signal')
soundsc(sw,1e4)
%%
subplot('312')
plot(t,swn),axis([0 0.04 -1.1 1.1]), title('Noisy signal')
soundsc(swn,1e4)
%%
subplot('313')
plot(t,y5),axis([0 0.04 -1.1 1.1]), title('Filter (Overlap-add)')
soundsc(y5,1e4)




