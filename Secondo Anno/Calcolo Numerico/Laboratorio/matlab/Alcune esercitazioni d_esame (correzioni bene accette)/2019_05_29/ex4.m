f=@(x) exp(1-x)-1;
df=@(x) -exp(1-x);
a=-1;b=10;
%fplot(f,[a,b])
maxit=30; 
tola=1e-8; 
tolr=1e-8;
tolf=1e-9;
phi=@(x) exp(1-x)+x-1;
x0=3;

% PF vs N
figure 
hold on
xPF=PuntoFisso(phi,x0,maxit,tola,tolr,tolf,1);
xN=Newton(f,df,x0,maxit,tola,tolr,tolf,1);
legend('Punto Fisso','Newton')

% PF con vari x0
X0=[0,2,4,6,8];
figure 
hold on
for k=1:length(X0)
    xPF=PuntoFisso(phi,X0(k),maxit,tola,tolr,tolf,1);
end
title('storia di convergenza al variare di x0'), xlabel('iterazioni'), ylabel('errore')
legend(string(X0))