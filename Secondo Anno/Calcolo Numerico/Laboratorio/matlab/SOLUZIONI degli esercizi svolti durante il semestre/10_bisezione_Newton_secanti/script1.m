% script 1
clear all
close all

% f = alpha*sin(x).*cos(x)-x.^3;
% f' = alpha*(-sin^2(x)+cos^2(x))-3x.^2;
% f'(0) = -alpha

f1=@(x) sin(x).*cos(x)-x.^3;
f2=@(x) -1e-7*sin(x).*cos(x)-x.^3;
f3=@(x) 1e7*sin(x).*cos(x)-x.^3;

subplot(1,3,1)
fplot(f1,[-1 1])
title('alpha=1')

subplot(1,3,2)
fplot(f2,[-1 1])
title('alpha=-1e-7')

subplot(1,3,3)
fplot(f3,[-1 1])
title('alpha=1e7')


a=-0.2;
b=0.1;
tolla=0;
tollr=0;
tollf=1e-9;
kmax=1000;
stampe=1;

disp('alpha=1')
[ind,x,y,k,afinal,bfinal]=bisezione(f1,a,b,tolla,tollr,tollf,kmax,stampe);

disp('alpha=-1e-7')
[ind,x,y,k,afinal,bfinal]=bisezione(f2,a,b,tolla,tollr,tollf,kmax,stampe);

disp('alpha=1e7')
[ind,x,y,k,afinal,bfinal]=bisezione(f3,a,b,tolla,tollr,tollf,kmax,stampe);


% data una tolleranza sull'errore tol, ci vogliono k>log2(|a+b|*tol)
% iterazioni per convergere a quella tolleranza
[ind,x,y,k,afinal,bfinal,yvec]=bisezione(f1,a,b,tolla,tollr,tollf,kmax,stampe);
figure
semilogy(abs(yvec))
