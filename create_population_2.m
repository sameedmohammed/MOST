function pop = create_population_2(NVARS,FitnessFcn,options)
%{  
creates a cell array of chromosomes (pop) of the same length (NVARS)
with a specific population (options.PopulationSize)
%}

global relMat;
relMat = relation_matrix_class2();

totalPopulationSize = sum(options.PopulationSize);
disp ( ' Population size ...')
disp ( options.PopulationSize  )
n = NVARS;

% set to maximum number of transitions leaving a state in the state machine
% (this value can be increased in certain cases)
maxOutgoing = 11;

% create an empty cell array with the specified size of the population
pop = cell(totalPopulationSize,1);

for i = 1:totalPopulationSize
    % create an empty matrix (chromosome) with the length specified in the options
    temp = zeros(1,n);
    
    % fill the chromosome with valid random integers up to a random length
    varLength = randi ([0, maxOutgoing],1, randi([10,n]));
    
    % fill the remaining empty spots in the chromosome with -1's
    for j = 1:length(temp)
        if (j < length(varLength))
            temp(1,j) = varLength(1,j);
        else
            temp(1,j) = -1;
        end
    end
    
    % store the newly created chromosome in the cell array
    pop{i} = temp;
    
    % make the last value in the chromosome 0 if it isn't already
    if (pop{i}(end) ~= 0)
        pop{i}(end) = 0;
    end
end
pop = fixpopulation(pop,NVARS);
end
