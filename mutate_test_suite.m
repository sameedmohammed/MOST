function mutationChildren = mutate_test_suite(parents ,options,NVARS, ...
FitnessFcn, state, thisScore,thisPopulation,mutationRate)
disp ( 'In mutation ...')
mutationChildren = cell(length(parents),1);% Normally zeros(length(parents),NVARS);
for i=1:length(parents)
    parent = thisPopulation{parents(i)};% Normally thisPopulation(parents(i),:)
    delim = find (parent == 0);
    len = length (delim)-1;
    if (parent(end) ~= 0)
        len = len + 1;
    end
   
    if(len <=1)
        mutationChildren{i} = parent;
    else
        random = randi ([1 , 7]);
        switch random
            case 1
                % removing a gene ( test path)
               toBeRemoved = randi ([1, len]);
               lengthToBeRemoved = delim(toBeRemoved+1) - delim(toBeRemoved);
               child = zeros (1,length(parent)- lengthToBeRemoved);
               %for j = 1 : delim (toBeRemoved)
                %   child (j) = parent (j);
               %end
               %for j = delim(toBeRemoved)+1: length (child)
                %   child (j) = parent (j+ lengthToBeRemoved);
               % end 
               for j = 1 : length (child)
                   if j <= delim (toBeRemoved)
                        child (j) = parent (j);
                   else
                       child (j) = parent (j + lengthToBeRemoved);
                   end

               end


            case 2
                %adding a gene
                toBeAdded = randi ([1,NVARS],1,randi([1,10]));
                if(parent(end) == 0)
                    child = zeros (1,length(parent) + length (toBeAdded));
                    for j = 1 : length(parent)
                        child (j) = parent (j);
                    end
                    for j = 1 : length (toBeAdded)
                        child (j + length(parent)) = toBeAdded (j);
                    end
                else
                   child = zeros (1,length(parent) + length (toBeAdded)+ 1 );
                   for j = 1 : length(parent)
                        child (j) = parent (j);
                   end
                    child (length(parent)+1) = 0;
                    for j = 1 : length (toBeAdded)
                        child (j + length(parent)+1) = toBeAdded (j);
                    end
                end

            case 3
                %replacing a gene by a new one
                toBeRemoved = randi ([1, len]);
                lengthToBeRemoved = delim(toBeRemoved+1) - delim(toBeRemoved);
                toBeAdded = randi ([1,NVARS],1,randi([1,10]));
                child = zeros (1,length(parent)- lengthToBeRemoved + length (toBeAdded) );
                 for j = 1 : length (child)
                   if( j <= delim (toBeRemoved))
                        child (j) = parent (j);
                   elseif(j > delim (toBeRemoved) && j <= delim(toBeRemoved)+length(toBeAdded))
                        child (j) = toBeAdded (j - delim(toBeRemoved));
                   else
                       child (j + length(toBeAdded)) = parent (j+ lengthToBeRemoved-length(toBeAdded));
                   end

                 end

            case 4
                %removing a transition from a gene (test path)
                 toBeMutated = randi ([1, len]);
                 lengthToBeMutated = delim(toBeMutated+1) - delim(toBeMutated);
                 toBeRemoved = randi ([1,lengthToBeMutated]);
                 child = zeros (1,length(parent)-1);
                  for j = 1 : length (child)
                   if j < (delim (toBeMutated)+ toBeRemoved)
                        child (j) = parent (j);
                   else
                       child (j) = parent (j+1);
                   end
                  end
            case 5
                %adding a transtion to a gene (test path)
                toBeMutated = randi ([1, len]);
                 lengthToBeMutated = delim(toBeMutated+1) - delim(toBeMutated);
                 toBeAdded = randi ([1,lengthToBeMutated]);
                 child = zeros (1,length(parent)+1);
                 for j = 1 : length (child)
                   if j <= (delim (toBeMutated)+ toBeAdded)
                        child (j) = parent (j);
                   elseif (j == (delim (toBeMutated)+ toBeAdded+1))
                       child (j) = randi ([1,NVARS]);
                   else

                       child (j) = parent (j-1);
                   end
                 end
            case 6
                %mutaing a gene (changing a transitoin)
                toBeMutated = randi ([1, len]);
                 lengthToBeMutated = delim(toBeMutated+1) - delim(toBeMutated);
                 toBeChanged = randi ([1,lengthToBeMutated]);
                 child = zeros (1,length(parent));
                 for j = 1 : length (child)
                   if j < (delim (toBeMutated)+ toBeChanged)
                        child (j) = parent (j);
                   elseif (j == (delim (toBeMutated)+ toBeChanged))
                       child (j) = randi ([1,NVARS]);
                   else    
                       child (j) = parent (j);
                   end
                 end
            case 7
                % crossover between to genes of the same chromosome
               toBeXovered1 = randi ([1,len]);
               toBeXovered2 = randi ([1,len]);
               while (toBeXovered1 == toBeXovered2)
                   toBeXovered2 = randi ([1,len]);
               end
               if(toBeXovered1 > toBeXovered2)
                   temp = toBeXovered1;
                   toBeXovered1 = toBeXovered2;
                   toBeXovered2 = temp;
               end
               child = zeros (1,length(parent));
               length1 = delim (toBeXovered1+1) - delim (toBeXovered1);
               length2 = delim (toBeXovered2+1) - delim (toBeXovered2);

               if (length1 <= length2)
                   xoverPoint = randi ([1,length1]);
               else
                   xoverPoint = randi ([1,length2]);
               end
               temp1 = zeros (1,length2);
               temp2 = zeros (1,length1);
               for k=1 : (length(temp1)-1)
                   if ( k <= xoverPoint)
                       temp1(k) = parent(delim(toBeXovered1)+ k);
                   else
                       temp1(k) = parent(delim(toBeXovered2)+ k);
                   end
               end
                for k=1 : (length(temp2)-1)
                   if ( k <= xoverPoint)
                       temp2(k) = parent(delim(toBeXovered2)+ k);
                   else
                       temp2(k) = parent(delim(toBeXovered1)+ k);
                   end
                end
               for k=1 : length (child)
                   if ( k <= delim(toBeXovered1))
                       child (k) = parent (k);
                   elseif ( k > delim(toBeXovered1) && k <= delim(toBeXovered1+1))
                       child (k) = temp2 ( k- delim(toBeXovered1));
                   elseif ( k > delim(toBeXovered1+1) && k <= delim (toBeXovered2))
                       child (k) = parent (k);
                   elseif ( k > delim(toBeXovered2) && k <= delim(toBeXovered2+1))
                       child (k) = temp1 ( k - delim(toBeXovered2));
                   else
                       child (k) = parent (k);
                   end            

               end

        end


        %p = ceil(length(parent) * rand(1,2));
        %child = parent;
        %child(p(1)) = parent(p(2));
        %child(p(2)) = parent(p(1));
        mutationChildren{i} = child; % Normally mutationChildren(i,:)
    end
end