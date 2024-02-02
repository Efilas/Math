a = 201;
b = 20;

if (a <= 200 && a >= 100)
    if (b <= 200 && b >= 100)
        disp(a)
        disp(b)
    else 
        disp('b non e in [100, 200]')
    end
else
    disp('a e b non sono in [100, 200]')
end