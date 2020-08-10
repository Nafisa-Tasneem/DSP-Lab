clc;
clear all;
close all;

M=7;
n=[0:M-1];
om=linspace(-pi,pi,201);
oc=pi/4;


hd=inline('oc/pi*sinc(pi/4*(n-(M-1)/2)/(pi*(n-2)))','n','oc','M');
Hd=inline('1*abs(om)>oc','om','oc');


hn_hamming=hd(n,oc,M).*hamming(M); %hamming window applied to ideal impulse response


figure(1),subplot(211)
stem(n,hn_hamming,'filled'),
axis([0 M-1 -.1 .3]),xlabel('n'), ylabel('h[n]')
title(sprintf('Hamming Lowpass, M=%d',M))
subplot(212)
H=freqz(hn_hamming,1,om);
plot(om,20*log10(abs(H)),'-',om,20*log10(max(Hd(om,oc),eps)),'--')
xlabel('\omega');
ylabel('|H(\omega)|(dB)');
title('Magnitude response (Hamming)');