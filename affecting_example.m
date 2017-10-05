function element = affecting(x,y)

matrix = cell (22,4);
for i = 1 : 22
    for j = 1 : 4
        matrix {i,j} = zeros(1,2);
    end
end
matrix{1,1} = [1,0];
matrix{2,2} = [1,0];
matrix{3,3} = [1,0];
matrix{3,4} = [1,0];
matrix{5,1} = [2,1];
matrix{11,2} = [2,1];
matrix{15,2} = [1,0];
matrix{17,3} = [2,1];
matrix{20,4} = [2,1];
matrix{22,3} = [1,0];
matrix{22,4} = [1,0];

element = matrix{x,y};
end
