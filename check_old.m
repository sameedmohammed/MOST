function penalty = check_old (tp, x, y, v)

    penalty = 0;
    found = 0;

    p = y+1;

    while ( p>1 && found == 0)

        p = p-1;
        temp = relation_matrix_class2_old(tp(1,x),tp(1,p));
        if(temp(1,2*v-1) ~= 0)
            switch temp(1,2*v-1)
                case -2
                    penalty = penalty + 60;
                case -1
                    penalty = penalty + 20;
                otherwise
                    penalty = penalty + 40 + check (tp,p,p-1,temp(1,2*v-1));
            end
            found = 1; 
        end

    end
     if (found == 0)
            penalty = penalty + 60;
     end
end
        