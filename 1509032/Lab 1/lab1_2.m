
clc;
clear all;
for n=-5:5
    y=step_fun(n);
 stem(n,y)  
hold on
end
xlabel('Unit Step signal');
ylabel('Amplitude');
axis([-6 5 -1 2])