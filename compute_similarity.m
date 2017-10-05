function sim = compute_similarity(x)
%disp ( ' In similarity ...')
sim = 0;
delim1 = find (x == 0);
delim = [0,delim1];
for i = 1 : (length(delim)-2)
    for j = i+1 : (length(delim)-1)
        sim = sim + levenshteinSim ((x(delim(i)+1):x(delim(i+1))),(x(delim(j)+1):x(delim(j+1))));
    end
end
%disp ( 'back In similarity ...')
end

