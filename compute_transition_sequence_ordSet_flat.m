function transition = compute_transition_sequence_ordSet_flat (chromFixed)
%{  
convert an encoded chromosome (chromFixed) into a chromosome with
the actual values for each transition (transition)
FLATTENED ORDERED SET
    size = 4
    resizes = 2
%}

chrom = cast_to_variable_length(chromFixed); 
transition = zeros (1,length(chrom));

% first value in each row represents starting state of the transition with the value of that row
% second value in each row represents the target state of the transition with the value of the that row
s = [1,2;1,1;2,3;2,2;2,2;2,1;3,4;3,3;3,3;3,2;4,5;4,4;4,4;4,3;...
    5,11;5,5;5,5;5,4;6,7;6,6;7,8;7,7;7,7;7,6;8,9;8,8;8,8;8,7;...
    9,10;9,9;9,9;9,8;10,11;10,10;10,10;10,9;11,12;11,11;11,11;11,10;...
    12,13;12,12;12,12;12,11;13,14;13,13;13,13;13,12;14,24;14,14;14,14;14,13;...
    15,16;15,15;16,17;16,16;16,16;16,15;17,18;17,17;17,17;17,16;...
    18,19;18,18;18,18;18,17;19,20;19,19;19,19;19,19;20,21;20,20;20,20;20,19;...
    21,22;21,21;21,21;21,20;22,23;22,22;22,22;22,21;23,24;23,23;23,23;23,22;...
    24,25;24,24;24,24;24,23;25,26;25,25;25,25;25,24;26,27;26,26;26,26;26,25;...
    27,27;27,27;27,27;27,26];

% encoding matrix
t = [1,2,1,2,1;3,4,5,6,3;7,8,9,10,7;11,12,13,14,11;15,16,17,18,15;19,20,19,20,19;...
    21,22,23,24,21;25,26,27,28,25;29,30,31,32,29;33,34,35,36,33;37,38,39,40,37;...
    41,42,43,44,41;45,46,47,48,45;49,50,51,52,49;53,54,53,54,53;55,56,57,58,55;...
    59,60,61,62,59;63,64,65,66,63;67,68,69,70,67;71,72,73,74,71;75,76,77,78,75;...
    79,80,81,82,79;83,84,85,86,83;87,88,89,90,87;91,92,93,94,91;95,96,97,98,95;...
    99,100,101,102,99];

z = 1;

while (chrom(z) == 0 && z < length(chrom))
     transition (z) = chrom(z);
     z = z + 1;
end 
if (z < length(chrom))
    % convert first encoded value to true transition value starting in first state
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