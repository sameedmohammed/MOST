function adw = adw_ham_old(x,num)
%disp ( ' In similarity ...')

num = 0;
sim = 0;

delim1 = find (x == 0);
delim = [0,delim1];
for i = 1 : (length(delim)-2)
    for j = i+1 : (length(delim)-1)
       
        if(delim(i)+1 == delim(i+1) || delim(j)+1 == delim(j+1))
            sim = sim + 0;
           % disp('in if');
        else
            sim = sim + HammingDiv_old (x((delim(i)+1):(delim(i+1)-1)),x((delim(j)+1):(delim(j+1)-1)),num);
             num = num+1;
          % disp(num);
        end
    end
end
if(num ~=0)
    mean = sim / num;
else
    mean = 0;
end
adw = 0-mean;

%disp ( 'back In similarity ...')
end

