clc
filename1 = 'cruise-sum-diceP3-2.xlsx';
filename2 = 'cruise-sum-dicePOP3-2.xlsx';
filename3 = 'cruise-sum-diceP3-con.xlsx';
opts = gaoptimset('PopulationSize',200,...
    'CreationFcn',@create_population_3,...
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
        conv = zeros (70,200);
        for j = 1 : 70
            result(j,:) = x{j};
            temp = compute_transition_sequence_cruise(x{j});
            for k = 1 : length(temp)
                conv(j,k) =temp(k);
            end
            if(length(temp) < 200)
                conv(j,length(temp)+1)= -2;
            end
        end
        xlswrite(filename2,result,i);
        xlswrite(filename3,conv,i);
        i = i + 1;
    end
end
disp(x);
%%%END CODE%%%