clc
filename1 = 'ordset-adw-dice-fval.xlsx';
filename2 = 'ordset-adw-dice-encode.xlsx';
filename3 = 'ordset-adw-dice-conv.xlsx';
filenamerand1 = 'rand-ordset-adw-dice-fval.xlsx';
filenamerand2 = 'rand-ordset-adw-dice-encode.xlsx';
filenamerand3 = 'rand-ordset-adw-dice-conv.xlsx';
opts = gaoptimset('PopulationSize',200,...
    'CreationFcn',@create_population_2,...
    'MutationFcn',@mutate_test_suite_2,...
    'CrossoverFcn',@crossover_test_suite_2,...
    'CrossoverFraction', 0.7,...
    'ParetoFraction', 0.35,...
    'Display','iter',...
    'PopulationType','custom');

randIntegers = zeros(20,1);  
for j = 1:20
    randInt = 0;
    while ~isempty(find(randIntegers(:,1) == randInt, 1))
        randInt = randi(100);
    end
    randIntegers(j, 1) = randInt;
end
randIntegers = sort(randIntegers);

counter = 1;
for i = 1:100  
    disp(i);
    [x,fval,flag,output,population] = gamultiobj(@multiobj_fit_ordset2_adw_dice,200,[],[],[],[],[],[],opts);
    xlswrite(filename1,fval,i);
    result = zeros (70,200);
    conv = zeros (70,200);
    for j = 1 : 70
        result(j,:) = x{j};
        temp = compute_transition_sequence_ordSet2(x{j});
        for k = 1 : length(temp)
            conv(j,k) =temp(k);
        end
        if(length(temp) < 200)
            conv(j,length(temp)+1)= -2;
        end
    end
    xlswrite(filename2,result,i);
    xlswrite(filename3,conv,i);
    if counter <= 20 && i == randIntegers(counter, 1)
        xlswrite(filenamerand1, fval, counter);
        xlswrite(filenamerand2, result, counter);
        xlswrite(filenamerand3, conv, counter);
        counter = counter + 1;
    end
end
disp(x);
%%%END CODE%%%