function [x,its,resnormvec]=Jacobi(A,f,x0,maxit,tol)
P=diag(diag(A));
its=0;
x=x0;
r=f-A*x;
nr0=norm(r);
resnormvec=zeros(maxit,1);
for k=1:maxit
    x=x+r./diag(P);
    r=f-A*x;
    its=k;
    resnormvec(k)=norm(r)/nr0;
    if resnormvec(k)<tol
        break
    end
end