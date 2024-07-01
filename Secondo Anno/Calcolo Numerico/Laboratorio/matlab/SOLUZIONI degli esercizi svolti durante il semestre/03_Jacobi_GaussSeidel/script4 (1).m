% script1
close all

% costruisco i dati
n=10;
[A,f] = poisson2d(n);
A=full(A);

% genero P, N e B per Jacobi
P=diag(diag(A));
N=P-A;
Bjacobi=P\N;
% calcolo il raggio spettrale e lo plotto
rho_jacobi=max(abs(eig(Bjacobi)));
semilogy(rho_jacobi.^(1:500),'or-')

% genero P, N e B per Gauss-Seidel
P=tril(A);
N=P-A;
BGS=P\N;
% calcolo il raggio spettrale e lo plotto
rho_GS=max(abs(eig(BGS)));
hold on
semilogy(rho_GS.^(1:500),'k*-')
legend('Jacobi','Gauss-Seidel')


