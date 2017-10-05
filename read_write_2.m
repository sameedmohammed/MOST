function result = read_write_2 (generation, pop_size , nVars)
    filename1 = 'scores-3.xlsx';
    filename2 = 'scores-4.xlsx';
    filename3 = 'rand_population_2.xlsx';
    for i = 1 : generation
        disp(i)
        ga_pop = xlsread (filename1,i,'A1:D200');
        rank =  xlsread (filename1,i,'F1:F200');
        cost = xlsread (filename1,i,'B1:B200');
        xlswrite(filename2,ga_pop,i,'A1:D200');
        xlswrite(filename2,rank,i,'F1:F200');
        changed = pop_size;
        for k = 1 : 60
            if (randi([1,100])==1)
                changed = changed + 1;
            end
            
        end
        disp(changed)
       % rand_cost = zeros(pop_size);
        rand_cost = datasample(cost,changed,'replace',false);
        xlswrite(filename2,rand_cost,i,'H1:H200');
        scores = zeros (changed,4);
        random_pop = ones (changed,nVars);
        for j = 1 : changed
            temp = create_test_suite(rand_cost(j),11,nVars);
            random_pop(j,:) = temp;
            scores(j,:)= multiobjective_fitness_4_3(random_pop(j,:));
        end
        xlswrite(filename2,scores,i,'J1:M200');
        xlswrite(filename3,random_pop,i);
    end

    result = 0;
end