function [s] = prodtabmod(n)
o = n;
s = zeros(n);

for c = 1:o
    for r = 1:o
        s(r,c) = mod((r*c),n);
    end
end