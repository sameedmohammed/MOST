function metric = feasibility_metric_counter (x,num_vars,num_counters,num_trans)

    metric = 0;

    i = length(x);
     while(i>0)
        context_vars = zeros (1,num_vars);
        j = i;
        temp1 = relation_matrix(x(1,i),x(1,j));
        metric = metric + temp1(1,2*num_vars+1);
        while(j>1)
            j = j - 1;
            temp2 = relation_matrix(x(1,i),x(1,j));
            metric = metric + temp2(1,2*num_vars+1);
            if(temp2(1,2*num_vars+2) == 1)
                for k = 1 : num_vars
                    if(temp2(1,2*k-1)<0 && context_vars(1,k) == 0)
                        context_vars(1,k) = 1;
                        if(temp2(1,2*k)>0)
                             metric = metric + temp2(1,2*k);
                        end

                    end
                    if(temp2(1,2*k-1)> 0 && context_vars(1,k) == 0)
                         context_vars(1,k) = 1;
                         if(temp2(1,2*k)>0)
                             metric = metric + temp2(1,2*k)+ check(x,i,j,k);
                        end
                    end
                end
            end
           
        end
        disp ('out of while');
        penalty = 0;
        for c = 1 : num_counters
            temp = affectedBy(x(1,i),c);
            if ( temp (1,1) ~= 0)
                penalty = 1;
                list = findSequence(x(1,i),num_trans,num_counters);
                for index = 1 : size (list,1)
                    if (isTripleExisted (x,i, c, list(index,1),list(index,2), list(index,3)))
                        penalty = 0;
                        break;
                    end    
                end
                
            end
            if(penalty)
                metric = 99999999999999;
            end
        end
        i = i - 1;
     end
end