function feasibility = compute_feasibility(x)
%{  
calculate feasibility value (feasibility) for a single chromosome (x)
%}

feasibility = 0;

% set to the number of context variables in the state machine
num_vars = 5;

% store locations of beginnings and ends of genes (marked by zeros)
delim1 = find (x == 0);
delim = [0,delim1];

% calculate and sum up feasibility values for each gene in the chromosome
for i = 1 : (length(delim)-1)
    feasibility = feasibility + feasibility_metric(x((delim(i)+1):(delim(i+1)-1)),num_vars);
end
end