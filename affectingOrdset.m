function element = affectingOrdset(x,y)

matrix = cell (13,2);
for i = 1 : 13
    for j = 1 :2
        matrix {i,j} = zeros(1,2);
    end
end
matrix{1,1} = [1,0];
matrix{1,2} = [1,0];
matrix{2,1} = [1,1];
matrix{3,1} = [1,0];
matrix{4,1} = [3,1];
matrix{5,1} = [2,1];
matrix{6,1} = [2,1];
matrix{7,1} = [3,1];
matrix{8,1} = [1,1];
matrix{8,2} = [2,1];
matrix{11,1} = [2,1];
matrix{11,2} = [2,1];

element = matrix{x,y};
end
