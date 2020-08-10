format long
num=input('Numerator coefficient vector=');
den=input('Denominator coefficient vector=');
[z,p,k]=tf2zp(num,den)
sos=zp2sos(z,p,k)