function transition = compute_transition_sequence ( chrom, state_num, trans_num, nvar)
transition = zeros (length(chrom));
s = zeros (trans_num,2);
t = zeros (state_num, nvar);
transition (1) = t (1, chrom(1));
targetState = s (transition(1),2);

for  i = 2 : length(transition)
    if(chrom(i)== 0)
        transition(i) = chrom(i);
        targetState = 1;
    else
        transition(i) = t (targetState , chrom(i));
        targetState = s (transition(i),2);
    end

end