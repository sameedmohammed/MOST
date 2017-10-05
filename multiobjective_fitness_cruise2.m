function scores = multiobjective_fitness_cruise2(x)
scores = zeros (size(x,1),3);

for j = 1 : size (x,1)
    scores(j,1) = compute_coverage (compute_transition_sequence_cruise(x{j}),28);
    scores(j,2) = kw_leven(compute_transition_sequence_cruise(x{j}));
    scores(j,3) = compute_cost(compute_transition_sequence_cruise(x{j}));
end
end
