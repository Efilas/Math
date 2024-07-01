% script3

f=@(x) x.^3-2*x-5;
f1=@(x) 3*x.^2-2;

a=2;
b=3;
tolla=1e-8;
tollr=0;
tollf=1e-8;
stampe=1;
kmax=100;
x0=2;
x1=3;
xexact=2.094551481542328;

disp('Secanti')
[ind,x,fx,k,fxvec_sec,xvec_sec]=secanti(f,x0,x1,tolla,tollr,tollf,kmax,stampe);
eold=abs(xvec_sec(1)-xexact);
for k=2:length(xvec_sec)
    e=abs(xvec_sec(k)-xexact);
    p=log(e)/log(eold);
    eold=e;
    fprintf('k: %d, p: %e\n',k,p)
end

disp('Newton')
[ind,x,fx,k,fxvec_newton,xvec_newton]=newton1d(f,f1,x1,tolla,tollr,tollf,kmax,stampe);
eold=abs(xvec_newton(1)-xexact);
for k=2:length(xvec_newton)
    e=abs(xvec_newton(k)-xexact);
    p=log(e)/log(eold);
    eold=e;
    fprintf('k: %d, p: %e\n',k,p)
end

disp('Bisezione')
[ind,x,y,k,afinal,bfinal,fxvec_bis,xvec_bis]=bisezione(f,a,b,tolla,tollr,tollf,kmax,stampe);
eold=abs(xvec_bis(1)-xexact);
for k=2:length(xvec_bis)
    e=abs(xvec_bis(k)-xexact);
    p=log(e)/log(eold);
    eold=e;
    fprintf('k: %d, p: %e\n',k,p)
end

disp('Newton - Horner')
coeff(1)=-5;
coeff(2)=-2;
coeff(3)=0;
coeff(4)=1;
[ind,x,fx,k,fxvec_newton_horn,xvec_newton_horn]=newton1d_pol(coeff,x1,tolla,tollr,tollf,kmax,stampe);


semilogy(abs(fxvec_sec),'b*-')
hold on
semilogy(abs(fxvec_newton),'ro-')
semilogy(abs(fxvec_bis),'k>-')
semilogy(abs(fxvec_newton_horn),'m<-')
legend('Secanti','Newton','Bisezione','Newton - Horner')
title('Residuo')


