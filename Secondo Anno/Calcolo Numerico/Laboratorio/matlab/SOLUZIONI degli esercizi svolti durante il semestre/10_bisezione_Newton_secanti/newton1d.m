function [ind,x,fx,k,fxvec,xvec]=newton1d(f,f1,x0,tolla,tollr,tollf,kmax,stampe)

x=x0;
xold=x;
fx=f(x);
f1x=f1(x);
fxvec=zeros(1,kmax);
xvec=fxvec;

for k=1:kmax

    x=xold-fx/f1x;
    fx=f(x);

    % stampe se necessario
    if stampe
        fprintf('k: %d, x_k: %e, f(x_k): %e\n',k,x,fx);
        xvec(k)=x;
        fxvec(k)=fx;
    end

    % criterio di arresto su f
    if abs(fx)<=tollf 
        ind=2; 
        xvec=xvec(1:k);
        fxvec=fxvec(1:k);
        
        return 
    end
    
    % criterio di arresto su [a,b]
    if abs(x-xold)<= tolla+tollr*abs(xold) 
        ind=1; 
        xvec=xvec(1:k);
        fxvec=fxvec(1:k);
        return 
    end
    
    f1x=f1(x);
    xold=x;

end
% se siamo arrivati qui vuol dire che abbiamo fatto tutte le iterazioni
ind=-1;
xvec=xvec(1:k);
fxvec=fxvec(1:k);
        