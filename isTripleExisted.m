function result = isTripleExisted (TP,pos, vi, initializer,updater, updaterTimes)

result = 0;
k = -1;
count = 0;
i = pos-1;
temp2 = affectedBy (TP(pos),vi);
while (i >=1)
    if (TP(i) == initializer)
        k = i;
        break;
    end
    i = i -1 ; 
end
if(k < 0)
    return;
end
if (updaterTimes > 0)
    for j = k+1 : pos-1
        temp = affecting (TP(j),vi);
      %  temp2 = affectedBy (TP(pos),vi);
        if (TP(j)== updater)
            count = count + 1;
        elseif(temp (1,1) ~= 0 )
            count = 0;
            continue;
        end
    end
    if ( count == updaterTimes)
        result = 1;
        return;
    elseif( count < updaterTimes && temp2(1,1) == 3 )
        result = 1;
        return;
    elseif( count > updaterTimes && temp2(1,1) == 2 )
        result = 1;
        return;
    else
        return;
    end
    
else
    for j = k+1 : pos -1
        temp = affecting (TP(j),vi);
        if(temp (1,1) ~= 0 )
            return;
        end
    end 
    result = 1;
end

end