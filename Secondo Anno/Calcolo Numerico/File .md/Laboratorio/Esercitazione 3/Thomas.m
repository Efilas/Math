function u = Thomas(A,f)

a = diag(A);
b = diag(A,-1);
c = diag(A,1);

n =length(f);

alpha = zeros(n,1);
beta = zeros(n-1,1);

alpha(1,1) = a(1,1);
for i = 1:1:n-1
    beta(i) = b(i)/alpha(i);
    alpha(i+1) = a(i+1)-beta(i)*c(i);
end

y = zeros(n,1);
y(1) = f(1);

for j = 2:1:n
    y(j) = f(j) - beta(j-1)*y(j-1);
end

u = zeros(n,1);
u(n) = y(n)/alpha(n);

for j = n-1:-1:1
    u(j) = (y(j)-c(j)*u(j+1))/alpha(j);
end


