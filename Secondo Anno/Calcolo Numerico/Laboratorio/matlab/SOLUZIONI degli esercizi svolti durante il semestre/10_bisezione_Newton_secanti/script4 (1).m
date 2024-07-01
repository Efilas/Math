% Script 4

fint = @(t) exp(-t).*(t-1);
% integrando per parti abbiamo che 
% fint(x)=-x*exp(-x)
% quindi derivando abbiamo che 
f1int = @(x) exp(-x).*(x-1);  


x=linspace(0,5);

y=zeros(1,length(x));
for k=1:length(x)
    y(k)=Cavalieri_Simpson(0,x(k),20,fint);
end
plot(x,y)
hold on
fplot(f2int,[0 5],'r')

% il minimo è vicino a x=1
x0=1.1;
tollr=1e-10;
tolla=tollr;
tollf=tollr;
kmax=100;
[x_min,xvec,fxvec]=minf(f1int,x0,tollr,tolla,tollf,kmax);

f_min=Cavalieri_Simpson(0,x_min,20,fint);
hold on
plot(x_min,f_min,'or')
title('Funzione integranda e minimo')

figure
semilogy(abs(fxvec))
title('Residuo')
