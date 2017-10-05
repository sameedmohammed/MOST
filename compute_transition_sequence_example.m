function transition = compute_transition_sequence_example (chromFixed)
%disp ('in transition sequence')
chrom = cast_to_variable_length(chromFixed); 
transition = zeros (1,length(chrom));

s = [1,2;1,4;1,8;2,1;2,2;2,3;3,2;4,1;4,5;4,6;5,4;5,5;6,4;6,7;7,4;8,1;8,8;8,9;9,8;9,8;9,10;10,8];
t = [1,2,3;4,5,6;7,7,7;8,9,10;11,12,11;13,14,13;15,15,15;16,17,18;19,20,21;22,22,22];
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