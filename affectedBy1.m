function element = affectedBy1(x,y)

matrix = cell (10,2);
for i = 1 : 10
    for j = 1 :2
        matrix {i,j} = zeros(1,2);
    end
end

matrix{3,1} = [3,4];
matrix{4,1} = [4,4];
matrix{5,1} = [0,0];
matrix{6,1} = [0,0];
matrix{7,1} = [0,0];
matrix{8,1} = [3,4];
matrix{9,1} = [0,0];
matrix{10,1} = [3,4];

element = matrix{x,y};
end