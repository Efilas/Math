T=213;
K=2.39e-11;
a=3e-4; b=14e-4;
fun = @(x) K./((x.^5).*(-1+exp(1.432./(T.*x))));
%fplot(fun,[a,b])
x0=(a+b)/2;
I0=(b-a)*fun(x0);
I1=(b-a)*(fun(a)+fun(b))/2;
I2=(b-a)*(fun(a)+4*fun(x0)+fun(b))/6;
disp([I0,I1,I2]);

