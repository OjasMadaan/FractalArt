function [ImageArray] = GenerateJuliaSets(cvalues,n,colourmap)
% This function takes a sequence of complex numbers and generates Julia Set
% images for each of the complex values

% Inputs:
% 1D array containing complex numbers, to generate images for.
% n, this specifies the dimensions of our complex grid (nxn)
% colourmap: 2D Array with size (rows x 3) containing colour values, the
% number of rows is then used as our cutoff (number of iterations)

% Output:
% Cell Array containing RGB Images of the Julia Set that corresponds to
% each of the complex values in the input
% (RGB image stored as a 3D Array of size nxnx3)

% Author: Ojas Madaan


% Create complex grid of nxn size using our function.
grid = CreateComplexGrid(n);

% Get cutoff value from size of colourmap, the cutoff must equal the number
% of rows in the colourmap eg. [rows, columns] = size(colourmap)
[cutoff,~] = size(colourmap);

ImageArray = cell(1,length(cvalues)); % Preallocate our array of RGB images

% We now call the JuliaSetPoints function and ColourJulia for each c value
% so that we can create a cell array of RGB images.
for i = 1:length(cvalues)
    % We create an array which contains the nature of points for the given
    % c value
    NatureArray = JuliaSetPoints(grid,cvalues(i),cutoff);
    
    % We now pass the NatureArray into our function ColourJulia to generate
    % an RGB image of our Julia Set for the given c value.
    % We also pass in the colourmap to assign RGB values to our images
    
    % The resulting image is now stored in the corresponding element of
    % our ImageArray (cell)
    ImageArray{i} = ColourJulia(NatureArray,colourmap);
end

end






