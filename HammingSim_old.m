function similarity = HammingSim (x , y , numOfTrans)
%disp ('in HammingSim')
similarity = 0;
ham_x = zeros(numOfTrans,1);
ham_y = zeros(numOfTrans,1);
for i=1 : numOfTrans
    ham_x(i) = not(isempty(find(x == i)));
    ham_y(i) = not(isempty(find(y == i)));
end
 for j=1 : numOfTrans
     if( ham_x(j) == ham_y(j))
         similarity = similarity + 1;
     end
 end
end