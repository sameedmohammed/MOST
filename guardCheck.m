function result = guardCheck ( guardCode, counterVar, guardConst)
result = 0;
switch guardCode
    case 0
        result = 1;
    case 1
        if(counterVar == guardConst)
            result = 1;
        end
    case 2
        if(counterVar > guardConst)
            result = 1;
        end
    case 3
        if(counterVar < guardConst)
            result = 1;
        end
    case 4
        if(counterVar >= guardConst)
            result = 1;
        end
    case 5
        if(counterVar <= guardConst)
            result = 1;
        end
    case 6
        if(counterVar ~= guardConst)
            result = 1;
        end
end
        

