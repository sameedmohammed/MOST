function pop = create_population(NVARS,FitnessFcn,options)
totalPopulationSize = sum(options.PopulationSize);
disp ( ' Population size ...')
disp ( options.PopulationSize  )
n = NVARS;
pop = cell(totalPopulationSize,1);
for i = 1:totalPopulationSize
pop{i} = randi ([0, n],1, randi([5,100]));
if (pop{i}(end) ~= 0)
    pop{i}(end) = 0;
end
end