function [x,res]=minquad_chol(A,b)
% [x]=minquad_chol(A,b)
% funziona che risolve il problema ai minimi quadrati
% 
% x=argmin\|Ax-b\|_2^2
%
% risolvendo le equazioni normali

% calcolo la Cholesky di A'*A
L=chol(A'*A,'lower');

% risolvo le equazioni normali
x=L'\(L\(A'*b));

% e calcolo il residuo
res=norm(A*x-b);

