function [A,f]=creamatrice(n)
%function [A,f]=creamatrice(n)
%
% determino i valori in x (n nodi interni per n+2 nodi totali, per n+1 intervalli)
x=linspace(0,2*pi,n+2)'; 
x=x(2:n+1);
% genero il termine noto
f=sin(x);
% genero la matrice dei coefficienti
A=(diag(2*ones(n,1))+diag(-ones(n-1,1),1)+diag(-ones(n-1,1),-1));
A=(n+1)^2/(4*pi^2)*A;
end