function result = read_write_4 (nVars)
  
    filename1 = 'rand_population_run5.txt';  
    filename2 = 'scores-rand5.txt';
    
        tStart = tic;
        i = 1;
        myformat1 = 'population\n';
        myformat2 = '   ***scores\n';
        while toc(tStart)<1800
            temp = create_test_suite(randi([20,48]),11,nVars);
            score= multiobjective_fitness_4_3(temp);
            fid1 = fopen(filename1,'a');
            fprintf(fid1,'%d',temp);
            fprintf(fid1,myformat1);
            fclose(fid1);
            fid2 = fopen(filename2,'a');
            fprintf(fid2,'coverage=%d,%d,%d,%d',score);
            fprintf(fid2,myformat2);
            fclose(fid2);
            i = i+1;
        end

    result = 0;
end