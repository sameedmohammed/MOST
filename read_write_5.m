function result = read_write_5 (nVars)
  
    
    
        tStart = tic;
       
       
        while toc(tStart)<1
            temp = create_test_suite(randi([20,48]),11,nVars);
            score= multiobjective_fitness_4_3(temp);
            disp(temp);
            disp(score);
        end

    result = 0;
end