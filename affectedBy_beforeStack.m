function element = affectedBy_beforeStack(x,y)

matrix = cell (13,2);
for i = 1 : 13
    for j = 1 :2
        matrix {i,j} = zeros(1,2);
    end
end

matrix{3,1} = [1,1];
matrix{4,1} = [2,1];
matrix{5,1} = [3,3];
matrix{6,1} = [1,3];
matrix{8,2} = [3,1];
matrix{11,2} = [4,1];


element = matrix{x,y};
end