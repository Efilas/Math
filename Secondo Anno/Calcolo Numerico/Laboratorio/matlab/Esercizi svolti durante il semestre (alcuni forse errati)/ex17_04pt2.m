f=@(x) x.*exp(-x).*cos(2.*x);
Ir=(3*(exp(-2*pi)-1)-10*pi*exp(-2*pi))/25;
m=100;
a=0; b=2*pi;
I1m=TrapeziComp(a,b,m,f);
div=abs(Ir-I1m);
disp(div);

conv = @(x) log(abs(Ir-TrapeziComp(a,b,2^x,f))./...
    abs(Ir-TrapeziComp(a,b,2^(x-1),f)))./log(1/2);
rr=[];
inn=2:20;
for k=inn
    % rr(k-1)=log(abs(Ir-TrapeziComp(a,b,2^k,f))/...
    % abs(Ir-TrapeziComp(a,b,2^(k-1),f)))/log(1/2);
    rr(k-1)=conv(k);
end

plot(inn,rr);