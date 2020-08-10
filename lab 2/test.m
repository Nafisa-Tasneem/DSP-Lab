clc;
clear all;

for (n=0:.5:10)

y=step(n)- step_six(n);

stem(n,y)
hold on

end

axis([0 10 0 1]);