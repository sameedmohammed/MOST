function pop = create_population_2_test(NVARS,size)
%creates chromosomes of the same length
totalPopulationSize = size;

n = NVARS;
maxOutgoing = 7;
pop = cell(totalPopulationSize,1);
for i = 1:totalPopulationSize
    temp = zeros(1,n);
    varLength = randi ([0, maxOutgoing],1, randi([10,n]));
    for j = 1:length(temp)
        if (j < length(varLength))
            temp(1,j) = varLength(1,j);
        else
            temp(1,j) = -1;
        end
    end
    pop{i} = temp;

end
end