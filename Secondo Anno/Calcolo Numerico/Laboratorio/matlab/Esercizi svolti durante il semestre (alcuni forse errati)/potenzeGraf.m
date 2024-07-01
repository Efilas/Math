function [x,lambda,e,bho]=potenzeGraf(A,x0,maxit,tol,L1,L2)
x=x0;
y=A*x;
for i=0:maxit
    lambda=x'*y;
    e(i+1)=abs(lambda-L1);
    bho(i+1)=(L2/L1)^i;
    r=A*x-lambda*x;
    nr=norm(r);
    nl=abs(lambda);
    disp([i,nr,nl]);
    if nr/nl<tol
        break
    end
    x=y/norm(y);
    y=A*x;
end
