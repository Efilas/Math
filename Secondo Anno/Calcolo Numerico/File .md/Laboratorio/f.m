function A = f(n)

A = zeros(n);
for i = 1:n
    for j = 1:n
        A(i, j) = i*j;
    end
end