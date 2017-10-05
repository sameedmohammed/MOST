function sim = simple_sim (x)
sim = 0;
for i = 1 : (length (x)-1)
    if x(i) == x(i+1)
        sim = sim + 1;
    end
    disp (sim)
end
if x(1) == x (length (x))
    sim = sim + 1;
end