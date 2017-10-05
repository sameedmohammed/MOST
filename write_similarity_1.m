function sim = write_similarity_1(x , nvar)
%disp ( ' In similarity ...')
sim = 0;
delim1 = find (x == 0);
delim = [0,delim1];

myformat = 'sim(%5d, %5d) = %4.2f\n';

for i = 1 : (length(delim)-2)
    for j = i+1 : (length(delim)-1)
        if(delim(i)+1 == delim(i+1) || delim(j)+1 == delim(j+1))
            sim = sim + 0;
        else
            sim = sim + HammingSim (x((delim(i)+1):(delim(i+1)-1)),x((delim(j)+1):(delim(j+1)-1)), nvar);
            p_sim = HammingSim (x((delim(i)+1):(delim(i+1)-1)),x((delim(j)+1):(delim(j+1)-1)), nvar);
            fid = fopen('tman-hamming.txt','a');
            fprintf(fid, myformat, i,j,p_sim);
            fclose(fid);
        end
    end
end
%disp ( 'back In similarity ...')
end

