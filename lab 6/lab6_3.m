
%impulse invariant filter
N=2; %filter order
Fs=1280; %sampling freq
fc=150; %cutoff freq 
WC=2*pi*fc; %cutoff freq in radian


[b,a]=butter(N,WC,'s'); %creating analog filter
[z,p,k]=butter(N,WC,'s');
[bz,az]=impinvar(b,a,Fs); %determine coeffs of IIR filter
subplot(2,1,1) %plot magnitude freq. response
[H,f]=freqz(bz,az,512,Fs); %512 points are taken,can be changed

plot(f,20*log10(abs(H)))
ylabel('Magnitude Response(dB)')
xlabel('frequency(Hz)')

subplot(2,1,2) %plot pole zero diagram
zplane(bz,az)
zz=roots(bz) %poles and zeros
pz=roots(az) %poles in z plane 

