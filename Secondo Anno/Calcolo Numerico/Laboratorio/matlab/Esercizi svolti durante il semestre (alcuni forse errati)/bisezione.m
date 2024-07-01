function [ind,x,y,k,afinal,bfinal]=bisezione(f,a,b,tolla,tollr,tollf,kmax,stampe)
fa=f(a);
for k=1:kmax
    x=(a+b)/2;
    y=f(x);
    if abs(y)<=tollf
        ind=2;
        afinal=a; 
        bfinal=b;
        return
    end
    if b-a<=tolla+tollr*abs(a)
        ind=1;
        afinal=a; 
        bfinal=b;
        return
    end
    if fa*y<0
        b=x;
    else
        a=x;
        fa=y;
    end
    if stampe
        fprintf('k: %g, x: %d, y: %d, a: %d, b: %d, b-a: %d\n',k,x,y,a,b,b-a);
    end
end
if k==kmax
    ind=-1;
end
afinal=a; 
bfinal=b;