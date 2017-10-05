for i = 1 : 21
    for j = 1 :21
        temp = relation_matrix(i,j);
        if( size(temp) <8)
        disp(i);
        disp(j);
        end
    end
end