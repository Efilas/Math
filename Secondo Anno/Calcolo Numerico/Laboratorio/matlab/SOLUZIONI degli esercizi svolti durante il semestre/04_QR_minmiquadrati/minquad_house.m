function [x,res]=minquad_house(A,b)
% [x]=minquad_house(A,b)
% funziona che risolve il problema ai minimi quadrati
% 
% x=argmin\|Ax-b\|_2^2
%
% sfruttando la fattorizzazione QR di A implementata mediante il metodo di Householder
% N.B: Q non è mai costruita esplicitamente

[n,m]=size(A);
% prealloco R 
R=A;


for k=1:m
   % colonna corrente di A, dalla componente diagonale in poi
   y=R(k:n,k);

   % definisco il vettore di Householder v
   alpha = - sign(y(1))*norm(y);
   e1=eye(n-k+1,1);
   v=y-alpha*e1;
   % e lo scalare beta
   beta = 2/(v'*v);

   % trasformo R e U
   R(k:n,k:m)=R(k:n,k:m) - v*(beta*(v'*R(k:n,k:m)));
   b(k:n)=b(k:n) - v*(beta*(v'*b(k:n)));
end

% risolvo il sistema triangolare
x=R(1:m,1:m)\b(1:m);
% e calcolo il residuo
res=norm(b(m+1:n));

