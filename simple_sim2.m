function sim = simple_sim2 (x)
sim = 0;
for j = 1 : size(x,1)
    p = x{j};
    for i = 1 : (length(p)-1)
        if p(i) ~= p(i+1)
            sim = sim + 1;
        end
    disp (p(i))
  %  disp (sim)
    end
if p(1) ~= p(end)
    sim = sim + 1;
end
end