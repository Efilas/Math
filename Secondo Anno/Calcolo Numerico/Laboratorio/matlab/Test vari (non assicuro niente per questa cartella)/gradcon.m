function [x]=gradcon(A,b,tol,maxit)
x=zeros(size(b));
r=b-A*x;
p=r;
rh=norm(r);
rh0=rh;
its=0;
err=[];
while its<maxit && rh>tol*rh0
    its=its+1;
    w=A*p;
    ah=(rh^2)/(p'*w);
    x=x+ah*p;
    r=r-ah*w;
    bh=norm(r)^2/rh;
    rh=norm(r);
    p=r+bh*p;
    err(its)=norm(A*x-b);
end
plot(1:length(err),err)