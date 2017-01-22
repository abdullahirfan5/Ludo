gui = figure('Position',[((1366/2)-250) ((768/2)-250) 500 500],'Color','w','Name','Ludo','numbertitle','off','menubar','none');

axis([0 500 0 500])
axis off
hold on
p=4;

% Die showing 1
[one, map, alpha] = imread('1.jpg');
hOne = image(one,'XData',[30 160],'YData',[250 380]);
%--------------------------------------------------------------%

% Die showing 6
[six, map, alpha] = imread('6.jpg');
hSix = image(six,'XData',[340 470],'YData',[243 373]);
%--------------------------------------------------------------%

% Blue piece
[blue, map, alpha] = imread('bp.png');
hb = image(blue,'XData',[380 470],'YData',[70 200],'alphadata',alpha);
%--------------------------------------------------------------%

% Red piece
[red, map, alpha] = imread('rp.png');
hr = image(red,'XData',[30 120],'YData',[70 200],'alphadata',alpha);
%--------------------------------------------------------------%

% GUI title saying 'LUDO'
[ludo, map, alpha] = imread('ludo.jpg');
h = image(ludo,'Xdata',[0 500],'YData',[400 500]);
%--------------------------------------------------------------%


text(430,-50,'All Rights Reserved ©','fontsize',7) % Copyrights declaration

load('theme.mat') % Loads pre sampled frequencies of the GUI music to allow for faster processing
s = audioplayer(o,Fs); % The GUI music object
play(s) % Plays the GUI's music

% The 'Play' button
h1 = uicontrol(gui,'Style','PushButton','Units','normalized',...
    'String','Play','Position',[0.37 0.35 0.3 0.06]);
set(h1,'Callback','go(s,p)')
%--------------------------------------------------------------%

% The 'Exit' button
h2 = uicontrol(gui,'Style','PushButton','Units','normalized',...
    'String','Exit','Position',[0.37 0.25 0.3 0.06]);
set(h2,'Callback','out(s)')
%--------------------------------------------------------------%

% The drop down menu for the number of players
h3 = uicontrol(gui,'Style','popupmenu','Units','normalized',...
    'String',{'4 Players'; '3 Players'; '2 Players'},'Position',[.37 .2 .3 .3]);
set(h3,'Callback','p = list(h3)')
%--------------------------------------------------------------%