function scores = multiobjective_fitness_lift(x)
disp ( 'in objective ...')
%disp ( 'SIZE X IS')
%disp ( size(x,1))
scores = zeros (1,4);

for j = 1 : size (x,1)

    scores(1,1) = compute_coverage (compute_transition_sequence_elevator(x{j}),24);
    scores(1,2) = kw_dice3(compute_transition_sequence_elevator(x{j}));
    scores(1,3) = compute_cost(compute_transition_sequence_elevator(x{j}));
    scores(1,4) = compute_feasibility(compute_transition_sequence_elevator(x{j}));
end

end
