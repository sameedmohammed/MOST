function similarity = glSim (x , y )
%{
calculate similarity between two genes (x & y) using the 
Gower-Legendre (Dice) measure
%}

intersec = length(intersect(x,y));
un = length(union(x,y));
similarity  = intersec /(intersec + 1/2*(un-intersec));
end