function [x] = Thomas2(A, f)
n = length(f);
m = zeros(n-1,1);
for i = 1:n-1
    m(i) = A(i+1,i) / A(i,i);
    A(i+1, i+1) = A(i+1,i+1) - m(i) * A(i, i+1);
    f(i+1) = f(i+1) - m(i) * f(i); 
end

x = zeros(n,1);
x(n) = f(n) / A(n,n);
for i = n-1:-1:1
    x(i) = (f(i) - A(i, i+1) * x(i+1)) / A(i,i);
end