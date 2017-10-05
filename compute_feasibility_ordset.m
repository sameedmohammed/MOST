function feasibility = compute_feasibility_ordset(x)
feasibility = 0;
num_vars = 3;
num_trans = 13;
num_counters = 2;
delim1 = find (x == 0);
delim = [0,delim1];
for i = 1 : (length(delim)-1)
    
       feasibility = feasibility + feasibility_metric_counter(x((delim(i)+1):(delim(i+1)-1)),num_vars,num_counters,num_trans );
       %disp(x((delim(i)+1):(delim(i+1)-1)));
    
end
end