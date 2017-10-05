function similarity = levenshteinSim (x , y)
%{
calculate similarity between two genes (x & y) using the 
Levenshtein Distance
%}

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