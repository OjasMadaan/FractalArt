function [ComplexGrid] = CreateComplexGrid2(n)
% This function creates a 2D Array of size nxn 
% the elements are equally spaced points from the complex plane
% the grid is bounded by x=-2,x=2,y=2i,y=-2i

% Inputs: n = value which specifies number of rows and columns in grid
% Outputs: Grid, nxn 2D Array of equally spaced complex values bounded by
% region x=-2,x=2,y=2i,y=-2i

% Author: Ojas Madaan

for x = 1:n % row index for ComplexGrid array created below
    for j= 1:n % column index for ComplexGrid array created below
        ComplexGrid(x,j) = -2 + 2i + (4/(n-1))*(j-1) - (4i/(n-1))*(x-1); 
        % n number of elements per row/column therefore 
        % number of intervals = n-1
        % going across a row, the real value increases by 4/n-1, due to
        % linear spacing
        % going down each column, the i value decreases by 4i/n-1 due to
        % linear spacing 
       
    end
end


