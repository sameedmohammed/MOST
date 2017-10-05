function metric = counter_penalty (x,index,counter)

    metric = 0;
    counter_value = 0;
 
        for i = 1 : length(x)
            temp = affecting(x(1,i),counter);
            if ( temp (1,1) ~= 0)
                switch temp(1,1)
                case 1
                    counter_value = temp(1,2);
                case 2
                    counter_value = counter_value+temp(1,2);
                case 3
                    counter_value = counter_value-temp(1,2);
                case 4
                    counter_value = counter_value*temp(1,2);
                case 5
                    counter_value = counter_value/temp(1,2);
                end
            end

        end
        
        temp = affectedBy(index,counter);
        disp (counter_value);
        disp(temp);
        switch temp(1,1)
            case 0
                metric = 0;
            case 1
                if(counter_value == temp(1,2))
                    metric = 0;
                else
                    metric = abs(counter_value - temp(1,2))*10000;
                end
            case 2
                if(counter_value > temp(1,2))
                    metric = 0;
                else
                    metric = (abs(counter_value - temp(1,2))+1)*10000;
                end
            case 3
                if(counter_value < temp(1,2))
                    metric = 0;
                else
                    metric = (abs(counter_value - temp(1,2))+1)*10000;
                end
            case 4
                if(counter_value >= temp(1,2))
                    metric = 0;
                else
                    metric = abs(counter_value - temp(1,2))*10000;
                end
            case 5
                if(counter_value <= temp(1,2))
                    metric = 0;
                else
                    metric = abs(counter_value - temp(1,2))*10000;
                end
            case 6
                if(counter_value ~= temp(1,2))
                    metric = 0;
                else
                    metric = 10000;
                end
        end
end