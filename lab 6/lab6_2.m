
%impulse invariant filter
Fs=1000; %sampling freq
fc=300; %cutoff freq 
WC=2*pi*fc; %cutoff freq in radian
N=5;

[b,a]=butter(N,WC,'s'); %creating analog filter
[z,p,k]=butter(N,WC,'s');
[bz,az]=impinvar(b,a,Fs); %determine coeffs of IIR filter
[h,f]=freqz(bz,az,512,Fs); %512 points are taken,can be changed

plot(f,20*log10(abs(h))),grid
ylabel('Magnitude(dB)')
xlabel('frequency(Hz)')
