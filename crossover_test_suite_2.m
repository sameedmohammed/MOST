function xoverKids = crossover_test_suite_2(parents,options,NVARS, ...
FitnessFcn,thisScore,thisPopulation)
%{  
creates a cell array (xoverKids) containing chromosomes with a certain
length (NVARS) resulting from the crossing over of the selected
chromosomes from the previous generetion (thisPopulation)
%}

disp ( ' in cross over')
nKids = length(parents)/2;
xoverKids = cell(nKids,1); % Normally zeros(nKids,NVARS);
index = 1;

while (index <= nKids)
    parentFixed1 = thisPopulation{parents(index)};  
    parent1 = cast_to_variable_length( parentFixed1);
    parentFixed2 = thisPopulation{parents(index+1)};  
    parent2 = cast_to_variable_length( parentFixed2);
    
    % store locations of beginnings and ends of genes (marked by zeros)
    delim = find (parent1 == 0);
    delim1 = [0,delim];
    
    len1 = length (delim1);
    if (parent1(end) ~= 0)
        len1 = len1 + 1;
    end
  
    delim = find (parent2 == 0);
    delim2 = [0,delim];
    len2 = length (delim2);
    if (parent2(end) ~= 0)
        len2 = len2 + 1;
    end
    if(len1 == 1 || len2 == 1)
        xoverKids{index} =  parent1;
        xoverKids{index+1} = parent2;
        index = index + 2;
    else
        random = randi ([1 , 2]);
        switch random
            case 1
                % exchange test paths between test suites
                toBeXovered1 = randi([1,len1-1]);
                toBeXovered2 = randi([1,len2-1]);
                gene1 = parent1 (delim1(toBeXovered1)+1: delim1 (toBeXovered1+1));
                gene2 = parent2 (delim2(toBeXovered2)+1: delim2 (toBeXovered2+1));

                child1 = zeros (1,length(parent1)-length(gene1)+length(gene2));
                child2 = zeros (1,length(parent2)-length(gene2)+length(gene1));
                for i = 1: length (child1)
                    if (i <= delim1(toBeXovered1))
                        child1 (i) = parent1(i);
                    elseif (i> delim1 (toBeXovered1) && i <= (length(parent1)-length(gene1)))
                        child1(i) = parent1(i+ length(gene1));
                    else
                        child1(i) = gene2 (i - (length(parent1)-length(gene1)));
                    end
                end

                for i = 1: length (child2)
                    if (i <= delim2(toBeXovered2))
                        child1 (i) = parent2(i);
                    elseif (i> delim2 (toBeXovered2) && i <= (length(parent2)-length(gene2)))
                        child2(i) = parent2(i+ length(gene2));
                    else
                        child2(i) = gene1 (i - (length(parent2)-length(gene2)));
                    end
                end

            case 2
                % exchange transitions between test paths of test suites
                toBeXovered1 = randi([1,len1-1]);
                toBeXovered2 = randi([1,len2-1]);
                gene1 = parent1 (delim1(toBeXovered1)+1: delim1 (toBeXovered1+1));
                gene2 = parent2 (delim2(toBeXovered2)+1: delim2 (toBeXovered2+1));
                if (length(gene1) <= length(gene2))
                    xoverPoint = randi ([1,length(gene1)]);
                else
                    xoverPoint = randi ([1,length(gene2)]);
                end
                child1 = zeros (1,length(parent1)-length(gene1)+length(gene2));
                child2 = zeros (1,length(parent2)-length(gene2)+length(gene1));
                temp1 = zeros (1,length(gene2));
                temp2 = zeros (1,length(gene1));

                for i = 1: length(temp1)
                    if (i <= xoverPoint)
                        temp1(i) = gene1(i);
                    else
                        temp1(i) = gene2(i);
                    end
                end
                for i = 1: length(temp2)
                    if (i <= xoverPoint)
                        temp2(i) = gene2(i);
                    else
                        temp2(i) = gene1(i);
                    end
                end
                for i = 1: length (child1)
                    if (i <= delim1(toBeXovered1))
                        child1 (i) = parent1(i);
                    elseif (i> delim1 (toBeXovered1) && i <= (length(parent1)-length(gene1)))
                        child1(i) = parent1(i+ length(gene1));
                    else
                        child1(i) = temp1 (i - (length(parent1)-length(gene1)));
                    end
                end

                for i = 1: length (child2)
                    if (i <= delim2(toBeXovered2))
                        child1 (i) = parent2(i);
                    elseif (i> delim2 (toBeXovered2) && i <= (length(parent2)-length(gene2)))
                        child2(i) = parent2(i+ length(gene2));
                    else
                        child2(i) = temp2 (i - (length(parent2)-length(gene2)));
                    end
                end
        end
        childFixed1 = zeros(1,NVARS);
        for l = 1: length(childFixed1)
            if( l<= length(child1))
                childFixed1(l) = child1(l);
            else
                childFixed1(l) = -1;
            end
        end
        childFixed2 = zeros(1,NVARS);
        for l = 1: length(childFixed2)
            if( l<= length(child2))
                childFixed2(l) = child2(l);
            else
                childFixed2(l) = -1;
            end
        end
        xoverKids{index} = childFixed1;
        xoverKids{index+1} = childFixed2;
        index = index + 2;
    end
end
xoverKids = fixpopulation(xoverKids,NVARS);
disp('modified')
disp(length(xoverKids))
end