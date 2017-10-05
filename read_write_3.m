function result = read_write_3(generation)
    filename1 = 'scores-3-2.xlsx';
    num = zeros(generation,2);
    result = zeros(2,1);
    for i = 1 : generation
        disp(i)
        num(i,1) = xlsread (filename1,i,'G1:G1');
        num(i,2) = xlsread (filename1,i,'N1:N1');
       result(1,1)= result(1,1) + num(i,1);
       result(2,1)= result(2,1) + num(i,2);
    end
plot(num);
end