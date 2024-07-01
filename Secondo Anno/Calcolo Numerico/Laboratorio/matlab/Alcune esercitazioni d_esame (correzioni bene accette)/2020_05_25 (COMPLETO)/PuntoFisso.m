function [X,err]=PuntoFisso(phi,x0,tol,maxit)
X(1)=x0;
for k=2:maxit
    X(k)=phi(X(k-1));
    err(k-1)=abs(X(k)-X(k-1));
    if err(k-1)<tol
        break
    end
end
err(end+1)=abs(X(end)-X(end-1));