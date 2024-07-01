f=@(x) atan(x);
fp=@(x) 1./(1+x.^2);
[xn1,yn1,kn1]=newton1d(f,fp,1.3,1e-8,0,1e-8,100);
[xn2,yn2,kn2]=newton1d(f,fp,1.4,1e-8,0,1e-8,100);
[ind,xb,yb,kb,afinal,bfinal]=bisezione(f,-0.5,3.1,1e-8,0,1e-8,100,0);
%fplot(f,[-1,1]);