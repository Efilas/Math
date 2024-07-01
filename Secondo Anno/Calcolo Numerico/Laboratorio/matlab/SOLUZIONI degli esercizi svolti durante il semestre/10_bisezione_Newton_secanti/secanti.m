function [ind,x,fx,k,fxvec,xvec]=secanti(f,x0,x1,tolla,tollr,tollf,kmax,stampe)

x=x1;
xold=x0;
fx=f(x);
fxold=f(xold);
fxvec=zeros(1,kmax);
xvec=fxvec;

for k=1:kmax

    q=(fx-fxold)/(x-xold);
    xold=x;
    x=x-fx/q;

    fxold=fx;
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

    
end
% se siamo arrivati qui vuol dire che abbiamo fatto tutte le iterazioni
ind=-1;
xvec=xvec(1:k);
fxvec=fxvec(1:k);
        