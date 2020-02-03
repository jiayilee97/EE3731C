function double_array = char2double(char_array)

% Please write this function based on the following specifications.
%
% This function char2double.m converts a character array into a double array. More specifically,
%
% Character 'a' or 'A' should be mapped to 1
% Character 'b' or 'B' should be mapped to 2
% ...
% Character 'z' or 'Z' should be mapped to 26
%
% All other characters and punctuations should be mapped to 27.
%
% Example:
% 	double_array = char2double('abc') gives [1 2 3]
% 	double_array = char2double('ABC') gives [1 2 3]
%   double_array = char2double('A YZ') gives [1 27 25 26]
%
% Input:
%   char_array = 1 x N character array
%
% Output:
%   double_array = 1 x N double array
tmp=lower(char_array);
tmp=double(tmp);


for idx = 1:numel(tmp)
    if (tmp(idx)>=97) && (tmp(idx)<=122)
        tmp(idx) = tmp(idx)-96;
    else
        tmp(idx)= 27;
    end
end

double_array=tmp;



