function [x_min,xvec,fxvec]=minf(f,x0,tollr,tolla,tollf,kmax)

x=x0;
xold=x;
h=1e-8;
fx=f(x);
f1x=(f(x+h)-f(x-h))/(2*h);
fxvec=zeros(1,kmax);
xvec=fxvec;


for k=1:kmax

    x=xold-fx/f1x;
    fx=f(x);
   
    fprintf('k: %d, x_k: %e, |f(x_k)|: %e\n',k,x,abs(fx));
    xvec(k)=x;
    fxvec(k)=fx;


    % criterio di arresto su f
    if abs(fx)<=tollf 
        x_min = x;
        xvec=xvec(1:k);
        fxvec=fxvec(1:k);
        
        return 
    end
    
    % criterio di arresto su [a,b]
    if abs(x-xold)<= tolla+tollr*abs(xold) 
        x_min = x;
        xvec=xvec(1:k);
        fxvec=fxvec(1:k);
        
        return 
    end
    
    f1x=(f(x+h)-f(x-h))/(2*h);

    xold=x;


end
% se siamo arrivati qui vuol dire che abbiamo fatto tutte le iterazioni
x_min = x;
xvec=xvec(1:k);
fxvec=fxvec(1:k);
        
