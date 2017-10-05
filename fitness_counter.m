function metric = fitness_counter (x,num_counters)

    metric = 0;
    i = length(x);
    while(i>0)
        for c = 1 : num_counters
            temp = affectedBy(x(1,i),c);
            if ( temp (1,1) ~= 0)
                metric = metric + counter_penalty(x(1:i-1),x(1,i),c);
            end
        end
        i = i - 1;
    end
end