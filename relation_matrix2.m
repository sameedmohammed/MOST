function element = relation_matrix2 (x,y)

matrix = cell (5,5);
num_context_variable = 3;

for i = 1 : 5
    for j = 1 :5
        matrix {i,j} = randi ([0,6],1,2*num_context_variable+2);
    end
end
element = matrix{x,y};
end