function sim = compute_similarity_Nei(x)
%disp ( ' In similarity ...')
sim = 0;
delim1 = find (x == 0);
delim = [0,delim1];
maxLength = 0;
for i = 1 : (length(delim)-1)
    temp = delim(i+1) - delim(i)-1;
    if(temp >= maxLength)
        maxLength = temp;
    end
end
sim = maxLength;
end



