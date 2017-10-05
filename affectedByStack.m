function element = affectedByStack(x,y)

matrix = cell (8,1);
for i = 1 : 8
    for j = 1 :1
        matrix {i,j} = zeros(1,2);
    end
end

matrix{3,1} = [3,3];
matrix{4,1} = [2,1];
matrix{5,1} = [1,1];
matrix{6,1} = [1,3];

element = matrix{x,y};
end