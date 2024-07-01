% Esercizio 4 

alfa=-1; beta=1;
n=14; n1=n+1;
N=100;
x=linspace(alfa,beta,n1)';      % nodi equispaziati
xcap = cos( (2*(0:n)+1)./(2*n+2)*pi)';      % nodi di cheb su [-1,1] (non ho bisogno di traslarli)

w=@(t,x,N,n1)( prod( t*ones(1,n1)-ones(N,1)*x',2));
t=linspace(alfa,beta,N)';

% plot con nodi equispaziati
plot(t, w(t,x,N,n1))
hold on
% plot con nodi di cheb
plot(t, w(t,xcap,N,n1),'r')
title('Polinomio nodale')
legend('nodi equispaz.','nodi Cheb')

fprintf('max (equi): %e, max (cheb): %e\n',max(abs(w(t,x,N,n1))),max(abs(w(t,xcap,N,n1))))