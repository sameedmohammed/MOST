function kw = kw_dice(x)
%{  
calculate similarity value (kw) for a single chromosome (x)
AGGREGATION METHOD: Kosman's Diversity Within Population
PAIRWISE SIMILARITY MEASURE: Gower-Legendre (Dice)
%}

% store locations of beginnings and ends of genes (marked by zeros)
delim1 = find (x == 0);
delim = [0,delim1];

max = zeros(1,length(delim)-1);
div = 0;
num = 1;
for i = 1 : (length(delim)-1)
    if(delim(i)+1 == delim(i+1))
        max(1,i) = 0;
    else
        for j = 1 : (length(delim)-1)
            if(delim(j)+1 ~= delim(j+1))
                num = num + 1;
                if(glDiv (x((delim(i)+1):(delim(i+1)-1)),x((delim(j)+1):(delim(j+1)-1)))> max(1,i))
                    max(1,i) =  glDiv (x((delim(i)+1):(delim(i+1)-1)),x((delim(j)+1):(delim(j+1)-1)));
                end
            end
        end
    end  
    div = div + max(1,i);
end
div = div / num;
kw = 0 - div;
end

