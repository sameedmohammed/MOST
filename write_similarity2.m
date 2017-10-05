function sim = write_similarity2(x)
%disp ( ' In similarity ...')
sim = 0;
delim1 = find (x == 0);

delim = [0,delim1];
myformat = 'sim(%5d, %5d) = %4.2f\n';

for i = 1 : (length(delim)-2)
    for j = i+1 : (length(delim)-1)
        sim = sim + levenshteinSim (x((delim(i)+1):(delim(i+1)-1)),x((delim(j)+1):(delim(j+1)-1)));
        p_sim = levenshteinSim (x((delim(i)+1):(delim(i+1)-1)),x((delim(j)+1):(delim(j+1)-1)));
        fid = fopen('tman-leven.txt','a');
        fprintf(fid, myformat, i,j,p_sim);
        fclose(fid);
    end
end
%disp ( 'back In similarity ...')
end

