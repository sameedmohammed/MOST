function variance = similarity2_variance4(x)
%disp ( ' In similarity ...')
variance = 0;
sim = 0;
num = 0;
delim1 = find (x == 0);
delim = [0,delim1];
for i = 1 : (length(delim)-2)
    for j = i+1 : (length(delim)-1)
        sim = sim + levenshteinSim (x((delim(i)+1):(delim(i+1)-1)),x((delim(j)+1):(delim(j+1)-1)));
        num = num + 1;
    end
end
mean = sim / num;
if (mean == 0 )
    variance = -10000;
else
    for i = 1 : (length(delim)-2)
        for j = i+1 : (length(delim)-1)
            variance = variance + (levenshteinSim (x((delim(i)+1):(delim(i+1)-1)),x((delim(j)+1):(delim(j+1)-1)))- mean)^2;
        end
    end
    if(num > 1)
        variance = variance / (num-1);
    end
    if (variance ~= 0)
        variance = 0 - variance;
    else
        variance = -10000;
    end
%disp ( 'back In similarity ...')
end
end

