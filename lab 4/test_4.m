clc;
clear all;
close all;

N=8;
n=0:7;
xn=cos(n*pi/4);
Xk=zeros(1,N);
iXk=zeros(1,N);

for k=0:N-1
    for n=0:N-1
        Xk(k+1)=Xk(k+1)+(xn(n+1)*exp((-i)*2*pi*k*n/N));
    end
end

t=0:N-1;
subplot('321');
stem(t,xn);
ylabel('Amplitude');
xlabel('Time Index');
title('Input sequence');

disp(Xk);
t=0:N-1;
subplot('323');
stem(t,Xk);
ylabel('Amplitude');
xlabel('Time Index');
title('X(k)');

%IDFT
for n=0:N-1
    for k=0:N-1
        iXk(n+1)=iXk(n+1)+(Xk(k+1)*exp((i)*2*pi*k*n/N));
    end
end
iXk=iXk./N;

t=0:N-1;
subplot('324');
stem(t,xn);
ylabel('amplitude');
xlabel('Time index');
title('IDFT sequence');


%FFT

x2=fft(xn);
subplot('325');
stem(t,x2);
ylabel('amplitude');
xlabel('Time index');
title('FFT of input sequence');


%IFFT

x3=ifft(x2);
subplot('326');
stem(t,x3);
ylabel('amplitude');
xlabel('Time index');
title('IFFT sequence');

