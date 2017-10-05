function transition = compute_transition_sequence_test (chromFixed)
%disp ('in transition sequence')
chrom = cast_to_variable_length(chromFixed); 
transition = zeros (1,length(chrom));

s = [1,1;1,1; 1,2; 2,1; 2,2; 2,2; 2,3; 3,2; 3,3;3,3;3,4;4,3;4,4; 4,4; 4,5; 5,4;5,5;5,5;5,6;6,5;6,6;6,6;6,7;7,6;7,7;7,7;7,8;8,7;8,8;8,8;8,9;9,8;9,9;9,9;9,10;10,9;10,10;10,10;10,11;11,10;11,11;11,11;11,12;12,11;12,12;12,12;12,13;13,13;13,13;13,13;13,13];
t = [1,2,3,1;4,5,6,7;8,9,10,11;12,13,14,15;16,17,18,19;20,21,22,23;24,25,26,27;28,29,30,31;32,33,34,35;36,37,38,39;40,41,42,43;44,45,46,47;48,49,50,51];
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