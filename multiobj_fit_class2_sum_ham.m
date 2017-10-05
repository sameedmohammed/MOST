function scores = multiobj_fit_class2_sum_ham(x)
%{
calculate the four fitness values for a single chromosome (x)

CLASS 2 TRANSPORT PROTOCOL
AGGREGATION METHOD: Sum
PAIRWISE SIMILARITY MEASURE: Hamming Distance
%}

scores = zeros(1,4);

% the chromosome must be converted from the encoded values before being passed to any of the fitness functions 
conv_x = compute_transition_sequence_class2(x{1});

scores(1) = compute_coverage(conv_x,21);
scores(2) = sum_ham(conv_x, 21);
scores(3) = compute_cost(conv_x);
scores(4) = compute_feasibility(conv_x);
end
