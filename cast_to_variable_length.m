function variable = cast_to_variable_length(x)
%{
creates a chromosome (variable) that ends at the last non-zero
integer in the original default-length chromosme (x)
%}

% find location of last non-zero integer
len = 1;
while(x(len) ~= -1 && len < length(x))
    len = len+1;
end

% create the new chromosome that ends at the last gene (marked by last non-zero integer)
variable = zeros (1,len);
for  i = 1: len-1
    variable(1,i) = x(1,i);
end

% add zero at end of chromsome to mark end of last gene
variable(1,len)=0;
end