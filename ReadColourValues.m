function [colours,values] = ReadColourValues(filename)

% This function reads in a file which contains colour names and their
% corresponding colour values and stores this data in a cell array
% and in a 2D Array.

% Input: string, which is the filename of a .txt file containing colour
% names and their respective colour values
% Outputs: a cell array of colour names, each element is a string
%          containing a single name (cell array size = r x 1)
%          (where r is the number of colours)
%
%        : a 2D Array of colour values of size rx3, each row contains 3
%          colour values that have been read in from the specified file.

% Author: Ojas Madaan

fid=fopen(filename, 'r'); % open file for reading

i = 1; % set base variable for our array index
if fid == -1
    fprintf(2,'Error opening file %s \n\n', filename);
    return
    % print error message to standard error if file cannot be opened
else
    line = fgetl(fid); % get first line of file
    
    while ischar(line) % Loop while the current line has characters
        
        % Split line at each space character,thus each line splits into
        % 4 sub strings. 1st substring string is the colour name.
        % 2nd, 3rd, 4th substrings are colour values.
        SplitLine = strsplit(line);
        
        % assign colour name string to appropriate array
        % in corresponding index to our line. (i.e line 1 = index 1)
        % note: colours is a column cell array (size = no.colours x 1)
        colours{i,:} = SplitLine{1};
        
        % convert our remaining substrings to numbers and assign to our
        % colour values array.
        % NOTE: 1st colour value is the second substring in the line.
        % (Because first substring is the colour name)
        values(i,1) = str2double(SplitLine{2});
        values(i,2) = str2double(SplitLine{3});
        values(i,3) = str2double(SplitLine{4});
        
        i = i+1; % increase array index by 1, so next readings are stored
        % in the next element of corresponding arrays
        
        line = fgetl(fid); % move onto the next line of our file to read
    end
    
end


end


