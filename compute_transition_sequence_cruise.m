function transition = compute_transition_sequence_cruise (chromFixed)
%{  
convert an encoded chromosome (chromFixed) into a chromosome with
the actual values for each transition (transition)
CRUISE CONTROL
%}

chrom = cast_to_variable_length(chromFixed); 
transition = zeros (1,length(chrom));

% first value in each row represents starting state of the transition with the value of that row
% second value in each row represents the target state of the transition with the value of the that row
s = [1,1;1,1; 1,1; 1,1; 1,2; 1,1; 1,1; 2,1; 2,2;2,2;2,2;2,2;2,2; 2,3; 3,1; 3,3;3,3;3,3;3,4;3,4;3,4;4,1;4,4;4,4;4,4;4,4;4,3;4,3];

% encoding matrix
t = [1,2,3,4,5,6,7;8,9,10,11,12,13,14;15,16,17,18,19,20,21;22,23,24,25,26,27,28];

z = 1;

while (chrom(z) == 0 && z < length(chrom))
     transition (z) = chrom(z);
     z = z + 1;
end 
if (z < length(chrom))
    % convert first encoded value to true transition value
    transition (z) = t (1, chrom(z));
    
    % determine first target state based on transition value
    targetState = s (transition(z),2);

    % run through entire chromosome, converting all encoded values to true transition values
    for  i = z+1 : length(transition)
        % if the encoded value is 0, then the true transition value is 0 and reset to starting state
        if(chrom(i)== 0)
            transition(i) = chrom(i);
            targetState = 1;
        else
            % convert encoded value to true transition value based on current state
            transition(i) = t (targetState , chrom(i));
            
            % determine target state based on true transition value
            targetState = s (transition(i),2);
        end
    end
end