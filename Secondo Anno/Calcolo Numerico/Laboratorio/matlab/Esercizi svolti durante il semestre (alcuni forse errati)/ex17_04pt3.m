f=@(x) x.*exp(-x).*cos(2.*x);
Ir=(3*(exp(-2*pi)-1)-10*pi*exp(-2*pi))/25;
m=10;
a=0; b=2*pi;
I2m=CavalieriSimpson(a,b,m,f);
div=abs(Ir-I2m);
disp(div);

rr=[];
inn=2:12;
for k=inn
    rr(k-1)=log(abs(Ir-CavalieriSimpson(a,b,2^k,f))/...
    abs(Ir-CavalieriSimpson(a,b,2^(k-1),f)))/log(1/2);
end

plot(inn,rr);