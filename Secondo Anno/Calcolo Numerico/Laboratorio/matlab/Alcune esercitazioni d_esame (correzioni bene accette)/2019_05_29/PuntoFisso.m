function x=PuntoFisso(phi,x0,maxit,tola,tolr,tolf,Cq)
hist(1)=x0;
hist(2)=phi(x0);
for k=1:maxit
    xk=hist(k);
    xk1=hist(k+1);
    if abs(xk1-xk)<tolf || abs(xk1-xk)<=tolr*abs(xk)+tola
        x=xk1;
        break
    end
    hist(k+2)=phi(xk1);
    x=hist(k+2);
end
if Cq==true
    plot(hist)
end