function element = relation_matrix_2 (x,y)

matrix = cell (4,4);
for i = 1 : 4
    for j = 1 :4
        matrix {i,j} = zeros(1,8);
    end
end

matrix{1,1} = [-1,0,-1,0,0,0,16,0];
matrix{2,1} = [-1,0,-1,0,0,0,0,0];
matrix{3,1} = [-1,0,-1,0,0,0,0,0];
matrix{4,1} = [-1,16,-1,16,0,0,0,1];
matrix{3,2} = [0,0,0,0,-2,0,0,1];
matrix{3,3} = [0,0,0,0,0,0,0,0];
matrix{4,2} = [0,0,0,0,-2,0,0,0];
matrix{4,3} = [2,32,0,0,2,0,0,1];

element = matrix{x,y};
end