function elapsed = timer_test(limit)

tStart = tic;
elapsed = zeros(1,limit);

for i=1 : limit
    elapsed(i) = toc(tStart);    
end
end
