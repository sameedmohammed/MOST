
function pop = create_permutations(NVARS,FitnessFcn,options)

totalPopulationSize = sum(options.PopulationSize);
disp ( ' Population size ...')
disp ( options.PopulationSize  )
n = NVARS;
pop = cell(totalPopulationSize,1);
for i = 1:totalPopulationSize
pop{i} = randi(20,n);
end