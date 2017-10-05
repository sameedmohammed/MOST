function uncovered = compute_coverage (x,numTransition)
%{  
calculate value for lack of coverage (uncovered) for a single
chromosome (x) for a state machine with a certain number of
total transitions (numTransition)
%}

coverage = 0;
for i=1 : numTransition
    if (~ isempty(find (x == i,1)))
        coverage = coverage + 1;
    end
end
uncovered = numTransition - coverage;
end