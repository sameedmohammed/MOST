function element = affecting(x,y)

matrix = cell (8,1);
for i = 1 : 8
    for j = 1 :2
        matrix {i,j} = zeros(1,2);
    end
end
matrix{1,1} = [1,0];
matrix{2,1} = [1,1];
matrix{3,1} = [2,1];
matrix{4,1} = [3,1];
matrix{5,1} = [1,0];
matrix{6,1} = [2,1];
matrix{8,1} = [3,1];

element = matrix{x,y};
end
