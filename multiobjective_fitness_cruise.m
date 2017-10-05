function scores = multiobjective_fitness_cruise(x)
%disp ( 'in objective ...')
%disp ( 'SIZE X IS')
%disp ( size(x,1))
scores = zeros (size(x,1),3);
%whos x
for j = 1 : size (x,1)
   %disp(x) 
    scores(j,1) = compute_coverage (compute_transition_sequence_cruise(x{j}),28);
    scores(j,2) = compute_similarity_3(compute_transition_sequence_cruise(x{j}));
    scores(j,3) = compute_cost(compute_transition_sequence_cruise(x{j}));
end
%disp ( 'back in objective ...')
end
