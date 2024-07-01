clear;clc;close all
phi=@(x) exp(-x);
x0=1; tol=1e-9; maxit=100;
[X,err]=PuntoFisso(phi,x0,tol,maxit);
for k=1:length(X)
    fprintf('k=%d, x(%d)=%d, |x(%d)-x(%d)|=%d\n',k-1,k,X(k),k,k-1,err(k))
end