function element = affectedBy_example(x,y)

matrix = cell (22,4);
for i = 1 : 22
    for j = 1 : 4
        matrix {i,j} = zeros(1,2);
    end
end

matrix{5,1} = [3,3];
matrix{6,1} = [1,3];
matrix{14,2} = [1,3];
matrix{17,3} = [3,2];
matrix{18,3} = [1,2];
matrix{20,4} = [3,2];
matrix{21,4} = [1,2];


element = matrix{x,y};
end