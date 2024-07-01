function [s] = pertab(n)
s=zeros(n);
x=1;y=x;
while x<=n
    while y<=n
        s(x,y)=x*y;
        y=y+1;
    end
    y=1;
    x=x+1;
end