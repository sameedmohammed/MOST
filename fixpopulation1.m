function popout = fixpopulation1(popin,NVARS)

correctLength = NVARS;
popout = cell(size(popin));%initialize output population
for i = 1:length(popin)

    % -1 padding for individuals with less than 'correctLength' elements
    indin = popin{i}; %pull out individual
    indinLength = length(indin);%individual length
    if indinLength ~= correctLength
        indout = zeros(1,correctLength);%initialize new individual
        indout(1:indinLength) = indin;%copy indin to the beginning of indout
        indout(indinLength+1:correctLength) = -1;%padding the rest of indout with -1's to make it 1x100
    else
        indout = indin;
    end
    
    %search and replace elements greater than 7
    badInd = find(indout > 7);
    if ~isempty(badInd)
        indout(badInd) = 7; %just setting any element greater than 7 to 7
    end 
    
    popout{i} = indout;%store individual back into population
end