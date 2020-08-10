clc;
clear all;
close all;

disp('The sequence from the user');
xn=input('Enter the input sequence : ');
N=length(xn);

Xk=zeros(1,N);
iXk=zeros(1,N);

for k=0:N-1
    for n=0:N-1
        Xk(k+1)=Xk(k+1)+(xn(n+1)*exp((-i)*2*pi*k*n/N));
    end
end

t=0:N-1;
subplot('421');
stem(t,xn);
ylabel('Amplitude');
xlabel('Time Index');
title('Input sequence');

disp('The discrete fourier transform of x(n)');
disp(Xk);
t=0:N-1;
subplot('422');
stem(t,Xk);
ylabel('Amplitude');
xlabel('Time Index');
title('X(k)');

magnitude=abs(Xk);

disp('the magnitude response of X(k)');
disp(magnitude);

t=0:N-1;
subplot('423');
stem(t,magnitude);
ylabel('Amplitude');
xlabel('k');
title('magnitude response');

%to find the phase of individual DFT points
phase=angle(Xk);

%code block to plot the phase response
disp('the phase response of X(k)');
disp(phase);

t=0:N-1;
subplot('424');
stem(t,phase);
ylabel('phase');
xlabel('K');
title('phase response');

%IDFT
%%code block to find IDFT of the sequence
for n=0:N-1
    for k=0:N-1
        iXk(n+1)=iXk(n+1)+(Xk(k+1)*exp((i)*2*pi*k*n/N));
    end
end
iXk=iXk./N;

t=0:N-1;
subplot('425');
stem(t,xn);
ylabel('amplitude');
xlabel('Time index');
title('IDFT sequence');


%code block to plot the FFT of i/p sequence using inbuilt function
x2=fft(xn);
subplot('426');
stem(t,x2);
ylabel('amplitude');
xlabel('Time index');
title('FFT of input sequence');


x3=ifft(x2);
subplot('427');
stem(t,x3);
ylabel('amplitude');
xlabel('Time index');
title('IFFT sequence');



