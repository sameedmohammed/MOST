function scores = multiobjective_fitness_example(x)
%disp ( 'in objective ...')
%disp ( 'SIZE X IS')
%disp ( size(x,1))
scores = zeros (size(x,1),4);
%whos x
for j = 1 : size (x,1)
   %disp(x) 
   scores(j,1) = compute_coverage (compute_transition_sequence_example(x{j}),22);
   scores(j,2) = compute_similarity2(compute_transition_sequence_example(x{j}));
   scores(j,3) = compute_cost(compute_transition_sequence_example(x{j}));
   scores(j,4) = compute_counter(compute_transition_sequence_example(x{j}),4);
   % scores(j,4) = compute_feasibility_stack(compute_transition_sequence_stack(x{j}));
end
%disp ( 'back in objective ...')
end
