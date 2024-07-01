% script 2
clear 
close all

% dati
n=10;
autovalori=1:n;
Q=randn(n,n);
A=Q*diag(autovalori)/Q;

% setta uguale a 1 per avere ulteriori info sulla convergenza di ITpotenze
info =0;

maxit=500;
tol=1e-8;
x0=rand(n,1);x0=x0/norm(x0);

fprintf('Approx autovalore piu piccolo in modulo\n')
figure(1)
[x,lambda,~]=ITpotenze(A,0,x0,maxit,tol,info,autovalori(1));
semilogy( (autovalori(1)/autovalori(2)).^(1:40),'kx')
legend('residuo','errore','fattore asintot')


fprintf('Approx secondo autovalore piu piccolo in modulo\n')
figure(2)
store_iter=[];

for mu=1.55:0.05:1.95
   [x,lambda,tot_iter]=ITpotenze(A,mu,x0,maxit,tol,info,autovalori(2));
   store_iter=[store_iter,tot_iter];
   fprintf('mu: %e, lambda:%e\n',mu,lambda)
   semilogy( abs( (autovalori(2)-mu)./(autovalori(1)-mu)).^(1:40),'kx')
   legend('residuo','errore','fattore asintot')
end

figure(3)
mu=1.55:0.05:1.95;
plot(abs( (autovalori(2)-mu)./(autovalori(1)-mu)),store_iter,'-*k')
xlabel('|\lambda_2 - \mu|/|\lambda_1-\mu|')
title('num di iterazioni rispetto al rapporto asintotico')

figure(4)
plot(mu,store_iter,'-*')
xlabel('\mu')
title('num di iterazioni rispetto a \mu ')