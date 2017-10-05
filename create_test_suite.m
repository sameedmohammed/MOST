function test_suite = create_test_suite(cost, maxOutgoing , nVars)
%creates chromosomes of given length
 test_suite = zeros (1 , nVars);
if (cost == 0)
   for i = 1: nVars
        test_suite(i) = -1;
    end 
else

    index = 1;
    len = 1;
    temp = zeros(1,4*cost);
    while(index <= cost)
        temp (len) = randi ([0, maxOutgoing]);
        
        if(temp(len) ~= 0)
            index = index + 1;
        end
        len = len +1 ;
    end
    test_suite = zeros (1 , nVars);
    if(len > nVars)
        len = nVars;
    end
    for i = 1: len
        test_suite(i) = temp(i);
    end
    for i = len+1: nVars
        test_suite(i) = -1;
    end
end
    
end
