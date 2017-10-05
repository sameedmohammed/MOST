function sim = kw_dice_bad_1(x)
num = 0;

delim1 = find (x == 0);
delim = [0,delim1];
sim = zeros(length(delim)-1,length(delim)-1);
for i = 1 : (length(delim)-1)
    for j = 1 : (length(delim)-1)       
        if(delim(i)+1 == delim(i+1) || delim(j)+1 == delim(j+1))
            sim(i,j) = 0;
        else
            sim(i,j) =  glDiv (x((delim(i)+1):(delim(i+1)-1)),x((delim(j)+1):(delim(j+1)-1)));
            num = num+1;
            disp('in else');
        end
    end
end
end

