n = 6;
rng(1);
U = triu(randn(n));
y = (-1).^(1:n)';
x = RisolviTriangSupCorretto(U,y);
disp(norm(y - U*x));
x_true = U\y;
disp(norm(x-x_true)/norm(x_true));