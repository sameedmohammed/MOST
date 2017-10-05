function element = affecting1(x,y)

matrix = cell (10,2);
for i = 1 : 10
    for j = 1 :2
        matrix {i,j} = zeros(1,2);
    end
end

matrix{1,1} = [1,0];
matrix{2,1} = [0,0];
matrix{3,1} = [2,1];
matrix{4,1} = [0,0];
matrix{5,1} = [1,0];
matrix{6,1} = [0,0];
matrix{7,1} = [0,0];
matrix{8,1} = [2,1];
matrix{9,1} = [0,0];
matrix{10,1} = [2,1];

element = matrix{x,y};
end
