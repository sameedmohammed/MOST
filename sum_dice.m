function sim = sum_dice(x)
%{  
calculate similarity value (sim) for a single chromosome (x)
AGGREGATION METHOD: Sum
PAIRWISE SIMILARITY MEASURE: Gower-Legendre (Dice)
%}

sim = 0;

% store locations of beginnings and ends of genes (marked by zeros)
delim1 = find (x == 0);
delim = [0,delim1];

% sum up all the similarity values for each pair of genes
for i = 1 : (length(delim)-2)
    for j = i+1 : (length(delim)-1)
        if(delim(i)+1 == delim(i+1) || delim(j)+1 == delim(j+1))
            sim = sim + 0;
        else
            sim = sim + glSim (x((delim(i)+1):(delim(i+1)-1)),x((delim(j)+1):(delim(j+1)-1)));
        end
    end
end
end

