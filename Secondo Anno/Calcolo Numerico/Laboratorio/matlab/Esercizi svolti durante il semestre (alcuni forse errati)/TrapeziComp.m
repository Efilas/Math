function [I1m]=TrapeziComp(a,b,m,fun)
H=(b-a)/m;
ints=linspace(a,b,m+1)';
ff=fun(ints);
I1m=H*(sum(ff)-(fun(a)+fun(b))/2);

