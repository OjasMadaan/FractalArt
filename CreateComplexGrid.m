function [ComplexGrid] = CreateComplexGrid(n)
% This function creates a 2D Array (grid) of size nxn
% the elements are equally spaced points from the complex plane
% the grid is bounded by x=-2,x=2,y=2i,y=-2i

% Input: n = value which specifies number of rows and columns in grid
% Output: Grid, nxn 2D Array of equally spaced complex values bounded by
% region x=-2,x=2,y=2i,y=-2i

% Author: Ojas Madaan

% Create 2 grids.
% X grid contains n rows of our real values (-2 to 2, with n columns)
% Y grid contains n columns of imaginary values (2i to -2i, with n rows)
[X,Y] = meshgrid(linspace(-2,2,n),linspace(2i,-2i,n));

% Thus the Complex Grid is simply the X and Y grids added to eachother
% (Real and Imaginary sections added = Complex Grid)
ComplexGrid = X+Y;

end

