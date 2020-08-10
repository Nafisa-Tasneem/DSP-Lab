clc;
clear all;
close all;

fs = 1e4;
t = 0:1/fs:5;
sw = sin(2*pi*262.62*t);
n = 0.1 * randn(size(sw));
swn = sw + n;

%butterworth filter of order 2 with a cutoff at 400H
N = 2;
FN = fs/2;
fc = 150;
FC = fc/FN;
[b, a] = butter(2, 400/(fs/2));
figure(1);
w = linspace(0, FN/fc, 400);
[h, f] = freqz(b, a);
plot(f, 20*log10(abs(h))); 
grid;
ylabel('Magnitude (dB)');
xlabel('Frequency (Hz)');

%filter with filter
y1 = filter(b,a,swn);
figure(2);
subplot(311);
plot(t,sw), axis([0 0.04 -1.1 1.1]), title('Original Signal');
soundsc(sw,1e4)
subplot(312);
plot(t,swn), axis([0 0.04 -1.1 1.1]), title('Noisy Signal');
soundsc(swn,1e4)
subplot(313);
plot(t,y1), axis([0 0.04 -1.1 1.1]), title('Using Filter');
soundsc(y1,1e4)


%zero-phase filter
y2 = filtfilt(b,a,swn);
figure(3);
subplot(311);
plot(t,sw), axis([0 0.04 -1.1 1.1]), title('Original Signal');
soundsc(sw,1e4)
subplot(312);
plot(t,swn), axis([0 0.04 -1.1 1.1]), title('Noisy Signal');
soundsc(swn,1e4)
subplot(313);
plot(t,y2), axis([0 0.04 -1.1 1.1]), title('Using Filtfilt(zero-phase filter)');
soundsc(y2,1e4)


%impulse invariant method
[bz1, az1] = impinvar(b, a, fs);
y3 = filter(bz1,az1,swn);
figure(4);
subplot(311);
plot(t,sw), axis([0 0.04 -1.1 1.1]), title('Original Signal');
soundsc(sw,1e4)
subplot(312);
plot(t,swn), axis([0 0.04 -1.1 1.1]), title('Noisy Signal');
soundsc(swn,1e4)
subplot(313);
plot(t,y3), axis([0 0.04 -1.1 1.1]), title('Using Filter(Impulse Invariant)');
soundsc(y3,1e4)


%bilinear transfer method
[bz2, az2] = bilinear(b, a, fs);
y4 = filter(bz2,az2,swn);
figure(5);
subplot(311);
plot(t,sw), axis([0 0.04 -1.1 1.1]), title('Original Signal');
soundsc(sw,1e4)
subplot(312);
plot(t,swn), axis([0 0.04 -1.1 1.1]), title('Noisy Signal');
soundsc(swn,1e4)
subplot(313);
plot(t,y4), axis([0 0.04 -1.1 1.1]), title('Using Filter(Bilinear)');
soundsc(y4,1e4)


%% overlap add method method
y5 = fftfilt(b,swn);
figure(6);
subplot(311);
plot(t,sw), axis([0 0.04 -1.1 1.1]), title('Original Signal');
%% 



%%
soundsc(sw,1e4)
subplot(312);
plot(t,swn), axis([0 0.04 -1.1 1.1]), title('Noisy Signal'); 

%%


%%
soundsc(swn,1e4)
subplot(313);
plot(t,y5), axis([0 0.04 -1.1 1.1]), title('Using Filter(Overlap Add)');
soundsc(y5,1e4)


