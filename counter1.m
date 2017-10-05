function count = counter1( initialize )

currentCount = 5;

if nargin == 1
currentCount = initialize;
else
currentCount = currentCount + 1;
end

count = currentCount;