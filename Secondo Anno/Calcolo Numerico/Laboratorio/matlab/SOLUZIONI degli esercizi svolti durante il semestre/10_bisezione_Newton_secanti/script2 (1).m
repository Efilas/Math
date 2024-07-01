%script2

f=@(x) atan(x);
f1=@(x) 1./(1+x.^2);
fplot(f,[-10 10]);

a=-0.5;
b=3.1;
tolla=1e-8;
tollr=0;
tollf=1e-8;
stampe=1;
kmax=100;


x0=1.3;
disp('Newton - x0: 1.3')
[ind,x,fx,k]=newton1d(f,f1,x0,tolla,tollr,tollf,kmax,stampe);

x0=1.4;
disp('Newton - x0: 1.4')
[ind,x,fx,k]=newton1d(f,f1,x0,tolla,tollr,tollf,kmax,stampe);

disp('Bisezione')
[ind,x,y,k,afinal,bfinal,yvec]=bisezione(f,a,b,tolla,tollr,tollf,kmax,stampe);
