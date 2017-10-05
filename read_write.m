function result = read_write (generation, pop_size , nVars)
    filename1 = 'scores-3.xlsx';
    filename2 = 'rand_population_2.xlsx';
    for i = 1 : generation
        disp(i)
        cost = xlsread (filename1,i,'B1:B200');
       % rand_cost = zeros(pop_size);
        rand_cost = datasample(cost,pop_size,'replace',false);
        xlswrite(filename1,rand_cost,i,'H1:H200');
        scores = zeros (pop_size,4);
        random_pop = ones (pop_size,nVars);
        for j = 1 : pop_size
            temp = create_test_suite(rand_cost(j),11,nVars);
            temp2 = random_pop(j,:);
            random_pop(j,:) = temp;
            scores(j,:)= multiobjective_fitness_4_3(random_pop(j,:));
        end
        xlswrite(filename1,scores,i,'J1:M200');
        xlswrite(filename2,random_pop,i);
    end

    result = 0;
end