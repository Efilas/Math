f = @(x)(1./(1+x.^2));
val=[6,10,14];
for n=val
    xh=(5.*cos((2*(0:n)+1)./(2*n+2)*pi))';
    x=linspace(-5,5,n+1)';
    fprintf('%d punti:\n',n+1)
    figure
    hold on
    fplot(f,[-5,5],'k--');
    y=f(x);
    yh=f(xh);
    [a] = getpolyn(x,y,n+1);
    [ah] = getpolyn(xh,yh,n+1);
    t=linspace(-5,5,100); 
    yp=polyval(a,t);
    yph=polyval(ah,t);
    plot(x,f(x),'ko')
    plot(xh,f(xh),'kx')
    plot(t,yp) 
    plot(t,yph)
    legend('funzione', ...
        strcat(string(n+1),' punti di interpolazione equispaziati'), ...
        strcat(string(n+1),' punti di interpolazione di Chebyshev'), ...
        'polinomio interpolante dagli o', ...
        'polinomio interpolante dagli x');
    fprintf('Errore: ~%e\n', max(abs(f(t)-yp)));
    fprintf('Errore: ~%e\n', max(abs(f(t)-yph)));
end