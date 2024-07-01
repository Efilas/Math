function I2m=Cavalieri_Simpson(a,b,m,f)
H=(b-a)/m;

x=linspace(a,b,2*m+1);

I2m=H/6*( f(x(1))+ 2*sum(f(x(3:2:2*m))) + 4*sum(f(x(2:2:2*m))) + f(x(2*m+1)) );

end