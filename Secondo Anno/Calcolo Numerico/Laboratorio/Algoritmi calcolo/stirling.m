function [x] = stirling(n)
x = zeros(n, 2);
t = 1;
e = exp(1);
sqrt_2pi = sqrt(2*pi);

for i = 1:n
    t = t * i;
    x(i, 1) = t;
    x(i, 2) = sqrt_2pi * sqrt(i) * (i/e)^i;
end