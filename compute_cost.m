function cost = compute_cost(x)
%{  
calculate cost value (cost) for a single chromosome (x)
%}

cost = length(x) - length(find(x == 0)); % calculate number of non-zero values in chromosome
end