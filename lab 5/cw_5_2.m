clc;
clear all;
close all;
M=15;
n=[0:(M-1)];
om=linspace(-pi,pi,201); %for displaying freq response
oc=pi/4; %cuttoff freq
%desired response:
hd=inline('oc/pi*sinc(oc/pi*(n-(M-1)/2))','n','oc','M');
Hd=inline('1*abs(om)<oc','om','oc');

hn_hann=hd(n,oc,M).*hann(M)'; %hanning window applied to ideal impulse response

hn_rectwin=hd(n,oc,M).*rectwin(M)'; %rectwin window applied to ideal impulse response

hn_blackman=hd(n,oc,M).*blackman(M)'; %blackman window applied to ideal impulse response

hn_hamming=hd(n,oc,M).*hamming(M)'; %hamming window applied to ideal impulse response

hn_kaiser=hd(n,oc,M).*kaiser(M)'; %kaiser window applied to ideal impulse response

hn_triang=hd(n,oc,M).*triang(M)'; %triang window applied to ideal impulse response

figure(1),subplot(211)
stem(n,hn_hann,'filled'),
axis([0 M-1 -.1 .3]),xlabel 'n', ylabel 'h[n]'
title(sprintf('Hanning Lowpass, M=%d',M))
subplot(212)
H=freqz(hn_hann,1,om);
plot(om,20*log10(abs(H)),'-',om,20*log10(max(Hd(om,oc),eps)),'--')
xlabel('\omega');
ylabel('|H(\omega)|(dB)');
title('Magnitude response (Hanning)');

figure(2),subplot(211)
stem(n,hn_hamming,'filled'),
axis([0 M-1 -.1 .3]),xlabel('n'), ylabel('h[n]')
title(sprintf('Hamming Lowpass, M=%d',M))
subplot(212)
H=freqz(hn_hamming,1,om);
plot(om,20*log10(abs(H)),'-',om,20*log10(max(Hd(om,oc),eps)),'--')
xlabel('\omega');
ylabel('|H(\omega)|(dB)');
title('Magnitude response (Hamming)');

figure(3),subplot(211)
stem(n,hn_rectwin,'filled'),
axis([0 M-1 -.1 .3]),xlabel('n'), ylabel('h[n]')
title(sprintf('Rect. window Lowpass, M=%d',M))
subplot(212)
H=freqz(hn_rectwin,1,om);
plot(om,20*log10(abs(H)),'-',om,20*log10(max(Hd(om,oc),eps)),'--')
xlabel('\omega');
ylabel('|H(\omega)|(dB)');
title('Magnitude response (rect. window)');

figure(4),subplot(211)
stem(n,hn_blackman,'filled'),
axis([0 M-1 -.1 .3]),xlabel('n'), ylabel('h[n]')
title(sprintf('Blackman window Lowpass, M=%d',M))
subplot(212)
H=freqz(hn_blackman,1,om);
plot(om,20*log10(abs(H)),'-',om,20*log10(max(Hd(om,oc),eps)),'--')
xlabel('\omega');
ylabel('|H(\omega)|(dB)');
title('Magnitude response (Blackman window)');



figure(5),subplot(211)
stem(n,hn_kaiser,'filled'),
axis([0 M-1 -.1 .3]),xlabel 'n', ylabel 'h[n]'
title(sprintf('kaiser window Lowpass, M=%d',M))
subplot(212)
H=freqz(hn_kaiser,1,om);
plot(om,20*log10(abs(H)),'-',om,20*log10(max(Hd(om,oc),eps)),'--')
xlabel('\omega');
ylabel('|H(\omega)|(dB)');
title('Magnitude response (kaiser window)');

figure(6),subplot(211)
stem(n,hn_triang,'filled'),
axis([0 M-1 -.1 .3]),xlabel('n'), ylabel('h[n]')
title(sprintf('triangular window Lowpass, M=%d',M))
subplot(212)
H=freqz(hn_triang,1,om);
plot(om,20*log10(abs(H)),'-',om,20*log10(max(Hd(om,oc),eps)),'--')
xlabel('\omega');
ylabel('|H(\omega)|(dB)');
title('Magnitude response (triangular window)');



