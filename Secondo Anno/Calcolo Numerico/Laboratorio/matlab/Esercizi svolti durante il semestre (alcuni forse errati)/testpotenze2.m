n=10;
Q=randn(10,10);
Qor = orth(Q);
Asim = Qor * diag(1:10) * Qor';
maxit=500;
tol=1e-8; 
x0=rand(n,1);
x0=x0/norm(x0);
[x,lambda,e,bho]=potenzeGraf(Asim,x0,maxit,tol,10,9);
semilogy(1:1:length(e),e,'r')
hold on
semilogy(1:1:length(bho),bho,'g')
title('rosso=|λ(i)-λ1|, verde=(λ2-λ1)ⁱ')
