function go(s,p, source, eventdata)
%Callback function for the 'Play' button on the GUI
%   The variable 'p', which determines the number of players and the object
%   's', which carries the GUI music are passed into the function. The
%   variable 'p' is saved for use later in the game in a file called
%   'gui.mat'.

stop(s) % Stops the GUI music
close all % Closes the GUI window
save('gui.mat','p') % Saves the variable 'p'
Gameplay

end

