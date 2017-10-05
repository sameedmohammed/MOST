function sim = compute_similarity_3(x)
%disp ( ' In similarity ...')
sim = 0;
delim1 = find (x == 0);
delim = [0,delim1];

for i = 1 : (length(delim)-2)
    for j = i+1 : (length(delim)-1)
        if(delim(i)+1 == delim(i+1) || delim(j)+1 == delim(j+1))
            sim = sim + 0;
        else
            sim = sim + glSim (x((delim(i)+1):(delim(i+1)-1)),x((delim(j)+1):(delim(j+1)-1)));
        end
    end
end
%disp ( 'back In similarity ...')
end

