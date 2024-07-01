f = @(x)(1./(1+x.^2));
val=10;
for n=val
    xh=(5.*cos((2*(0:n)+1)./(2*n+2)*pi))';
    x=linspace(-5,5,n+1)';
    fprintf('%d punti:\n',n+1)
    figure
    hold on
    %fplot(f,[-5,5],'r--');
    y=f(x);
    yh=f(xh);
    [a] = getpolyn(x,y,n+1);
    [ah] = getpolyn(xh,yh,n+1);
    t=linspace(-5,5,200); 
    yp=polyval(a,t);
    yph=polyval(ah,t);
    %plot(x,f(x),'o')
    %plot(xh,f(xh),'x')
    plot(t,f(t)-yp) 
    plot(t,f(t)-yph)
    legend('f-pI',...
        'f-pC');
    %fprintf('Errore: ~%e\n', max(abs(f(t)-yp)));
    %fprintf('Errore: ~%e\n', max(abs(f(t)-yph)));
end