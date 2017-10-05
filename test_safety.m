clc
opts = gaoptimset(...
    'CreationFcn',@create_population_2,...
    'MutationFcn',@mutate_test_suite_2,...
    'CrossoverFcn',@crossover_test_suite_2,...
    'Display','iter',...
    'PopulationType','custom');

X = gamultiobj(@multiobjective_fitness_safety,200,[],[],[],[],[],[],opts);
%%%END CODE%%%