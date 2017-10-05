function popout = fixpopulation(popin,NVARS)
%{  
adjust the chromosomes in the input population (popin) to have the
correct length (NVARS) if they don't already and make sure every
integer value in each chromsome is valid, then store the fixed
chromsomes in a new cell array (popout)
%}

maxOutgoing = 11;
correctLength = NVARS;
popout = cell(size(popin));%initialize output population
for i = 1:length(popin)

    % -1 padding for individuals with less than 'correctLength' elements
    indin = popin{i}; % pull out individual
    indinLength = length(indin); % individual length
    if indinLength ~= correctLength
        indout = zeros(1,correctLength); % initialize new individual
        indout(1:indinLength) = indin; % copy indin to the beginning of indout
        indout(indinLength+1:correctLength) = -1; % padding the rest of indout with -1's to make it 1x100
    else
        indout = indin;
    end
    
    % search and replace elements greater than maxOutgoing
    badInd = find(indout > maxOutgoing);
    if ~isempty(badInd)
        indout(badInd) = maxOutgoing; % just setting any element greater than maxOutgoing to maxOutgoing
    end 
    
    popout{i} = indout; % store individual back into population
end