clc
opts = gaoptimset(...
    'CreationFcn',@create_population_ordset2,...
    'MutationFcn',@mutate_test_suite_ordset,...
    'CrossoverFcn',@crossover_test_suite_2,...
    'Display','iter',...
    'PopulationType','custom');

X = gamultiobj(@moga_ordset,100,[],[],[],[],[],[],opts);
%%%END CODE%%%