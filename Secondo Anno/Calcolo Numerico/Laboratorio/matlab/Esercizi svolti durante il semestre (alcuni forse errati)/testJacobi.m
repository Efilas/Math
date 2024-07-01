n1=10;
[A,f]=poisson2d(n1);
x0=zeros(n1^2,1); 
maxit=5000;
tol=1e-8;
[xJ,itsJ,resnormvecJ]=Jacobi(A,f,x0,maxit,tol);
[xGS,itsGS,resnormvecGS]=GaussSeidel(A,f,x0,maxit,tol);
%%%%%%
semilogy(1:itsGS,resnormvecGS(1:itsGS),'g')
hold on
semilogy(1:itsJ,resnormvecJ(1:itsJ),'r')
legend('Gauss-Seidel','Jacobi')
