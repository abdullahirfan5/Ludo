close all
figure('Color','w','Name','Instructions','numbertitle','off','menubar','none');
imshow('dice.jpg') % The instructions screen
waitforbuttonpress
close all
Graphics % The entire code for the game's graphics
load('gui.mat','p') % Loads an essential variable 'p' that determines the number of players
pos = {-1.*ones(1,4) -1.*ones(1,4) -1.*ones(1,4) -1.*ones(1,4)}; % The -1 signifies that a piece is inside its base
done = 0; % The game goes on till done = 1
player = 'g'; % Green's Turn

rpos = [13:50 60 0:11 61:66]; % Red Pieces' Positions
bpos = [26:50 60 0:24 71:76]; % Blue Pieces' Positions
ypos = [39:50 60 0:37 81:86]; % Yellow Pieces' Positions

rn = ones(1,4); % Each red piece's progress towards home
bn = ones(1,4); % Each blue piece's progress towards home
yn = ones(1,4); % Each yellow piece's progress towards home

invalid = 0; % Determines if a player can play their turn
next = 0; % When next = 1, the turn cycles
k = 1; % Identifies which piece of a particular color is to be moved in a turn
keyPressed = 's'; % Input from the keyboard
t=0; % The number of turns a player gets judging by the number of 6's

[o1,Fs1] = audioread('move.mp3');       % Downloaded from sounddogs.com
[o2,Fs2] = audioread('capture.wav');    % Downloaded from soundjay.com
[o3,Fs3] = audioread('victory.wav');    % Downloaded from soundbible.com
[o4,Fs4] = audioread('roll.mp3');       % Downloaded from sounddogs.com

while ~done
    
    greenMove
    
    redMove
    
    blueMove
    
    yellowMove

end