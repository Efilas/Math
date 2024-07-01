function [A,f]=poisson2d(n)
%function [A,f]=poisson2d(n)
% costruisce i dati per la risoluzione del problema di
% Poisson -Delta u = f sul quadrato unitario con condizioni al
% bordo di Dirichlet omogenee ed f = 1
% n : numero di nodi di discretizzazione lungo ogni direzione
% A : matrice dei coeff
% f : termine noto
%
h=(1-0)/(n+1);
M=1/h^2*(spdiags(-2*ones(n,1),0,n,n)+ spdiags(ones(n,1),1,n,n)+ spdiags(ones(n,1),-1,n,n));
I=speye(n);
A=-kron(M,I)-kron(I,M);
f=ones(n^2,1);