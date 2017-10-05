function sim = sum_leven(x)
%{  
calculate similarity value (sim) for a single chromosome (x)
AGGREGATION METHOD: Sum
PAIRWISE SIMILARITY MEASURE: Levenshtein Distance
%}

sim = 0;

% store locations of beginnings and ends of genes (marked by zeros)
delim1 = find (x == 0);
delim = [0,delim1];

% sum up all the similarity values for each pair of genes
for i = 1 : (length(delim)-2)
    for j = i+1 : (length(delim)-1)
        sim = sim + levenshteinSim ((x(delim(i)+1):x(delim(i+1))),(x(delim(j)+1):x(delim(j+1))));
    end
end
end

