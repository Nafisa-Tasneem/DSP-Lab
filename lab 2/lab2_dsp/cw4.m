clc;
clear all;

N=1024;
R1=randn(1,N); %generate normal random numbers
R2=rand(1,N); %generate uniformly random numbers

figure(1);
subplot('221');
plot(R1);
grid;
title('Normal [Gaussian] Distributed Random Signal');
xlabel('Sample Number');
ylabel('Amplitude');

subplot('222');
hist(R1);
grid;
title('Histogram[Pdf] of a normal Random Signal');
xlabel('Sample Number');
ylabel('Total');

subplot('223');
plot(R2);
grid;
title('Uniformly Distributed Random Signal');
xlabel('Sample Number');
ylabel('Amplitude');

subplot('224');
hist(R2);
grid;
title('Histogram[Pdf] of a uniformly Random Signal');
xlabel('Sample Number');
ylabel('Total');




