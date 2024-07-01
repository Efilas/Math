function [u]=Thomas(A,f)
n=length(f);
a=diag(A); b=diag(A,-1); c=diag(A,1);
ah=zeros(n,1);
ah(1)=a(1);
bh=zeros(n-1,1);
for k=2:n
    bh(k)=b(k-1)/ah(k-1); %alternativa: b=[0;diag(A,-1)];
    ah(k)=a(k)-bh(k)*c(k-1);
end
y=zeros(n,1);
y(1)=f(1);
for k=2:n
    y(k)=f(k)-bh(k)*y(k-1);
end
u=zeros(n,1);
u(n)=y(n)/ah(n);
for k=n-1:-1:1
    u(k)=(y(k)-c(k)*u(k+1))/ah(k);
end
disp("divergenza: "+string(norm(f-A*u)))
end