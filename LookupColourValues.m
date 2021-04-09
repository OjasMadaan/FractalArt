function [Lookup] = LookupColourValues(search,colours,values)
% This function looks for colour values for a specified colour, from a list
% of colour values and colour names
% if the colour is not found an error message and the array [0 0 0] is
% returned

% Inputs: Colour to search for (input as a string)
%       : 2D array containing colour values which correspond to the colours
%       : 1D Cell array containing colour names
% Output: Colour Values for the specified colour in a 1x3 array.

% Author: Ojas Madaan

% loop through the cell array containing colour names
for i = 1:length(colours)
    % compare search value (search) with each element in our cell array
    % ignoring case.
    if strcmpi(search, colours{i})
        % if strcmpi returns true, we have found the colour
        ColourFound = true;
        Lookup = values(i,:); % if strcmpi is true we return the output
        % as the corresponding row from the colour values array
        
        % NOTE: 'i' tells us which row in our colour names array we found
        % the colour name in.
        % This is the same row we want to extract colour values from in our
        % values array.
        
        break
        % this will exit the for loop if we find a match for our colour
        
        % Lookup will equal the colour values for the searched colour
    else
        % if strcmpi returns false, we have not found the colour
        ColourFound = false;
    end
end


if ColourFound == false  % i.e if we have not found the colour after loops
    % print the appropriate error message and return default array.
    fprintf(2, 'Colour not found \n')
    Lookup = [0 0 0];
end

end


