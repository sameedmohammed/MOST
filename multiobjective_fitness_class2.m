function scores = multiobjective_fitness_class2(x)
%disp ( 'in objective ...')
%disp ( 'SIZE X IS')
%disp ( size(x,1))
scores = zeros (size(x,1),4);
%whos x
for j = 1 : size (x,1)
   %disp(x) 
    scores(j,1) = compute_coverage (compute_transition_sequence_class2(x{j}),21);
    scores(j,2) = adw_dice(compute_transition_sequence_class2(x{j}));
    scores(j,3) = compute_cost(compute_transition_sequence_class2(x{j}));
    scores(j,4) = compute_feasibility(compute_transition_sequence_class2(x{j}));
end
%disp ( 'back in objective ...')
end
