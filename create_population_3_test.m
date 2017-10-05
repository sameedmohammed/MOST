function pop = create_population_3_test(NVARS,size)
%creates chromosomes of the same length
totalPopulationSize = size;
disp ( ' Population size ...')
disp ( size  )
n = NVARS;
maxOutgoing = 7;
pop = cell(totalPopulationSize,1);
for i = 1:totalPopulationSize
    temp = zeros(1,n);
    varLength = randi ([1, maxOutgoing],1, randi([10,n]));
    for j = 1:length(temp)
        if (j < length(varLength))
            temp(1,j) = varLength(1,j);
            if (randi(maxOutgoing,1) == maxOutgoing)
                temp(1,j) = 0;
            end
        else
            temp(1,j) = -1;
        end
    end
    pop{i} = temp;
if (pop{i}(end) ~= 0)
    pop{i}(end) = 0;
end
end
pop = fixpopulation(pop,NVARS);
end
