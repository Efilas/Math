% esercizio 1
clear all
close all

% definisco la funzione e l'intervallo in cui approssimarla
f = @(x)(1./(1+x.^2));
alfa=-5; beta=5;

fprintf('Approssimazione mediante interpolazione\n')

i=1;
for n=[4 8 12 14]


   subplot(1,4,i)
   %plotto la funzione
   fplot(f,[alfa,beta],'k--');
   hold on


   % Calcolo dei nodi equispaziati e li plotto
   x=linspace(alfa,beta,n+1)';   % nodi di interpolazione
   plot(x,f(x),'*b');

   % Calcolo dei coeff. del polinomio interpolante
   y = f(x);
   ap = get_polyn(x,y);

   % Grafico del polinomio interpolante
   t = linspace(alfa,beta,1000);   % punti di valutazione per il grafico
   yp= polyval(ap,t);
   plot(t,yp,'b-');
   
   % faccio la stessa cosa ma con i nodi di Chebyshev
   xcap=cos( (2*(0:n)+1)./(2*n+2)*pi)';
   x=(alfa+beta)/2+(beta-alfa)/2*xcap;
  
   plot(x,f(x),'*r');

   % Calcolo dei coeff. del polinomio interpolante
   y = f(x);
   ac = get_polyn(x,y);

   yc= polyval(ac,t);
   plot(t,yc,'r-');
   legend('funzione','nodi equidistanti','polinomio (equi)','nodi Cheb', 'polinomio (Cheb)')
   title(['n: ',num2str(n)])


   
   % Stima dell'errore
   t = linspace(alfa,beta,10000);   % punti di valutazione per l'errore
   pp=polyval(ap,t);
   Errore_equi = max( abs(f(t)-pp));
   pc=polyval(ac,t);
   Errore_cheb = max( abs(f(t)-pc));
   fprintf('n: %d, Err (equi): %e, Err (cheb): %e\n', n, Errore_equi, Errore_cheb)

   i=i+1;

end
