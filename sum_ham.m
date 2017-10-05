function sim = sum_ham(x , nvar)
%{  
calculate similarity value (sim) for a single chromosome (x) for a
state machine with a certain number of transitions (nvar)
AGGREGATION METHOD: Sum
PAIRWISE SIMILARITY MEASURE: Hamming Distance
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
            sim = sim + HammingSim (x((delim(i)+1):(delim(i+1)-1)),x((delim(j)+1):(delim(j+1)-1)), nvar);
        end
    end
end
end

