function u=Thomas(A,f)
% applico l'algoritmo di Thomas per risolvere il sistema lineare 
%
% Au=f

n=length(f);
% estraggo gli elementi, in modo che gli indici corrispondano!
a=diag(A);
b=[0;diag(A,-1)];
c=diag(A,1);

% prealloco
alpha=zeros(n,1);
beta=zeros(n-1,1);

% inizio la ricorrenza
alpha(1)=a(1);
for i=2:n
    beta(i)=b(i)/alpha(i-1);
    alpha(i)=a(i)-beta(i)*c(i-1);
end

% forward substitution
y(1)=f(1);
for i=2:n
    y(i,1)=f(i) - beta(i)*y(i-1,1);
end

% backward substitution
u(n,1)=y(n)/alpha(n);
for i=n-1:-1:1
    u(i,1) = (y(i)-c(i)*u(i+1))/alpha(i);
end

