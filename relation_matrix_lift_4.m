function element = relation_matrix_lift_4(x,y)

matrix = cell (24,24);
for i = 1 : 24
    for j = 1 :24
        matrix {i,j} = zeros(1,8);
    end
end

matrix{1,1} = [-2,999999,0,0,0,0,8,1];
matrix{2,2} = [-2,999999,0,0,0,0,8,1];
matrix{3,3} = [0,40,0,40,0,0,28,0];
matrix{4,4} = [0,40,0,40,0,0,28,0];
matrix{5,5} = [0,40,0,40,0,0,28,0];
matrix{6,6} = [0,40,0,40,0,0,28,0];
matrix{7,7} = [-2,999999,0,0,0,0,8,1];
matrix{8,8} = [-2,999999,0,0,0,0,8,1];
matrix{9,9} = [0,40,0,40,0,0,28,0];
matrix{10,10} = [0,40,0,40,0,0,28,0];
matrix{11,11} = [0,40,0,40,0,0,28,0];
matrix{12,12} = [0,40,0,40,0,0,28,0];
matrix{13,13} = [-2,999999,0,0,0,0,8,1];
matrix{14,14} = [-2,999999,0,0,0,0,8,1];
matrix{15,15} = [0,40,0,40,0,0,28,0];
matrix{16,16} = [0,40,0,40,0,0,28,0];
matrix{17,17} = [0,40,0,40,0,0,28,0];
matrix{18,18} = [0,40,0,40,0,0,28,0];
matrix{19,19} = [0,40,0,40,0,0,28,0];
matrix{20,20} = [0,40,0,0,0,0,12,0];
matrix{21,21} = [0,40,0,0,0,0,12,0];
matrix{22,22} = [0,40,0,40,0,0,28,0];
matrix{23,23} = [0,40,0,40,0,0,28,0];
matrix{24,24} = [0,40,0,0,0,0,12,0];

matrix{1,2} = [-2,0,0,0,0,0,8,1];
matrix{1,3} = [0,40,0,0,0,0,8,0];
matrix{1,4} = [0,40,0,0,0,0,8,0];
matrix{1,5} = [0,40,0,0,0,0,8,0];
matrix{1,6} = [0,40,0,0,0,0,8,0];
matrix{1,7} = [-2,999999,0,0,0,0,8,1];
matrix{1,8} = [-2,0,0,0,0,0,8,1];
matrix{1,9} = [0,40,0,0,0,0,8,0];
matrix{1,10} = [0,40,0,0,0,0,8,0];
matrix{1,11} = [0,40,0,0,0,0,8,0];
matrix{1,12} = [0,40,0,0,0,0,8,0];
matrix{1,13} = [-2,999999,0,0,0,0,8,1];
matrix{1,14} = [-2,0,0,0,0,0,8,1];
matrix{1,15} = [0,40,0,0,0,0,8,0];
matrix{1,16} = [0,40,0,0,0,0,8,0];
matrix{1,17} = [0,40,0,0,0,0,8,0];
matrix{1,18} = [0,40,0,0,0,0,8,0];
matrix{1,19} = [0,40,0,0,0,0,8,0];
matrix{1,20} = [0,40,0,0,0,0,8,0];
matrix{1,21} = [0,40,0,0,0,0,8,0];
matrix{1,22} = [0,40,0,0,0,0,8,0];
matrix{1,23} = [0,40,0,0,0,0,8,0];
matrix{1,24} = [0,40,0,0,0,0,8,0];

matrix{2,1} = [-2,0,0,0,0,0,8,1];
matrix{2,3} = [0,40,0,0,0,0,8,0];
matrix{2,4} = [0,40,0,0,0,0,8,0];
matrix{2,5} = [0,40,0,0,0,0,8,0];
matrix{2,6} = [0,40,0,0,0,0,8,0];
matrix{2,7} = [-2,0,0,0,0,0,8,1];
matrix{2,8} = [-2,999999,0,0,0,0,8,1];
matrix{2,9} = [0,40,0,0,0,0,8,0];
matrix{2,10} = [0,40,0,0,0,0,8,0];
matrix{2,11} = [0,40,0,0,0,0,8,0];
matrix{2,12} = [0,40,0,0,0,0,8,0];
matrix{2,13} = [-2,0,0,0,0,0,8,1];
matrix{2,14} = [-2,999999,0,0,0,0,8,1];
matrix{2,15} = [0,40,0,0,0,0,8,0];
matrix{2,16} = [0,40,0,0,0,0,8,0];
matrix{2,17} = [0,40,0,0,0,0,8,0];
matrix{2,18} = [0,40,0,0,0,0,8,0];
matrix{2,19} = [0,40,0,0,0,0,8,0];
matrix{2,20} = [0,40,0,0,0,0,8,0];
matrix{2,21} = [0,40,0,0,0,0,8,0];
matrix{2,22} = [0,40,0,0,0,0,8,0];
matrix{2,23} = [0,40,0,0,0,0,8,0];
matrix{2,24} = [0,40,0,0,0,0,8,0];

matrix{3,1} = [-2,999999,0,40,0,0,28,1];
matrix{3,2} = [-2,0,-1,36,0,0,28,1];
matrix{3,4} = [0,40,0,40,0,0,28,0];
matrix{3,5} = [0,40,-2,999999,0,0,28,1];
matrix{3,6} = [0,40,-2,999999,0,0,28,1];
matrix{3,7} = [-2,999999,0,40,0,0,28,1];
matrix{3,8} = [-2,0,-1,36,0,0,28,1];
matrix{3,9} = [0,40,0,40,0,0,28,0];
matrix{3,10} = [0,40,0,40,0,0,28,0];
matrix{3,11} = [0,40,-2,999999,0,0,28,1];
matrix{3,12} = [0,40,-2,999999,0,0,28,1];
matrix{3,13} = [-2,999999,0,40,0,0,28,1];
matrix{3,14} = [-2,0,-1,36,0,0,28,1];
matrix{3,15} = [0,40,0,40,0,0,28,0];
matrix{3,16} = [0,40,0,40,0,0,28,0];
matrix{3,17} = [0,40,-2,999999,0,0,28,1];
matrix{3,18} = [0,40,-2,999999,0,0,28,1];
matrix{3,19} = [0,40,0,40,0,0,28,0];
matrix{3,20} = [0,40,0,40,0,0,28,0];
matrix{3,21} = [0,40,0,40,0,0,28,0];
matrix{3,22} = [0,40,0,40,0,0,28,0];
matrix{3,23} = [0,40,0,40,0,0,28,0];
matrix{3,24} = [0,40,0,40,0,0,28,0];

matrix{4,1} = [-2,999999,0,40,0,0,28,1];
matrix{4,2} = [-2,0,-1,36,0,0,28,1];
matrix{4,3} = [0,40,0,40,0,0,28,1];
matrix{4,5} = [0,40,-2,999999,0,0,28,1];
matrix{4,6} = [0,40,-2,999999,0,0,28,1];
matrix{4,7} = [-2,999999,0,40,0,0,28,1];
matrix{4,8} = [-2,0,-1,36,0,0,28,1];
matrix{4,9} = [0,40,0,40,0,0,28,1];
matrix{4,10} = [0,40,0,40,0,0,28,1];
matrix{4,11} = [0,40,-2,999999,0,0,28,1];
matrix{4,12} = [0,40,-2,999999,0,0,28,1];
matrix{4,13} = [-2,999999,0,48,0,0,28,1];
matrix{4,14} = [-2,0,-1,36,0,0,28,1];
matrix{4,15} = [0,40,0,40,0,0,28,0];
matrix{4,16} = [0,40,0,40,0,0,28,0];
matrix{4,17} = [0,40,-2,999999,0,0,28,1];
matrix{4,18} = [0,40,-2,999999,0,0,28,1];
matrix{4,19} = [0,40,0,40,0,0,28,0];
matrix{4,20} = [0,40,0,40,0,0,28,0];
matrix{4,21} = [0,40,0,40,0,0,28,0];
matrix{4,22} = [0,40,0,40,0,0,28,0];
matrix{4,23} = [0,40,0,40,0,0,28,0];
matrix{4,24} = [0,40,0,40,0,0,28,0];

matrix{5,1} = [-2,999999,0,40,0,0,28,1];
matrix{5,2} = [-2,0,-1,30,0,0,28,1];
matrix{5,3} = [0,40,-2,999999,0,0,28,1];
matrix{5,4} = [0,40,-2,999999,0,0,28,1];
matrix{5,6} = [0,40,0,40,0,0,28,0];
matrix{5,7} = [-2,999999,0,40,0,0,28,1];
matrix{5,8} = [-2,0,-1,30,0,0,28,1];
matrix{5,9} = [0,40,-2,999999,0,0,28,1];
matrix{5,10} = [0,40,-2,999999,0,0,28,1];
matrix{5,11} = [0,40,0,40,0,0,28,0];
matrix{5,12} = [0,40,0,40,0,0,28,0];
matrix{5,13} = [-2,999999,0,40,0,0,28,1];
matrix{5,14} = [-2,0,-1,30,0,0,28,1];
matrix{5,15} = [0,40,-2,999999,0,0,28,1];
matrix{5,16} = [0,40,-2,999999,0,0,28,1];
matrix{5,17} = [0,40,0,40,0,0,28,0];
matrix{5,18} = [0,40,0,40,0,0,28,0];
matrix{5,19} = [0,40,-2,999999,0,0,28,1];
matrix{5,20} = [0,40,0,40,0,0,28,0];
matrix{5,21} = [0,40,0,40,0,0,28,0];
matrix{5,22} = [0,40,-2,999999,0,0,28,1];
matrix{5,23} = [0,40,-2,999999,0,0,28,1];
matrix{5,24} = [0,40,0,40,0,0,28,0];

matrix{6,1} = [-2,999999,0,40,0,0,28,1];
matrix{6,2} = [-2,0,-1,30,0,0,28,1];
matrix{6,3} = [0,40,-2,999999,0,0,28,1];
matrix{6,4} = [0,40,-2,999999,0,0,28,1];
matrix{6,5} = [0,40,0,40,0,0,28,0];
matrix{6,7} = [-2,999999,0,0,0,0,28,1];
matrix{6,8} = [-2,0,-1,30,0,0,28,1];
matrix{6,9} = [0,40,-2,999999,0,0,28,1];
matrix{6,10} = [0,40,-2,999999,0,0,28,1];
matrix{6,11} = [0,40,0,40,0,0,28,0];
matrix{6,12} = [0,40,0,40,0,0,28,0];
matrix{6,13} = [-2,999999,0,40,0,0,28,1];
matrix{6,14} = [-2,0,-1,30,0,0,28,1];
matrix{6,15} = [0,40,-2,999999,0,0,28,1];
matrix{6,16} = [0,40,-2,999999,0,0,28,1];
matrix{6,17} = [0,40,0,40,0,0,28,0];
matrix{6,18} = [0,40,0,40,0,0,28,0];
matrix{6,19} = [0,40,-2,999999,0,0,28,1];
matrix{6,20} = [0,40,0,40,0,0,28,0];
matrix{6,21} = [0,40,0,40,0,0,28,0];
matrix{6,22} = [0,40,-2,999999,0,0,28,1];
matrix{6,23} = [0,40,-2,999999,0,0,28,1];
matrix{6,24} = [0,40,0,40,0,0,28,0];

matrix{7,1} = [-2,999999,0,0,0,0,8,1];
matrix{7,2} = [-2,0,0,0,0,0,8,1];
matrix{7,3} = [0,40,0,0,0,0,8,0];
matrix{7,4} = [0,40,0,0,0,0,8,0];
matrix{7,5} = [0,40,0,0,0,0,8,0];
matrix{7,6} = [0,40,0,0,0,0,8,0];
matrix{7,8} = [-2,0,0,0,0,0,8,1];
matrix{7,9} = [0,40,0,0,0,0,8,0];
matrix{7,10} = [0,40,0,0,0,0,8,0];
matrix{7,11} = [0,40,0,0,0,0,8,0];
matrix{7,12} = [0,40,0,0,0,0,8,0];
matrix{7,13} = [-2,999999,0,0,0,0,8,1];
matrix{7,14} = [-2,0,0,0,0,0,8,1];
matrix{7,15} = [0,40,0,0,0,0,8,0];
matrix{7,16} = [0,40,0,0,0,0,8,0];
matrix{7,17} = [0,40,0,0,0,0,8,0];
matrix{7,18} = [0,40,0,0,0,0,8,0];
matrix{7,19} = [0,40,0,0,0,0,8,0];
matrix{7,20} = [0,40,0,0,0,0,8,0];
matrix{7,21} = [0,40,0,0,0,0,8,0];
matrix{7,22} = [0,40,0,0,0,0,8,0];
matrix{7,23} = [0,40,0,0,0,0,8,0];
matrix{7,24} = [0,40,0,0,0,0,8,0];   

matrix{8,1} = [-2,0,0,0,0,0,8,1];
matrix{8,2} = [-2,999999,0,0,0,0,8,1];
matrix{8,3} = [0,40,0,0,0,0,8,0];
matrix{8,4} = [0,40,0,0,0,0,8,0];
matrix{8,5} = [0,40,0,0,0,0,8,0];
matrix{8,6} = [0,40,0,0,0,0,8,0];
matrix{8,7} = [-2,0,0,0,0,0,8,1];
matrix{8,9} = [0,40,0,0,0,0,8,0];
matrix{8,10} = [0,40,0,0,0,0,8,0];
matrix{8,11} = [0,40,0,0,0,0,8,0];
matrix{8,12} = [0,40,0,0,0,0,8,0];
matrix{8,13} = [-2,0,0,0,0,0,8,1];
matrix{8,14} = [-2,999999,0,0,0,0,8,1];
matrix{8,15} = [0,40,0,0,0,0,8,0];
matrix{8,16} = [0,40,0,0,0,0,8,0];
matrix{8,17} = [0,40,0,0,0,0,8,0];
matrix{8,18} = [0,40,0,0,0,0,8,0];
matrix{8,19} = [0,40,0,0,0,0,8,0];
matrix{8,20} = [0,40,0,0,0,0,8,0];
matrix{8,21} = [0,40,0,0,0,0,8,0];
matrix{8,22} = [0,40,0,0,0,0,8,0];
matrix{8,23} = [0,40,0,0,0,0,8,0];
matrix{8,24} = [0,40,0,0,0,0,8,0];

matrix{9,1} = [-2,999999,0,40,0,0,28,1];
matrix{9,2} = [-2,0,-1,36,0,0,28,1];
matrix{9,3} = [0,40,0,40,0,0,28,0];
matrix{9,4} = [0,40,0,40,0,0,28,0];
matrix{9,5} = [0,40,-2,999999,0,0,28,1];
matrix{9,6} = [0,40,-2,999999,0,0,28,1];
matrix{9,7} = [-2,999999,0,40,0,0,28,1];
matrix{9,8} = [-2,0,-1,36,0,0,28,1];
matrix{9,10} = [0,40,0,40,0,0,28,0];
matrix{9,11} = [0,40,-2,999999,0,0,28,1];
matrix{9,12} = [0,40,-2,999999,0,0,28,1];
matrix{9,13} = [-2,999999,0,40,0,0,28,1];
matrix{9,14} = [-2,0,-1,36,0,0,28,1];
matrix{9,15} = [0,40,0,40,0,0,28,0];
matrix{9,16} = [0,40,0,40,0,0,28,0];
matrix{9,17} = [0,40,-2,999999,0,0,28,1];
matrix{9,18} = [0,40,-2,999999,0,0,28,1];
matrix{9,19} = [0,40,0,40,0,0,28,0];
matrix{9,20} = [0,40,0,40,0,0,28,0];
matrix{9,21} = [0,40,0,40,0,0,28,0];
matrix{9,22} = [0,40,0,40,0,0,28,0];
matrix{9,23} = [0,40,0,40,0,0,28,0];
matrix{9,24} = [0,40,0,40,0,0,28,0];

matrix{10,1} = [-2,999999,0,40,0,0,28,1];
matrix{10,2} = [-2,0,-1,36,0,0,28,1];
matrix{10,3} = [0,40,0,40,0,0,28,0];
matrix{10,4} = [0,40,0,40,0,0,28,0];
matrix{10,5} = [0,40,-2,999999,0,0,28,1];
matrix{10,6} = [0,40,-2,999999,0,0,281];
matrix{10,7} = [-2,999999,0,40,0,0,28,1];
matrix{10,8} = [-2,0,-1,36,0,0,28,1];
matrix{10,9} = [0,40,0,40,0,0,28,0];
matrix{10,11} = [0,40,-2,999999,0,0,28,1];
matrix{10,12} = [0,40,-2,999999,0,0,28,1];
matrix{10,13} = [-2,999999,0,40,0,0,28,1];
matrix{10,14} = [-2,0,-1,36,0,0,28,1];
matrix{10,15} = [0,40,0,40,0,0,28,0];
matrix{10,16} = [0,40,0,40,0,0,28,0];
matrix{10,17} = [0,40,-2,999999,0,0,28,1];
matrix{10,18} = [0,40,-2,999999,0,0,28,1];
matrix{10,19} = [0,40,0,40,0,0,28,0];
matrix{10,20} = [0,40,0,40,0,0,28,0];
matrix{10,21} = [0,40,0,40,0,0,28,0];
matrix{10,22} = [0,40,0,40,0,0,28,0];
matrix{10,23} = [0,40,0,40,0,0,28,0];
matrix{10,24} = [0,40,0,40,0,0,28,0];

matrix{11,1} = [-2,999999,0,40,0,0,28,1];
matrix{11,2} = [-2,0,-1,30,0,0,28,1];
matrix{11,3} = [0,40,-2,999999,0,0,28,1];
matrix{11,4} = [0,40,-2,999999,0,0,28,1];
matrix{11,5} = [0,40,0,40,0,0,28,0];
matrix{11,6} = [0,40,0,40,0,0,28,0];
matrix{11,7} = [-2,999999,0,40,0,0,28,1];
matrix{11,8} = [-2,0,-1,30,0,0,28,1];
matrix{11,9} = [0,40,-2,999999,0,0,28,1];
matrix{11,10} = [0,40,-2,999999,0,0,28,1];
matrix{11,12} = [0,40,0,40,0,0,28,0];
matrix{11,13} = [-2,999999,0,40,0,0,28,1];
matrix{11,14} = [-2,0,-1,30,0,0,28,1];
matrix{11,15} = [0,40,-2,999999,0,0,28,1];
matrix{11,16} = [0,40,-2,999999,0,0,28,1];
matrix{11,17} = [0,40,0,40,0,0,28,0];
matrix{11,18} = [0,40,0,40,0,0,28,0];
matrix{11,19} = [0,40,-2,999999,0,0,28,1];
matrix{11,20} = [0,40,0,40,0,0,28,0];
matrix{11,21} = [0,40,0,40,0,0,28,0];
matrix{11,22} = [0,40,-2,999999,0,0,28,1];
matrix{11,23} = [0,40,-2,999999,0,0,28,1];
matrix{11,24} = [0,40,0,40,0,0,28,0];

matrix{12,1} = [-2,999999,0,40,0,0,28,1];
matrix{12,2} = [-2,0,-1,30,0,0,28,1];
matrix{12,3} = [0,40,-2,999999,0,0,28,1];
matrix{12,4} = [0,40,-2,999999,0,0,28,1];
matrix{12,5} = [0,40,0,40,0,0,28,0];
matrix{12,6} = [0,40,0,40,0,0,28,0];
matrix{12,7} = [-2,999999,0,0,0,0,28,1];
matrix{12,8} = [-2,0,-1,30,0,0,28,1];
matrix{12,9} = [0,40,-2,999999,0,0,28,1];
matrix{12,10} = [0,40,-2,999999,0,0,28,1];
matrix{12,11} = [0,40,0,40,0,0,28,0];
matrix{12,13} = [-2,999999,0,0,0,0,28,1];
matrix{12,14} = [-2,0,-1,30,0,0,28,1];
matrix{12,15} = [0,40,-2,999999,0,0,28,1];
matrix{12,16} = [0,40,-2,999999,0,0,28,1];
matrix{12,17} = [0,40,0,40,0,0,28,0];
matrix{12,18} = [0,40,0,40,0,0,28,0];
matrix{12,19} = [0,40,-2,999999,0,0,28,1];
matrix{12,20} = [0,40,0,40,0,0,28,0];
matrix{12,21} = [0,40,0,40,0,0,28,0];
matrix{12,22} = [0,40,-2,999999,0,0,28,1];
matrix{12,23} = [0,40,-2,999999,0,0,28,1];
matrix{12,24} = [0,40,0,40,0,0,28,0];

matrix{13,1} = [-2,999999,0,0,0,0,8,1];
matrix{13,2} = [-2,0,0,0,0,0,8,1];
matrix{13,3} = [0,40,0,0,0,0,8,0];
matrix{13,4} = [0,40,0,0,0,0,8,0];
matrix{13,5} = [0,40,0,0,0,0,8,0];
matrix{13,6} = [0,40,0,0,0,0,8,0];
matrix{13,7} = [-2,999999,0,0,0,0,8,1];
matrix{13,8} = [-2,0,0,0,0,0,8,1];
matrix{13,9} = [0,40,0,0,0,0,8,0];
matrix{13,10} = [0,40,0,0,0,0,8,0];
matrix{13,11} = [0,40,0,0,0,0,8,0];
matrix{13,12} = [0,40,0,0,0,0,8,0];
matrix{13,14} = [-2,0,0,0,0,0,8,1];
matrix{13,15} = [0,40,0,0,0,0,8,0];
matrix{13,16} = [0,40,0,0,0,0,8,0];
matrix{13,17} = [0,40,0,0,0,0,8,0];
matrix{13,18} = [0,40,0,0,0,0,8,0];
matrix{13,19} = [0,40,0,0,0,0,8,0];
matrix{13,20} = [0,40,0,0,0,0,8,0];
matrix{13,21} = [0,40,0,0,0,0,8,0];
matrix{13,22} = [0,40,0,0,0,0,8,0];
matrix{13,23} = [0,40,0,0,0,0,8,0];
matrix{13,24} = [0,40,0,0,0,0,8,0];   

matrix{14,1} = [-2,0,0,0,0,0,8,1];
matrix{14,2} = [-2,999999,0,0,0,0,8,1];
matrix{14,3} = [0,40,0,0,0,0,8,0];
matrix{14,4} = [0,40,0,0,0,0,8,0];
matrix{14,5} = [0,40,0,0,0,0,8,0];
matrix{14,6} = [0,40,0,0,0,0,8,0];
matrix{14,7} = [-2,0,0,0,0,0,8,1];
matrix{14,8} = [-2,999999,0,0,0,0,8,1];
matrix{14,9} = [0,40,0,0,0,0,8,0];
matrix{14,10} = [0,40,0,0,0,0,8,0];
matrix{14,11} = [0,40,0,0,0,0,8,0];
matrix{14,12} = [0,40,0,0,0,0,8,0];
matrix{14,13} = [-2,0,0,0,0,0,8,1];
matrix{14,15} = [0,40,0,0,0,0,8,0];
matrix{14,16} = [0,40,0,0,0,0,8,0];
matrix{14,17} = [0,40,0,0,0,0,8,0];
matrix{14,18} = [0,40,0,0,0,0,8,0];
matrix{14,19} = [0,40,0,0,0,0,8,0];
matrix{14,20} = [0,40,0,0,0,0,8,0];
matrix{14,21} = [0,40,0,0,0,0,8,0];
matrix{14,22} = [0,40,0,0,0,0,8,0];
matrix{14,23} = [0,40,0,0,0,0,8,0];
matrix{14,24} = [0,40,0,0,0,0,8,0];

matrix{15,1} = [-2,999999,0,40,0,0,28,1];
matrix{15,2} = [-2,0,-1,36,0,0,28,1];
matrix{15,3} = [0,40,0,40,0,0,28,0];
matrix{15,4} = [0,40,0,40,0,0,28,0];
matrix{15,5} = [0,40,-2,999999,0,0,28,1];
matrix{15,6} = [0,40,-2,999999,0,0,28,1];
matrix{15,7} = [-2,999999,0,48,0,0,28,1];
matrix{15,8} = [-2,0,-1,36,0,0,28,1];
matrix{15,9} = [0,40,0,40,0,0,28,0];
matrix{15,10} = [0,40,40,0,0,0,28,0];
matrix{15,11} = [0,40,-2,999999,0,0,28,1];
matrix{15,12} = [0,40,-2,999999,0,0,28,1];
matrix{15,13} = [-2,999999,0,40,0,0,28,1];
matrix{15,14} = [-2,0,-1,36,0,0,28,1];
matrix{15,16} = [0,40,0,40,0,0,28,0];
matrix{15,17} = [0,40,-2,999999,0,0,28,1];
matrix{15,18} = [0,40,-2,999999,0,0,28,1];
matrix{15,19} = [0,40,0,40,0,0,28,0];
matrix{15,20} = [0,40,0,40,0,0,28,0];
matrix{15,21} = [0,40,0,40,0,0,28,0];
matrix{15,22} = [0,40,0,40,0,0,28,0];
matrix{15,23} = [0,40,0,40,0,0,28,0];
matrix{15,24} = [0,40,0,40,0,0,28,0];

matrix{16,1} = [-2,999999,0,40,0,0,28,1];
matrix{16,2} = [-2,0,-1,36,0,0,28,1];
matrix{16,3} = [0,40,0,40,0,0,28,0];
matrix{16,4} = [0,40,0,40,0,0,28,0];
matrix{16,5} = [0,40,-2,999999,0,0,28,1];
matrix{16,6} = [0,40,-2,999999,0,0,28,1];
matrix{16,7} = [-2,999999,0,48,0,0,28,1];
matrix{16,8} = [-2,0,-1,36,0,0,28,1];
matrix{16,9} = [0,40,0,40,0,0,28,0];
matrix{16,10} = [0,40,0,40,0,0,28,0];
matrix{16,11} = [0,40,-2,999999,0,0,28,1];
matrix{16,12} = [0,40,-2,999999,0,0,28,1];
matrix{16,13} = [-2,999999,0,48,0,0,28,1];
matrix{16,14} = [-2,0,-1,36,0,0,28,1];
matrix{16,15} = [0,40,0,40,0,0,28,0];
matrix{16,17} = [0,40,-2,999999,0,0,28,1];
matrix{16,18} = [0,40,-2,999999,0,0,28,1];
matrix{16,19} = [0,40,0,40,0,0,28,0];
matrix{16,20} = [0,40,0,40,0,0,28,0];
matrix{16,21} = [0,40,0,40,0,0,28,0];
matrix{16,22} = [0,40,0,40,0,0,28,0];
matrix{16,23} = [0,40,0,40,0,0,28,0];
matrix{16,24} = [0,40,0,40,0,0,28,0];

matrix{17,1} = [-2,999999,0,40,0,0,28,1];
matrix{17,2} = [-2,0,-1,30,0,0,28,1];
matrix{17,3} = [0,40,-2,999999,0,0,28,1];
matrix{17,4} = [0,40,-2,999999,0,0,28,1];
matrix{17,5} = [0,40,0,40,0,0,28,0];
matrix{17,6} = [0,40,0,40,0,0,28,0];
matrix{17,7} = [-2,999999,0,0,0,0,28,1];
matrix{17,8} = [-2,0,-1,30,0,0,28,1];
matrix{17,9} = [0,40,-2,999999,0,0,28,1];
matrix{17,10} = [0,40,-2,999999,0,0,28,1];
matrix{17,11} = [0,40,0,40,0,0,28,0];
matrix{17,12} = [0,40,0,40,0,0,28,0];
matrix{17,13} = [-2,999999,0,40,0,0,28,1];
matrix{17,14} = [-2,0,-1,30,0,0,28,1];
matrix{17,15} = [0,40,-2,999999,0,0,28,1];
matrix{17,16} = [0,40,-2,999999,0,0,28,1];
matrix{17,18} = [0,40,0,40,0,0,28,0];
matrix{17,19} = [0,40,-2,999999,0,0,28,1];
matrix{17,20} = [0,40,0,40,0,0,28,0];
matrix{17,21} = [0,40,0,40,0,0,28,0];
matrix{17,22} = [0,40,-2,999999,0,0,28,1];
matrix{17,23} = [0,40,-2,999999,0,0,28,1];
matrix{17,24} = [0,40,0,40,0,0,28,0];

matrix{18,1} = [-2,999999,0,40,0,0,28,1];
matrix{18,2} = [-2,0,-1,30,0,0,28,1];
matrix{18,3} = [0,40,-2,999999,0,0,28,1];
matrix{18,4} = [0,40,-2,999999,0,0,28,1];
matrix{18,5} = [0,40,0,40,0,0,28,0];
matrix{18,6} = [0,40,0,40,0,0,28,0];
matrix{18,7} = [-2,999999,0,40,0,0,28,1];
matrix{18,8} = [-2,0,-1,30,0,0,28,1];
matrix{18,9} = [0,40,-2,999999,0,0,28,1];
matrix{18,10} = [0,40,-2,999999,0,0,28,1];
matrix{18,11} = [0,40,0,40,0,0,28,0];
matrix{18,12} = [0,40,0,40,0,0,28,0];
matrix{18,13} = [-2,999999,0,0,0,0,28,1];
matrix{18,14} = [-2,0,-1,30,0,0,28,1];
matrix{18,15} = [0,40,-2,999999,0,0,28,1];
matrix{18,16} = [0,40,-2,999999,0,0,28,1];
matrix{18,17} = [0,40,0,40,0,0,28,0];
matrix{18,19} = [0,40,0,40,0,0,28,0];
matrix{18,20} = [0,40,0,40,0,0,28,0];
matrix{18,21} = [0,40,0,40,0,0,28,0];
matrix{18,22} = [0,40,-2,999999,0,0,28,1];
matrix{18,23} = [0,40,-2,999999,0,0,28,1];
matrix{18,24} = [0,40,0,40,0,0,28,0];

matrix{19,1} = [-2,999999,0,40,0,0,28,1];
matrix{19,2} = [-2,0,-1,36,0,0,28,1];
matrix{19,3} = [0,40,0,40,0,0,28,0];
matrix{19,4} = [0,40,0,40,0,0,28,0];
matrix{19,5} = [0,40,-2,999999,0,0,28,1];
matrix{19,6} = [0,40,-2,999999,0,0,28,1];
matrix{19,7} = [-2,999999,0,48,0,0,28,1];
matrix{19,8} = [-2,0,-1,36,0,0,28,1];
matrix{19,9} = [0,40,0,40,0,0,28,0];
matrix{19,10} = [0,40,0,40,0,0,28,0];
matrix{19,11} = [0,40,-2,999999,0,0,28,1];
matrix{19,12} = [0,40,-2,999999,0,0,28,1];
matrix{19,13} = [-2,999999,0,48,0,0,28,1];
matrix{19,14} = [-2,0,-1,36,0,0,28,1];
matrix{19,15} = [0,40,0,40,0,0,28,0];
matrix{19,16} = [0,40,0,40,0,0,28,0];
matrix{19,17} = [0,40,-2,999999,0,0,28,1];
matrix{19,18} = [0,40,-2,999999,0,0,28,1];
matrix{19,20} = [0,40,0,40,0,0,28,0];
matrix{19,21} = [0,40,0,40,0,0,28,0];
matrix{19,22} = [0,40,0,40,0,0,28,0];
matrix{19,23} = [0,40,0,40,0,0,28,0];
matrix{19,24} = [0,40,0,40,0,0,28,0];

matrix{20,1} = [-2,999999,0,0,0,0,6,1];
matrix{20,2} = [-2,0,0,0,0,0,6,1];
matrix{20,3} = [0,40,0,0,0,0,6,0];
matrix{20,4} = [0,40,0,0,0,0,6,0];
matrix{20,5} = [0,40,0,0,0,0,6,0];
matrix{20,6} = [0,40,0,0,0,0,6,0];
matrix{20,7} = [-2,999999,0,0,0,0,6,1];
matrix{20,8} = [-2,0,0,0,0,0,6,1];
matrix{20,9} = [0,40,0,0,0,0,6,0];
matrix{20,10} = [0,40,0,0,0,0,6,0];
matrix{20,11} = [0,40,0,0,0,0,6,0];
matrix{20,12} = [0,40,0,0,0,0,6,0];
matrix{20,13} = [-2,999999,0,0,0,0,6,1];
matrix{20,14} = [-2,0,0,0,0,0,6,1];
matrix{20,15} = [0,40,0,0,0,0,6,0];
matrix{20,16} = [0,40,0,0,0,0,6,0];
matrix{20,17} = [0,40,0,0,0,0,6,0];
matrix{20,18} = [0,40,0,0,0,0,6,0];
matrix{20,19} = [0,40,0,0,0,0,6,0];
matrix{20,21} = [0,40,0,0,0,0,6,0];
matrix{20,22} = [0,40,0,0,0,0,6,0];
matrix{20,23} = [0,40,0,0,0,0,6,0];
matrix{20,24} = [0,40,0,0,0,0,6,0]; 


matrix{21,1} = [-2,999999,0,0,0,0,6,1];
matrix{21,2} = [-2,0,0,0,0,0,6,1];
matrix{21,3} = [0,40,0,0,0,0,6,0];
matrix{21,4} = [0,40,0,0,0,0,6,0];
matrix{21,5} = [0,40,0,0,0,0,6,0];
matrix{21,6} = [0,40,0,0,0,0,6,0];
matrix{21,7} = [-2,999999,0,0,0,0,6,1];
matrix{21,8} = [-2,0,0,0,0,0,6,1];
matrix{21,9} = [0,40,0,0,0,0,6,0];
matrix{21,10} = [0,40,0,0,0,0,6,0];
matrix{21,11} = [0,40,0,0,0,0,6,0];
matrix{21,12} = [0,40,0,0,0,0,6,0];
matrix{21,13} = [-2,999999,0,0,0,0,6,1];
matrix{21,14} = [-2,0,0,0,0,0,6,1];
matrix{21,15} = [0,40,0,0,0,0,6,0];
matrix{21,16} = [0,40,0,0,0,0,6,0];
matrix{21,17} = [0,40,0,0,0,0,6,0];
matrix{21,18} = [0,40,0,0,0,0,6,0];
matrix{21,19} = [0,40,0,0,0,0,6,0];
matrix{21,20} = [0,40,0,0,0,0,6,0];
matrix{21,21} = [0,40,0,0,0,0,6,0];
matrix{21,22} = [0,40,0,0,0,0,6,0];
matrix{21,23} = [0,40,0,0,0,0,6,0];
matrix{21,24} = [0,40,0,0,0,0,6,0]; 

matrix{22,1} = [-2,999999,0,40,0,0,28,1];
matrix{22,2} = [-2,0,-1,36,0,0,28,1];
matrix{22,3} = [0,40,0,40,0,0,28,0];
matrix{22,4} = [0,40,0,40,0,0,28,0];
matrix{22,5} = [0,40,-2,999999,0,0,28,1];
matrix{22,6} = [0,40,-2,999999,0,0,28,1];
matrix{22,7} = [-2,999999,0,40,0,0,28,1];
matrix{22,8} = [-2,0,-1,36,0,0,28,1];
matrix{22,9} = [0,40,0,40,0,0,28,0];
matrix{22,10} = [0,40,0,40,0,0,28,0];
matrix{22,11} = [0,40,-2,999999,0,0,28,1];
matrix{22,12} = [0,40,-2,999999,0,0,28,1];
matrix{22,13} = [-2,999999,0,40,0,0,28,1];
matrix{22,14} = [-2,0,-1,36,0,0,28,1];
matrix{22,15} = [0,40,0,40,0,0,28,0];
matrix{22,16} = [0,40,0,40,0,0,28,0];
matrix{22,17} = [0,40,-2,999999,0,0,28,1];
matrix{22,18} = [0,40,-2,999999,0,0,28,1];
matrix{22,19} = [0,40,0,40,0,0,28,0];
matrix{22,20} = [0,40,0,40,0,0,28,0];
matrix{22,21} = [0,40,0,40,0,0,28,0];
matrix{22,23} = [0,40,0,40,0,0,28,0];
matrix{22,24} = [0,40,0,40,0,0,28,0];

matrix{23,1} = [-2,999999,0,40,0,0,28,1];
matrix{23,2} = [-2,0,-1,36,0,0,28,1];
matrix{23,3} = [0,40,0,40,0,0,28,0];
matrix{23,4} = [0,40,0,40,0,0,28,0];
matrix{23,5} = [0,40,-2,999999,0,0,28,1];
matrix{23,6} = [0,40,-2,999999,0,0,28,1];
matrix{23,7} = [-2,999999,0,48,0,0,28,1];
matrix{23,8} = [-2,0,-1,36,0,0,28,1];
matrix{23,9} = [0,40,0,40,0,0,28,0];
matrix{23,10} = [0,40,0,40,0,0,28,0];
matrix{23,11} = [0,40,-2,999999,0,0,28,1];
matrix{23,12} = [0,40,-2,999999,0,0,28,1];
matrix{23,13} = [-2,999999,0,40,0,0,28,1];
matrix{23,14} = [-2,0,-1,36,0,0,28,1];
matrix{23,15} = [0,40,0,40,0,0,28,0];
matrix{23,16} = [0,40,0,40,0,0,28,0];
matrix{23,17} = [0,40,-2,999999,0,0,28,1];
matrix{23,18} = [0,40,-2,999999,0,0,28,1];
matrix{23,19} = [0,40,0,40,0,0,28,0];
matrix{23,20} = [0,40,0,40,0,0,28,0];
matrix{23,21} = [0,40,0,40,0,0,28,0];
matrix{23,22} = [0,40,0,40,0,0,28,0];
matrix{23,24} = [0,40,0,40,0,0,28,0];

matrix{24,1} = [-2,999999,0,0,0,0,6,1];
matrix{24,2} = [-2,0,0,0,0,0,6,1];
matrix{24,3} = [0,40,0,0,0,0,6,0];
matrix{24,4} = [0,40,0,0,0,0,6,0];
matrix{24,5} = [0,40,0,0,0,0,6,0];
matrix{24,6} = [0,40,0,0,0,0,6,0];
matrix{24,7} = [-2,999999,0,0,0,0,6,1];
matrix{24,8} = [-2,0,0,0,0,0,6,1];
matrix{24,9} = [0,40,0,0,0,0,6,0];
matrix{24,10} = [0,40,0,0,0,0,6,0];
matrix{24,11} = [0,40,0,0,0,0,6,0];
matrix{24,12} = [0,40,0,0,0,0,6,0];
matrix{24,13} = [-2,999999,0,0,0,0,6,1];
matrix{24,14} = [-2,0,0,0,0,0,6,1];
matrix{24,15} = [0,40,0,0,0,0,6,0];
matrix{24,16} = [0,40,0,0,0,0,6,0];
matrix{24,17} = [0,40,0,0,0,0,6,0];
matrix{24,18} = [0,40,0,0,0,0,6,0];
matrix{24,19} = [0,40,0,0,0,0,6,0];
matrix{24,20} = [0,40,0,0,0,0,6,0];
matrix{24,21} = [0,40,0,0,0,0,6,0];
matrix{24,22} = [0,40,0,0,0,0,6,0];
matrix{24,23} = [0,40,0,0,0,0,6,0];
matrix{24,24} = [0,40,0,0,0,0,6,0]; 


element = matrix{x,y};
end