clc;
clear all;
for k=1:3
fs=input('Enter Sampling frequency :');
n=0:(1/fs):10;

x=(3/2)*sin(n*pi/2);
m1=length(x);

h=4*cos(n*pi/3);
m2=length(h);

x=[x,zeros(1,m2)];
%subplot(3,3,1),stem(x);
xlabel('n-------->');
ylabel('x(n)----->');


h=[h,zeros(1,m1)];
%subplot(3,3,2),stem(h);
xlabel('n-------->');
ylabel('h(n)----->');

y=zeros(1,m1+m2-1);

for i=1:m1+m2-1
   y(i)=0;
   
   for j=1:m1+m2-1
      
       if(j<i+1)
            y(i)=y(i)+x(j)*h(i-j+1);
       end
   end
    
end

y;
if k==1
    
subplot(3,3,[1,3]), stem(y);
xlabel('n-------->');
ylabel('y(n)----->');
end

if k==2
    
subplot(3,3,[4,6]), stem(y);
xlabel('n-------->');
ylabel('y(n)----->');
end

if k==3
    
subplot(3,3,[7,9]), stem(y);
xlabel('n-------->');
ylabel('y(n)----->');
end

end








