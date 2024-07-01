f = @(x)(x.^2.*sin(x).*cos(x));
val=[6,10,14];
for n=val
    fprintf('%d punti:\n',n+1)
    figure
    hold on
    fplot(f,[-pi,pi],'r--');
    x=linspace(-pi,pi,n+1)';
    y=f(x);
    [a] = getpolyn(x,y,n);
    t=linspace(-pi,pi,100); 
    yp=polyval(a,t);
    plot(x,f(x),'o')
    plot(t,yp); 
    legend('funzione', ...
        strcat(string(n+1),' punti di interpolazione'), ...
        'polinomio interpolante');
    fprintf('Errore: ~%e\n', max(abs(f(t)-yp)));
end