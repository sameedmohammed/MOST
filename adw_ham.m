function adw = adw_ham(x,numOfTrans)
%{  
calculate similarity value (adw) for a single chromosome (x) for a
state machine with a certain number of transitions (numOfTrans)
AGGREGATION METHOD: Average Distance Within Population
PAIRWISE SIMILARITY MEASURE: Hamming Distance
%}

num = 0;
div = 0;

% store locations of beginnings and ends of genes (marked by zeros)
delim1 = find (x == 0);
delim = [0,delim1];

for i = 1 : (length(delim)-2)
    for j = i+1 : (length(delim)-1)
        % if there are two adjacent zeros, don't calculate diversity
        if(delim(i)+1 == delim(i+1) || delim(j)+1 == delim(j+1))
            div = div + 0;
        else
            % calculate diversity between two genes
            div = div + HammingDiv (x((delim(i)+1):(delim(i+1)-1)),x((delim(j)+1):(delim(j+1)-1)),numOfTrans);
            num = num+1;
        end
    end
end
if(num ~=0)
    mean = div / num; % calculate average diversity
else
    mean = 0;
end

% switch to negative because GA is minimizing (lower negative value here means greater diversity/less similarity)
adw = 0 - mean;
end

