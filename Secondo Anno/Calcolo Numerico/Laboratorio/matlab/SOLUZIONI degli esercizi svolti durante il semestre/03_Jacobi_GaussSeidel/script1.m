% script1
close all

% costruisco i dati
n=10;
[A,f] = poisson2d(n);

% inizializzo i parametri di jacobi
x0=zeros(n^2,1);
maxit=5000;
tol=1e-8;
% chiamo Jacobi
[x,its,resnormvec]=Jacobi(A,f,x0,maxit,tol);

% chiamo gauss-Seidel
[xGS,itsGS,resnormvecGS]=GS(A,f,x0,maxit,tol);

% grafico la storia del residuo relativo
semilogy(resnormvec,'ro-')
hold on
semilogy(resnormvecGS,'k*-')
legend('Jacobi','Gauss-Seidel')

% grafico la soluzione
figure
mesh(reshape(x,n,n))

