clc;
clear all;
%sine wave

fs=input('Enter sampling freq : '); %%time domain e koto ghor porpor nibe
f=input('Enter signal freq : '); %sine er freq
a=input('ENter amplitude : ');

t=-5:(1/fs):5;

y=a*sin(2*pi*f*t);
subplot(2,2,1); %% agee subplot dite hobe, agee jayga selct korbo, then kaj korbo.
stem(t,y);



xlabel('Time --------->');
ylabel('Amplitude----------->');
title('Sine Wave');

%cos wave


t=0:(1/fs):1;
y=a*cos(2*pi*f*t);
subplot(2,2,2);
stem(t,y);

