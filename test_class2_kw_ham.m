%{
runs the genetic algorithm 100 times and stores the encoded chromosomes, 
converted chromosomes, and fitness values from the Pareto front of each
of the 100 runs in excel files
randomly selects 20 of these runs and stores the encode chromosomes,
converted chromosomes, and fitness values from the Pareto front of those
20 runss in excel files

CLASS 2 TRANSPORT PROTOCOL
AGGREGATION METHOD: Kosman's Diversity Within Population
PAIRWISE SIMILARITY MEASURE: Hamming Distance
%}

clc
filename1 = 'class2-kw-hamP2.xlsx';
filename2 = 'class2-kw-hamPOP2.xlsx';
filename3 = 'class2-kw-hamP2-con.xlsx';
filenamerand1 = 'rand-class2-kw-hamP2.xlsx';
filenamerand2 = 'rand-class2-kw-hamPOP2.xlsx';
filenamerand3 = 'rand-class2-kw-hamP2-con.xlsx';
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
    
    % run the genetic algorithm
    [x,fval,flag,output,population] = gamultiobj(@multiobj_fit_class2_kw_ham,200,[],[],[],[],[],[],opts);
    
    % store the fitness values in a spreadsheet
    xlswrite(filename1,fval,i);
    
    result = zeros (70,200);
    conv = zeros (70,200);
    for j = 1 : 70
        result(j,:) = x{j};
        temp = compute_transition_sequence_class2(x{j});
        for k = 1 : length(temp)
            conv(j,k) =temp(k);
        end
        if(length(temp) < 200)
            conv(j,length(temp)+1)= -2;
        end
    end
    
    % store the encoded and converted chromosomes in seperate spreadsheets
    xlswrite(filename2,result,i);
    xlswrite(filename3,conv,i);
    
    % if the current run is one of the randomly selected ones...
    % then store the encoded chromosomes, converted chromosomes, and fitness values in their own excel files
    if counter <= 20 && i == randIntegers(counter, 1)
        xlswrite(filenamerand1, fval, counter);
        xlswrite(filenamerand2, result, counter);
        xlswrite(filenamerand3, conv, counter);
        counter = counter + 1;
    end
end
disp(x);
%%%END CODE%%%