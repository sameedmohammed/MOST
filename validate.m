function result = validate (tj, vi, initialiser, updater)
    result = zeros (1,2);
    init = affecting(initialiser,vi);
    counterVar_i = init (1,2);
    temp = affectedBy(tj,vi);
    temp2 = affecting (updater,vi);
    temp3 = affectedBy(updater, vi);
    if(guardCheck(temp(1,1),counterVar_i,temp(1,2)))
        result(1,1) = 1;
        result(1,2) = 0;
    end
    firstBrDistance = 0;
    nextBrDistance = 0;
    loopvar = 0;
    while ( nextBrDistance <= firstBrDistance)
        loopvar = loopvar + 1;
      %  if (loopvar >= 25)
       %     break;
        %end
        firstBrDistance = abs (counterVar_i - temp(1,2));
        if(guardCheck(temp3(1,1),counterVar_i,temp3(1,2)))
            disp('in switch-case');
            switch temp2(1,1)
                case 2
                    counterVar_i = counterVar_i+temp2(1,2);
                case 3
                    counterVar_i = counterVar_i-temp2(1,2);
                case 4
                    counterVar_i = counterVar_i*temp2(1,2);
                case 5
                    counterVar_i = counterVar_i/temp2(1,2);
            end
            result(1,2) = result(1,2)+1;
        else
            break;
        end
        if(guardCheck(temp(1,1),counterVar_i,temp(1,2)))
            result(1,1) = 1;
            disp ('in if salam');
            %nextBrDistance = abs (counterVar_i - temp(1,2));
           break;
        else
           nextBrDistance = abs (counterVar_i - temp(1,2)); 
        end
        
    end 
end