function pr_trans = compute_transition_probability(input_txt)

% Please write this function based on the following specifications.
%
% compute_transition_probability.m takes an input text and
% computes a matrix of transition probability.
%
% Input:
%	input_txt = 1 x N character array
%
% Output:
%    pr_trans = 27 x 27 matrix, where pr_trans(i, j)  = probability j-th letter in the alphabet occurs immediately after i-th letter in the alphabet
%                               e.g., pr_trans(1, 2)  = probability character b occurring immediately after character a
%                               e.g., pr_trans(1, 27) = probability character ' ' occurring immediately after character a
%
% pr_trans(i, j) is defined to be equal to
% (1 + #times j-th letter of alphabet appears after i-th letter of alphabet in input_txt) divided by
% (27 + #times i-th letter of alphabet appears in the text except at the last position in the text)
%
% For example, if the input_txt is 'aaabababa', then
%	# times 'a' appears not corresponding to last position is 5;
%   # times 'a' appears after 'a' is 2; # times 'b' appears after 'a' is 3.
%
%   Therefore pr_trans(1, 1) = (1 + 2)/(5 + 27) = 0.09375
%			  pr_trans(1, 2) = (1 + 3)/(5 + 27) = 0.125
%			  pr_trans(1, 3) = ... = pr_trans(1, 27) = 1/(5 + 27) = 0.03125...
%
%	Observe that sum(pr_trans(1, :)) is equal to 1

matrix=zeros(27,27); %stores number of times j appears after i 
occurence=zeros(1,27); %stores number of times i appears

tmp=char2double(input_txt);

for idx =1:(numel(tmp)-1)
   matrix(tmp(idx),tmp(idx+1))= matrix(tmp(idx),tmp(idx+1))+1 ;
end

for idx =1:(numel(tmp)- 1)
   occurence(tmp(idx)) = occurence(tmp(idx)) +1 ;
end

dim=size(matrix);

for row =1:dim(1)
    for col=1:dim(2)
        matrix(row,col)=(1+matrix(row,col))/(27+occurence(row));
        
    end
end

pr_trans=occurence;
pr_trans=matrix;


