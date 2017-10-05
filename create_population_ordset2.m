function pop = create_population_ordset2(NVARS,FitnessFcn,options)
%creates chromosomes of the same length
totalPopulationSize = sum(options.PopulationSize);
disp ( ' Population size ...')
disp ( options.PopulationSize  )

n = NVARS;
maxlength =50;
maxOutgoing = 5;
pop = cell(totalPopulationSize,1);
for i = 1:totalPopulationSize
    temp = zeros(1,n);
    varLength = randi ([1, maxOutgoing],1, randi([10,n]));
    for j = 1:length(temp)
        if (j < length(varLength))
            temp(1,j) = varLength(1,j);
            if(randi([1,maxlength]) == 2)
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
