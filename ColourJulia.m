function [image] = ColourJulia(points,colourmap)
% This function assigns colours to points in our Julia Set.
% The colour is determined by the nature of the point
% Points within our set (value of 0) are coloured black
% Points outside our set are coloured using their corresponding row in the
% colourmap
% Author : Ojas Madaan

% Inputs:
% - A 2D Array which contains the nature of each point
% (0 means the point is in our set)
% (any other value represents the number of quadratic iterations before
%  the point left our set)
% - 2D Array of size (rows x 3) containing a colormap.
% (rows = cutoff value used, maximum number of iterations)

% Outputs:
% An RGB Image of our Julia Set represented by a 3D Array of uint8 values.


% get size of input points array, so that we can loop through and assign
% colour values
[rows, cols] = size(points);

% convert colourmap to uint8 values
colourmap = uint8(colourmap*255);

% create 3D array with same 2D size as input array, but three layers
% (r,g,b), formatted appropriately to uint8
image = zeros(rows,cols,3,'uint8');
% this allows us to ignore points which are in our Julia set when it comes
% to assigning colors (their values are 0 by default due to zeros function)

% We now scan through our input array for appropriate data, while 
% colouring in our image

for i = 1:rows % loop through rows
    for j=1:cols % loop through columns
        if points(i,j) ~= 0
            % if the point == 0, it is in our set and has already been
            % assigned colour values of 0 when we created our image Array
            
            image(i,j,1) = colourmap(points(i,j),1);
            image(i,j,2) = colourmap(points(i,j),2);
            image(i,j,3) = colourmap(points(i,j),3);
            % assign RGB values from the row which corresponds to the
            % nature of our point. Thus use points(i,j) as a row index.
            % colours are picked from corresponding column of colourmap.
        end
    end
end


end
