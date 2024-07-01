f=@(t) (t.*((sin(t)).^2)).*exp(-t);
F=@(x) x-integral(f,-1,x);
fplot(F,[-3,3]);