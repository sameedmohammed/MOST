function scores = multiobjective_fitness_2(x)
%disp ( 'in objective ...')
%disp ( 'SIZE X IS')
%disp ( size(x,1))
scores = zeros (size(x,1),2);
%whos x
for j = 1 : size (x,1)
   %disp(x) 
scores(j,1) = compute_coverage (compute_transition_sequence_test(x{j}),28);
scores(j,2) = compute_similarity2(compute_transition_sequence_test(x{j}));
end
%disp ( 'back in objective ...')
end
