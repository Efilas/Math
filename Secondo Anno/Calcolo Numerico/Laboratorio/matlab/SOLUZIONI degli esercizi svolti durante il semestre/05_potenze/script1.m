% script 1
clear 
close all

n=10;
autovalori=1:n;
tipo=input('A nonsim o sim (1/2)\n');

switch tipo

   case 1
   % es 1
      Q=randn(n,n);
      A=Q*diag(autovalori)/Q;

   case 2
   % es 2
      Q=orth(randn(n,n));
      A=Q*diag(autovalori)*Q';
end

maxit=500;
tol=1e-8;
x0=rand(n,1);x0=x0/norm(x0);

fprintf('Approx autovalore piu grande in modulo\n')
%[x,lambda]=potenze(A,x0,maxit,tol);
figure(1)
[x,lambda]=potenze(A,x0,maxit,tol,autovalori(n));

semilogy( (autovalori(n-1)/autovalori(n)).^(1:180),'kx')
legend('residuo','errore','fattore asintot')


