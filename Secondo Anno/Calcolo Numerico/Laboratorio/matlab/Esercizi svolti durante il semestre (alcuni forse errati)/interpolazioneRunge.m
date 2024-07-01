f = @(x)(1./(1+x.^2));
val=[4,8,12,14];
for n=val
    fprintf('%d punti:\n',n+1)
    figure
    hold on
    fplot(f,[-5,5],'r--');
    x=linspace(-5,5,n+1)';
    y=f(x);
    [a] = getpolyn(x,y,n+1);
    t=linspace(-5,5,100); 
    yp=polyval(a,t);
    plot(x,f(x),'o')
    plot(t,yp); 
    legend('funzione', ...
        strcat(string(n+1),' punti di interpolazione'), ...
        'polinomio interpolante');
    fprintf('Errore: ~%e\n', max(abs(f(t)-yp)));
end