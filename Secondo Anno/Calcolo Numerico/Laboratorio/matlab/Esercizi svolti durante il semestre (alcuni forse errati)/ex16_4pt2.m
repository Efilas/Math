%PLOT RUNGE
a=-5;b=5;
fun = @(y) 1./(1+y.^2);
fplot(fun,[a,b]);
hold on
for n=[7,9,11]
    x=linspace(a,b,n+1);
    t=linspace(a,b);
    s=spline(x,fun(x),t);
    plot(t,s);
end

%ANALISI DELL'ERRORE
figure
hold on
err=[];
p=[];
for k=1:10
    x=a:(b-a)/(2^k):b;
    t=linspace(a,b);
    s=spline(x,fun(x),t);
    err(k)=max(abs(fun(t)-s));
    if k>1
        p(k-1)=log(err(k)/err(k-1))/log(1/2);
    end
end
disp(p);
plot(1:length(err),err);

% f=1/(1+x2) f'=-(2x/(1+x2))2 f''=(-4x-3)/(1+x2)2
S=spline(x,f(x));
rho=S.coefs;
drho = [3*rho(:,1) 2*rho(:,2) rho(:,3)]; 
d2rho = [6*rho(:,1) 2*rho(:,2)];
d3rho = 6*rho(:,1);
dS = mkpp(x,drho); % costruisce la struttura dai coeff.
dSval = ppval(dS,z); % valuta la spline dS nei punti z