function diversity = HammingDiv (x , y , numOfTrans)
%{
calculate diversity between two genes (x & y) using the 
Hamming Distance
%}

similarity = 0;
ham_x = zeros(numOfTrans,1);
ham_y = zeros(numOfTrans,1);
for i=1 : numOfTrans
    ham_x(i) = not(isempty(find(x == i, 1)));
    ham_y(i) = not(isempty(find(y == i, 1)));
end
for j=1 : numOfTrans
    if( ham_x(j) == ham_y(j))
        similarity = similarity + 1;
    end
end

% convert similarity to diversity
diversity = numOfTrans - similarity;
end