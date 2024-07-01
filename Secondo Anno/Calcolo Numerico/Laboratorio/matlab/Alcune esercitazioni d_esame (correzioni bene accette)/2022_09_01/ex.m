clear; clc; close all
f=@(x) sin(x).*cos(x).*exp(-x./4);
a=0; b=4*pi;
fplot(f,[a,b]);
hold on
N=[4,6,8,10,12];
for n=N
    pL=polLag(n,a,b,f);
    fplot(pL,[a,b])
end
legend('F','4','6','8','10','12')
