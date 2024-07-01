%script
f=@(x)(x.^2.*sin(x).*cos(x));
alpha=-pi; beta=pi;


i=1;
for n=6 : 4 :14
    subplot(1,3,i) 
    fplot(f,[alpha,beta],'r--')
    hold on


% Calcolo del polinomio interpolante di grado n

   x = linspace(alpha,beta,n+1)';    %vettore colonna
   
   plot(x, f(x),'*');
   y = f(x);
   % calcolo i coefficienti del polinomio interpolante
   a = get_polyn(x,y);
   % e poi lo valuto nei punti in y
   t = linspace(alpha,beta,100);
   yp=polyval(a,t);
   
   plot(t,yp,'k');
   
   % Calcolo dell'errore
   t = linspace(alpha,beta,10000);
   Err_max=max(abs(f(t)-polyval(a,t))); 
   fprintf('Approssimazione mediante interpolazione\n')

   fprintf('n: %d, Errore: %e\n',n,Err_max)

   fprintf('Approssimazione mediante minimi quadrati\n')
   m=n-2; 
   a = get_polyn_ls(x,y,m);
   t = linspace(alpha,beta,100);
   yp=polyval(a,t);
   plot(t,yp,':k');

   title(['n: ',num2str(n)])
   legend('funzione','punti di interpolazione','polinomio interpolante','polinomio di grado m')

   % Calcolo dell'errore
   t = linspace(alpha,beta,10000);
   Err_max=max(abs(f(t)-polyval(a,t)));
   fprintf('n: %d, m: %d, Errore: %e\n',n,m,Err_max)




   i=i+1;

end
   

