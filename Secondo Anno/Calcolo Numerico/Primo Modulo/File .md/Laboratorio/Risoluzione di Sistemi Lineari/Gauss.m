function [x] = Gauss(A,b)

n = length(b);

for k = 1:n-1
    for i = k+1:n
        m(i) = A(i,k)/A(k,k);
        for j = k+1:n
            A(i,j) = A(i,j) - m(i)*A(k,j);
        end
        b(i) = b(i) - m(i)*b(k);
    end
end

U = triu(A);

x = RisolviTriangSupCorretto(U,b);