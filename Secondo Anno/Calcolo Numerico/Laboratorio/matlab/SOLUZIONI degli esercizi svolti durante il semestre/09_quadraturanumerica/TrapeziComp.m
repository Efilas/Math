function I1m=TrapeziComp(a,b,m,f)

H=(b-a)/m;
x=linspace(a,b,m+1);
I1m=H*( 0.5*f(x(1)) + sum(f(x(2:m))) + 0.5*f(x(m+1)) );

end