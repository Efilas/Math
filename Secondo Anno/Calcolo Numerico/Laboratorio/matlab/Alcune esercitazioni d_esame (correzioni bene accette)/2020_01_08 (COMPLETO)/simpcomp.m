function [I]=simpcomp(f,a,b,m)
H=(b-a)/m;
ints=linspace(a,b,2*m+1);
n=length(ints);
%1,4,2,4,2,4,2,4,2,...,1
I=f(ints(1))+f(ints(n));
for j=2:n-1
    I=I+2*f(ints(j))*(mod(j+1,2)+1);
end
I=I*(H/6);
