function metric = feasibility_metric_old (x,num_vars)

    metric = 0;

    i = length(x);
     while(i>0)
        context_vars = zeros (1,num_vars);
        j = i;
        temp1 = relation_matrix_class2_old(x(1,i),x(1,j));
        metric = metric + temp1(1,2*num_vars+1);
        while(j>1)
            j = j - 1;
            temp2 = relation_matrix_class2_old(x(1,i),x(1,j));
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
                             metric = metric + temp2(1,2*k)+ check_old(x,i,j,k);
                        end
                    end
                end
            end
           
        end
         i = i - 1;
     end
end