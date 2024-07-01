close all

%%%%%%%%%%%%%%%%%%%%%
%  Esercizio 2
%%%%%%%%%%%%%%%%%%%%%
fprintf('Convergenza spline per funzione di Runge\n')


f=@(x)(1./(1+x.^2));
alfa=-5;  beta=5;

figure(10)
fplot(f,[alfa,beta],'r--');
hold on

%n.1
t=linspace(alfa,beta,10000)';
for n=[6 8 10]
   x = linspace(alfa,beta,n+1)';
   s = spline(x,f(x),t);     % not-a-knot
   plot(t,s);
end
hold off
title('approssimazione spline not-a-knot')
legend('f','spline 6','spline 8','spline 10')

t=linspace(alfa,beta,1000000)';
fprintf('       k           Errore         ordine \n')
for k=1:10
    x=(alfa:(beta-alfa)/2^k:beta)';
    s=spline(x,f(x),t);
    Er(k)=max(abs(f(t)-s));
    if k>1
      p=(1/log(1/2))*log(Er(k)/Er(k-1));
      fprintf('k: %e, Err: %e, p: %e\n',k,Er(k),p);
    end
end


%n.2
fprintf(' Grafico spline e derivate \n')

n=10;
x=linspace(alfa,beta,n+1);
S=spline(x,f(x));

d1f=@(x)(-2*x./(1+x.^2).^2);
d2f=@(x)(-2./(1+x.^2).^2+8*x.^2./(1+x.^2).^3);
d3f=@(x)(24*x./(1+x.^2).^3 - 48*x.^3./(1+x.^2).^4);

figure(100)
subplot(1,4,1); fplot(f,[alfa,beta],'-'); hold on
subplot(1,4,2); fplot(d1f,[alfa,beta],'-'); hold on
subplot(1,4,3); fplot(d2f,[alfa,beta],'-'); hold on
subplot(1,4,4); fplot(d3f,[alfa,beta],'-'); hold on

rho=S.coefs;
drho=[3*rho(:,1),  2*rho(:,2), rho(:,3)];
d2rho=[6*rho(:,1), 2*rho(:,2)];
d3rho=6*rho(:,1);

                    Sval=ppval(S,t);        % valutazione spline
dS=mkpp(x,drho);    dSval=ppval(dS,t);      % valutazione der I spline
d2S=mkpp(x,d2rho);  d2Sval=ppval(d2S,t);    % valutazione der II spline
d3S=mkpp(x,d3rho);  d3Sval=ppval(d3S,t);    % valutazione der III spline

subplot(1,4,1); plot(t,Sval,'--'); title('Funzione'); hold off     % plot spline
subplot(1,4,2); plot(t,dSval,'--'); title('Derivata prima'); hold off    % plot der I spline
subplot(1,4,3); plot(t,d2Sval,'--'); title('Derivata seconda'); hold off   % plot der II spline
subplot(1,4,4); plot(t,d3Sval,'--'); title('Derivata terza'); hold off   % plot der III spline


% Es.3
fprintf(' Studio ordine di convergenza di tutte le derivate\n')
t=linspace(alfa,beta,1000000)';
i=0;
for n=2:10
   i=i+1;
   x=(alfa:1/2^n:beta)';
   S=spline(x,f(x));
   rho=S.coefs;
   drho=[3*rho(:,1) 2*rho(:,2) rho(:,3)]; d1S=mkpp(x,drho);
   d2rho=[6*rho(:,1)  2*rho(:,2)];        d2S=mkpp(x,d2rho);
   d3rho=6*rho(:,1);                      d3S=mkpp(x,d3rho);

   Er0(i)=max(abs(ppval(S,t)-f(t)));
   Er1(i)=max(abs(ppval(d1S,t)-d1f(t)));
   Er2(i)=max(abs(ppval(d2S,t)-d2f(t)));
   Er3(i)=max(abs(ppval(d3S,t)-d3f(t)));

   if (i>1)
      c0=1/log(1/2)*log(Er0(i)/Er0(i-1));
      c1=1/log(1/2)*log(Er1(i)/Er1(i-1));
      c2=1/log(1/2)*log(Er2(i)/Er2(i-1));
      c3=1/log(1/2)*log(Er3(i)/Er3(i-1));
      fprintf('k: %e, Err(0): %e, p(0): %e, Err(1): %e, p(1): %e, Err(2): %e, p(2): %e, Err(3): %e, p(3): %e\n',i,Er0(i),c0,Er1(i),c1,Er2(i),c2,Er3(i),c3);

   end

end