function [x,its,resnormvec]=GaussSeidel(A,f,x0,maxit,tol)
P=tril(A);
its=0;
x=x0;
r=f-A*x;
nr0=norm(r);
resnormvec=zeros(maxit,1);
for k=1:maxit
    Pinv=RisolviTriangSup(P',r); %%%%SBAGLIATO RIPROGAMMARLO
    x=x+Pinv';
    r=f-A*x;
    its=k;
    resnormvec(k)=norm(r)/nr0;
    if resnormvec(k)<tol
        break
    end
end