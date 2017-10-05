function y = multiobjective_fitness(x)
disp ( 'in objective ...')
whos x
y (1) = compute_coverage (compute_transition_sequence_test(x),28);
y (2) = compute_similarity(compute_transition_sequence_test(x));