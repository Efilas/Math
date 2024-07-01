n=10;
Q=randn(10,10);
A=Q*diag(1:10)/Q;
maxit=500;
tol=1e-8; 
x0=rand(n,1);
x0=x0/norm(x0);
[x,lambda]=potenze(A,x0,maxit,tol);