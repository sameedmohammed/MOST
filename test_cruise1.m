clc
filename1 = 'cruise-adw-diceP2.xlsx';
filename2 = 'cruise-adw-dicePOP2.xlsx';
opts = gaoptimset('PopulationSize',200,...
    'CreationFcn',@create_population_2,...
    'MutationFcn',@mutate_test_suite_2,...
    'CrossoverFcn',@crossover_test_suite_2,...
    'Display','iter',...
    'PopulationType','custom');

i = 1;
while (i < 21)  
    if(randi([1,5])== 1)
        [x,fval,flag,output,population] = gamultiobj(@multiobjective_fitness_cruise,200,[],[],[],[],[],[],opts);
        xlswrite(filename1,fval,i);
        result = zeros (70,200);
        for j = 1 : 70
            result(j,:) = x{j};
        end
        xlswrite(filename2,result,i);
        i = i + 1;
    end
end
disp(x);
%%%END CODE%%%