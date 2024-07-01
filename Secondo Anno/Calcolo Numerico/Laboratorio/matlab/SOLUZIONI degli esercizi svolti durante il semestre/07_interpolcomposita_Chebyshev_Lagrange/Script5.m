% Esercizio 5 
clear all
close all

alfa=-5; beta=5;
n=10; n1=n+1;
N=100;
t=linspace(alfa,beta,N)';
x=linspace(alfa,beta,n1)';      % nodi equispaziati

subplot(1,2,1)
for i=1:n1
   xm=x; xm(i)=[];
   
   % i-esimo polin caratteristico di Lagrange 
   L=@(t)( prod( t*ones(1,n)-ones(N,1)*xm',2)/prod(x(i)-xm));
   plot(t, L(t))
   hold on
end
title('Polinomi di Lagrange - nodi equispaziati')
legend('L0','L1','L2', 'L3', 'L4', 'L5', 'L6', 'L7', 'L8', 'L9', 'L10')

subplot(1,2,2)
xcap=cos( (2*(0:n)+1)./(2*n+2)*pi)';
x=(alfa+beta)/2+(beta-alfa)/2*xcap; % nodi di Cheb
for i=1:n1
   xm=x; xm(i)=[];
   % i-esimo polin caratteristico di Lagrange 
   L=@(t)( prod( t*ones(1,n)-ones(N,1)*xm',2)/prod(x(i)-xm));
   plot(t, L(t))
   hold on
end
title('Polinomi di Lagrange - nodi di Chebyshev')
legend('L0','L1','L2', 'L3', 'L4', 'L5', 'L6', 'L7', 'L8', 'L9', 'L10')

