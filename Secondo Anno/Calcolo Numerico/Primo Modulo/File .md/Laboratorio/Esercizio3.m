n = 10;
a = rand(n, 1);
b = rand(n, 1);

%prodotto scalare
prod = 0;
for i = 1:length(a)
    prod = prod + a(i)*b(i);
end 
disp(prod);

%per farlo in maniera più facile
prod2 = a'*b;
disp(prod2)