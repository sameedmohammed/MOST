
function best = myfunc()

x = [0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	3,	1,	11,	11,	3,	3,	1,	9,	0,	4,	0,	1,	9,	3,	11,	7,	6,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	8,	10,	1,	3,	6,	0,	0,	0,	0,	7,	11,	4,	8,	2,	5,	10,	2,	8,	9,	9,	8,	3,	1,	10,	10,	5,	5,	9,	0,	0,	0,	7,	0,	0,	0,	0,	0];

best = compute_transition_sequence_class2(x);

while (compute_feasibility(best) ~= 54 || compute_coverage(best,21)~= 0 )
    
    best = compute_transition_sequence_class2(x);

end
disp ('hello');
end