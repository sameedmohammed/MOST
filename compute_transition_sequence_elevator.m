function transition = compute_transition_sequence_elevator (chromFixed)
%disp ('in transition sequence')
chrom = cast_to_variable_length(chromFixed); 
transition = zeros (1,length(chrom));

s = [1,1;1,1;1,2;2,1;1,2;2,1; 2,2;2,2;2,3;3,2;3,2;2,3;3,3;3,3;3,1;1,3;1,3;3,1;1,4;4,1;4,2;2,4;3,4;4,3];
t = [1,2,3,5,16,17,19;4,6,7,8,9,12,22;10,11,13,14,15,18,23;20,21,24,20,21,24,20];
z = 1;
while (chrom(z) == 0 && z < length(chrom))
     transition (z) = chrom(z);
     z = z + 1;
end 
if (z < length(chrom))
    transition (z) = t (1, chrom(z));
    targetState = s (transition(z),2);

    for  i = z+1 : length(transition)
        if(chrom(i)== 0)
            transition(i) = chrom(i);
            targetState = 1;
        else
            transition(i) = t (targetState , chrom(i));
            targetState = s (transition(i),2);
        end

    end
end