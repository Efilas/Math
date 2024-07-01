function [ind,x,y,k,afinal,bfinal,yvec,xvec]=bisezione(f,a,b,tolla,tollr,tollf,kmax,stampe)

fa = f(a);
yvec=zeros(kmax,1);
xvec=yvec;
for k=1:kmax

    x=(a+b)/2;
    y=f(x);

    % stampe se necessario
    if stampe
        fprintf('k: %d, x_k: %e, f(x_k): %e, a: %e, b: %e, b-a: %e\n',k,x,y,a,b,b-a);
        yvec(k)=y;
        xvec(k)=x;
    end

    % criterio di arresto su f
    if abs(y)<=tollf 
        ind=2; 
        afinal=a;
        bfinal=b;
        yvec=yvec(1:k);
        xvec=xvec(1:k);
        
        return 
    end
    
    % criterio di arresto su [a,b]
    if b-a<= tolla+tollr*abs(a) 
        ind=1; 
        afinal=a;
        bfinal=b;
        yvec=yvec(1:k);
        xvec=xvec(1:k);
        
        return 
    end

    % iterazione vera e propria
    if fa*y<0
        b=x;
    else
        a=x; 
        fa =y;
    end


end

% se siamo arrivati qui vuol dire che abbiamo fatto tutte le iterazioni
ind=-1;
afinal=a;
bfinal=b;
yvec=yvec(1:k);
xvec=xvec(1:k);
        
