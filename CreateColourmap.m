function [ColourMap] = CreateColourmap(colour1,colour2,n)
% this function creates a custom colormap of 'n' shades from a starting
% colour to a specified ending colour

% inputs : 2 [1x3] arrays containing colour values for their respective
%          colours, each value (between 0 and 1) corresponds to the
%          percentage of r,g,b
%        : n = number of rows we want the colourmap to have
% output: a colourmap as an nx3 2D Array, where each column represents
% r,g,b respectively. Each column contains colour values linearly spaced
% from their starting to end values

% Author: Ojas Madaan

% Create arrays which are linearly spaced from colour1 to colour2 and
% have length 'n'.
% We create points between corresponding columns from each colour.
column1 = (linspace(colour1(1),colour2(1),n))';
column2 = (linspace(colour1(2),colour2(2),n))';
column3 = (linspace(colour1(3),colour2(3),n))';
% transposed to make column vectors

% Our custom colourmap is simply the 3 columns concatenated (added
% horizontally)
ColourMap = [column1,column2,column3];

end