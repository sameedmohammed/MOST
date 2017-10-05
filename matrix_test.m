for i = 1 : 24
    for j = 1 :24
        if (size(relation_matrix(i,j))== [1,7])
            disp(i);
            disp(j);
        end
    end
end