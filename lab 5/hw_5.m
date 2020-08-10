
clc;
close all;
clear all;
Hd=inline('exp(-i*om*3*(M-1)/2).*(1+abs(om)>(pi/2))','om','M');
M=7;
ok=[0:(M-1)]/M*2*pi;
Hk=Hd(mod(ok+pi,2*pi)-pi,M); %trick: [-pi,pi] specification of H(\omega)
h=ifft(Hk);
h=fir2(M-1, [0 0.5 .5 1],[1 1 2 2],boxcar(M)); %%high pass like magnitude
om=linspace(-pi,pi,201);
clf,
pl=230;
subplot(pl+1),plot(om,abs(Hd(om,M)))
hold on,

stem(ok(ok>=0),abs(Hk(ok>=0)),'filled'),
xlabel('\omega');
ylabel('|H_d(\omega)|');
subplot(pl+2),stem(0:(M-1),h,'filled'),title(sprintf('M=%d',M))
xlabel('n');
ylabel('h[n]');
axis([0 M-1 -.5 1.5])
H=freqz(h,1,om);
subplot(pl+3),plot(om,abs(H),'-',om,abs(Hd(om,M)),'--',ok,abs(Hk),'o')
xlabel('\omega');ylabel('|H(omega)|'), 
