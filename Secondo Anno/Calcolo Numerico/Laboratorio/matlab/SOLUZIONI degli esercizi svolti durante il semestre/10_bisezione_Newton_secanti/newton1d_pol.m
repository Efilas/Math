function [ind,x,fx,k,fxvec,xvec]=newton1d_pol(coeff,x0,tolla,tollr,tollf,kmax,stampe)

% Newton per polinomi: i coefficienti sono in coeff e rappresentano il
% polinomio
% p(x) = coeff(1)+coeff(2)*x+...+coeff(n+1)*x^n

x=x0;
xold=x;
l=length(coeff);

fx = coeff(l);
f1x= fx;
    
for ll=1:l-1
    fx = fx*x + coeff(l-ll);
    if ll<l-1
        f1x=f1x*x+fx;
    end
end

fxvec=zeros(1,kmax);
xvec=fxvec;

for k=1:kmax

    x=xold-fx/f1x;
    fx = coeff(l);
    f1x= fx;
    
    for ll=1:l-1
        fx = fx*x + coeff(l-ll);
        if ll<l-1
            f1x=f1x*x+fx;
        end
    end
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
    
    xold=x;

end
% se siamo arrivati qui vuol dire che abbiamo fatto tutte le iterazioni
ind=-1;
xvec=xvec(1:k);
fxvec=fxvec(1:k);