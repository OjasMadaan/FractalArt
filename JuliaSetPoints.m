function [nature] = JuliaSetPoints(array,c,cut)
% This function evaluates if each point of a 2d array containing complex
% values is a member of the Julia set associated with the value 'c'

% Inputs-
% 2D Array which contains a grid of complex value to evaluate
% c = complex value associated with particular Julia Set
% cut = cutoff value, maximum number of iterations

% Output- (single output)
% 2D Array containing information about the nature of each point on the
% input grid
% 0 means the point is in our julia set
% if the point is not a member of our set, the value is the number of
% iterations before the point becomes unbounded

% Author: Ojas Madaan

[rows, cols] = size(array); % get size of input 2D Array

nature = zeros(rows,cols); % pre-allocating our output array.

for i = 1:rows % loop through each row of input array
    for j = 1:cols % loop through each column of the input array
        nature(i,j) = IterateComplexQuadratic(array(i,j),c,cut);
        % The nested loop applies this function to every point of the input
        
        % We iterate each point of the input array to determine its nature,
        % the result is then stored in the corresponding element of our
        % output array. (With the use of IterateComplexQuadratic)
    end
end


end




