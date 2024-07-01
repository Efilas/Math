function [x,y,k]=newton1d(f,fp,x,tolla,tollr,tollf,kmax)
for k = 1:kmax
    xv=x;
    x=x-f(x)/fp(x);
    y=f(x);
    if abs(y)<=tollf
        return
    end
    if abs(x-xv)<=tolla+tollr*abs(x)
        return
    end
end