function result = whileTest(i)
result = 2;
n = 10;
while ( n > i)
    result = result +1;
    n = n - 1;
    if (n == 8)
        return;
    end
end

end