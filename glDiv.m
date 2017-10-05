function diversity = glDiv (x , y )
%{
calculate diversity between two genes (x & y) using the 
Gower-Legendre (Dice) measure
%}

intersec = length(intersect(x,y));
un = length(union(x,y));
similarity  = intersec /(intersec + 1/2*(un-intersec));

% convert similarity to diversity
diversity = 1 - similarity;
end