function scores = multiobj_fit_ordSet_adw_dice(x)
%{
calculate the three fitness values for a single chromosome (x)

ORDERED SET
    size = 4
    resizes = 2
AGGREGATION METHOD: Average Distance Within Population
PAIRWISE SIMILARITY MEASURE: Gower-Legendre (Dice)
%}

scores = zeros(1,3);

% the chromosome must be converted from the encoded values before being passed to any of the fitness functions 
conv_x = compute_transition_sequence_ordSet_flat(x{1});

scores(1) = compute_coverage(conv_x,21);
scores(2) = adw_dice(conv_x);
scores(3) = compute_cost(conv_x);
end
