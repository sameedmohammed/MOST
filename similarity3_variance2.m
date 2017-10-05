function variance = similarity3_variance2(x)
%disp ( ' In similarity ...')
variance = 0;
num = 0;
sim = 0;
mean = 0;
delim1 = find (x == 0);
delim = [0,delim1];
for i = 1 : (length(delim)-2)
    for j = i+1 : (length(delim)-1)
        num = num+1;
        if(delim(i)+1 == delim(i+1) || delim(j)+1 == delim(j+1))
            sim = sim + 0;
        else
            sim = sim + glSim (x((delim(i)+1):(delim(i+1)-1)),x((delim(j)+1):(delim(j+1)-1)));
            disp('in else');
        end
    end
end
if(num ~=0)
    mean = sim / num;
end
for i = 1 : (length(delim)-2)
    for j = i+1 : (length(delim)-1)
        if(delim(i)+1 == delim(i+1) || delim(j)+1 == delim(j+1))
            variance = variance + 0;
        else
            variance = (glSim (x((delim(i)+1):(delim(i+1)-1)),x((delim(j)+1):(delim(j+1)-1)))- mean)^2;
        end
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

