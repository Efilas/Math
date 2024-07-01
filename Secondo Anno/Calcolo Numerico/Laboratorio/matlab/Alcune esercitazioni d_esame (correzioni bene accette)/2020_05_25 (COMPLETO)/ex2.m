clear,clc,close all
fxw=@(x,w) (w.*exp(-x)+x)./(1+w);
x0=1; tol=1e-9; maxit=100; Wwin=[0,maxit+1];
omegas=linspace(0,3,32); omegas=omegas(2:end-1);
figure, hold on, title('Storia di convergenza al variare di ω')
xlabel('k'), ylabel('|x(k)−x(k-1)|')
for w=omegas
    phi=@(x) fxw(x,w);
    [X,err]=PuntoFisso(phi,x0,tol,maxit);
    plot(err); L=length(X);
    fprintf('ω=%d, #iter=%d, x(%d)=%d, |x(%d)−x(%d)|=%d\n',...
        w,L,L,X(end),L,L-1,abs(X(end)-X(end-1)))
    if Wwin(2)>L 
        Wwin=[w,L];
    end
end
fprintf('...\nAnd the winner is ω=%d (%d iterazioni)\n',Wwin(1),Wwin(2))