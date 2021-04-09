function[iterate] = IterateComplexQuadratic(z,c,cut)
% The following function repeatedly applies the function f(z) = z^2 + c
% with z being replaced by f(z) in each iteration.
% We iterate till the absolute value of z is outside our bounded region (3)
% OR if our cutoff value is reached and we are still within bounded region

% Inputs -
% z = initial complex value, this is the value we update in each iteration
% c = specified complex value
% cut = cutoff, maximum number of iterations to perform

% Output - (single value)
% 0 if cutoff value is reached and z is still within bounded region
% OR the number of iterations before abs(z) becomes greater than 3.

% Author: Ojas Madaan

b = 1; % b indicates which iteration we are on at any given time
% (i.e first time through the while loop, is our first iteration)

iterate = 0; % base value for number of iterations completed, remains
% unchanged if abs(z) does not exceed 3 while we iterate the function f(z).


while b <= cut
    % loop runs while the iteration counter is not greater than the cutoff
    
    z = z^2 + c; % running f(z), z value gets updated every iteration
    
    if abs(z)>=3
        % if abs(z) >= 3, set 'iterate' to number of iterations
        % it took for f(z) to exceed 3 (using counter 'b')
        iterate = b;
        break % we break out of loop if this condition is true as there is
        % no need to iterate further.
    end
    
    b = b+1; % move onto the next iteration
    
end


end

