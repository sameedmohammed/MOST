function penalty = compute_counter(x,num_counters)
penalty = 0;
delim1 = find (x == 0);
delim = [0,delim1];
for i = 1 : (length(delim)-1)   
    penalty = penalty + fitness_counter(x((delim(i)+1):(delim(i+1)-1)),num_counters);  
end
end