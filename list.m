function [p] = list(h)
%Function containing the list for the drop down box on the GUI
%   The user can chose from 2,3 and 4 players according to which the
%   variable 'p' is edited here for use later in the game

val = get(h,'Value'); % Gets user input

if val == 1
    p = 4;
elseif val == 2
    p = 3;
elseif val == 3
    p = 2;
end

end

