function similarity = levenshteinDistance(x , y)

similarity = 0;
if (length (x) <= length (y))
    len = length (x);
else
    len = length (y);
end
for i=1 : len
    if( x(i) == y(i))
        similarity = similarity + 1;
    end
end
end