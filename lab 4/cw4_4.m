%factorization of a cascade realization for FIR/IIr Transfer Function
%an FIR transfer function can be treated as an IIR tx fn with a constant
%numerator of unity and a denominator which is polynomial describing the
%FIR transfer function
format long
num=input('Numerator coefficient vector=');
den=input('Denominator coefficient vector=');
[z,p,k]=tf2zp(num,den)
sos=zp2sos(z,p,k)