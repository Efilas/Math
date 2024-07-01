function [Q,R]=QR_house(A)
% function [Q,R]=QR_house(A)
% funziona che implementa il metodo di Householder per il calcolo della
% fattorizzazione QR

[n,m]=size(A);
% prealloco R e U poi li sovrascrivo
R=A;
U=eye(n);

for k=1:m
   % colonna corrente di A, dalla componente diagonale in poi
   x=R(k:n,k);

   % definisco il vettore di Householder v
   alpha = - sign(x(1))*norm(x);
   e1=eye(n-k+1,1);
   v=x-alpha*e1;
   % e lo scalare beta
   beta = 2/(v'*v);

   % trasformo R e U
   R(k:n,k:m)=R(k:n,k:m) - v*(beta*(v'*R(k:n,k:m)));
   U(k:n,1:n)=U(k:n,1:n) - v*(beta*(v'*U(k:n,1:n)));
end
% la Q della fattorizzazione QR è U'
Q=U';
   