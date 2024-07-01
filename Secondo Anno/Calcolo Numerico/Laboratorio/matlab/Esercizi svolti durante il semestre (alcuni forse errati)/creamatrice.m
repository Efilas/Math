function [A,f]=creamatrice(n)
x=linspace(0,2*pi,n+2)'; 
x=x(2:n+1,1);
f=sin(x);
A=(diag(2*ones(n,1))+diag(-ones(n-1,1),1)+diag(-ones(n-1,1),-1));
A=(n+1)^2/(4*pi^2)*A;
end