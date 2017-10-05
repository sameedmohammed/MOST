function result = findSequence (tj ,numOfTransitions, numOfCounterVars)

result1 = zeros (30,3);

for i = 1 : numOfCounterVars
    if (affectedBy(tj,i) ~= 0)
        LI = ones (0,0);
        for k = 1 : numOfTransitions
            temp1 = affecting (k,i);
            if (temp1(1,1) == 1)
                LI = [LI k];
            end
        end
        LU = ones (0,0);
        for k = 1 : numOfTransitions
            temp1 = affecting (k,i);
            if (temp1(1,1) > 1)
                LU = [LU k];
            end
        end
        count = 1;
        for l1 = 1 : length(LI)
            for l2 = 1 : length(LU)
                val = validate (tj,i,LI(l1),LU(l2));
                if (val(1,1))
                    result1 (count , :) = [LI(l1),LU(l2),val(1,2)];
                    count = count + 1;
                end
            end
        end
        result = zeros (count-1 , 3);
        for c = 1 : count-1
            result (c , :) = result1 (c , :);
        end
    end
   
        
end
end