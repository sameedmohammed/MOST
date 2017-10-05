function kw = kw_dice_bad_2(x)
%disp ( ' In similarity ...')




delim1 = find (x == 0);
delim = [0,delim1];
max = zeros(1,length(delim)-1);
sim = 0;
num = 1;
for i = 1 : (length(delim)-1)
    if(delim(i)+1 == delim(i+1))
        max(1,i) = 0;
    else
        for j = 1 : (length(delim)-1)

            if(delim(j)+1 ~= delim(j+1) && glDiv (x((delim(i)+1):(delim(i+1)-1)),x((delim(j)+1):(delim(j+1)-1)))> max(1,i))
                
         
               max(1,i) =  glDiv (x((delim(i)+1):(delim(i+1)-1)),x((delim(j)+1):(delim(j+1)-1)));
               
               % disp('in else');
            end
        end
    end
    sim = sim + max(1,i);
   % disp('max is');
    % disp(max(1,i));
    if(delim(i)+1 ~= delim(i+1))
        num = num + 1;
    end
    % disp(num);
end
sim = sim/num;

  if(sim ~= 0)     
    kw =  1/ sim;
  else
      kw = 0;
  end


%disp ( 'back In similarity ...')
end

