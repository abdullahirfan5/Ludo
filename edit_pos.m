function edit_pos(player,x,h,x1,y1,k)
%Function that alters a piece's position graphically
%   The variable 'player' determines the current player. The variable 'x'
%   represents a cell array which carries the positions of all pieces on
%   the board. 'h' carries the handles of the ongoing color's pieces. 'x1'
%   and 'y1' contain the x and y coordinates of each piece respectively.
%   'k' dictates which piece is to be moved in a color.

if player == 'g'
    j = 1;
elseif player == 'r'
    j = 2;
elseif player == 'b'
    j = 3;
elseif player == 'y'
    j = 4;
end
for i = 0:4
    if x{j}(k) == i
        set(h(k),'XData',x1{k} + 6.5, 'YData', y1{k} + 1.5 + x{j}(k))
    end
end
for i = 5:10
    if x{j}(k) == i
        set(h(k),'XData',x1{k} + (10.5 - x{j}(k)), 'YData', y1{k} + 6.5)
    end
end
for i = 11:12
    if x{j}(k) == i
        set(h(k),'XData',x1{k} + 0.5, 'YData', y1{k} + (x{j}(k) - 3.5))
    end
end
for i = 13:17
    if x{j}(k) == i
        set(h(k),'XData',x1{k} + 0.5 + (x{j}(k) - 12), 'YData', y1{k} + 8.5)
    end
end
for i = 18:23
    if x{j}(k) == i
        set(h(k),'XData',x1{k} +  6.5, 'YData', y1{k} + 3.5 + (x{j}(k) - 12))
    end
end
for i = 24:25
    if x{j}(k) == i
        set(h(k),'XData',x1{k} + 0.5 + (x{j}(k) - 17), 'YData', y1{k} + 14.5)
    end
end
for i = 26:30
    if x{j}(k) == i
        set(h(k),'XData',x1{k} + 8.5, 'YData', y1{k} + (39.5 - x{j}(k)))
    end
end
for i = 31:36
    if x{j}(k) == i
        set(h(k),'XData',x1{k} + (x{j}(k) - 21.5), 'YData', y1{k} + 8.5)
    end
end
for i = 37:38
    if x{j}(k) == i
        set(h(k),'XData',x1{k} + 14.5, 'YData', y1{k} + (44.5 - x{j}(k)))
    end
end
for i = 39:43
    if x{j}(k) == i
        set(h(k),'XData',x1{k} + (52.5 - x{j}(k)), 'YData', y1{k} + 6.5)
    end
end
for i = 44:49
    if x{j}(k) == i
        set(h(k),'XData',x1{k} + 8.5, 'YData', y1{k} + (49.5 - x{j}(k)))
    end
end
if x{j}(k) == 50
    set(h(k),'XData',x1{k} + 7.5, 'YData', y1{k} + 0.5)
end
for i = 51:55
    if x{j}(k) == i
        set(h(k),'XData',x1{k} + 7.5, 'YData', y1{k} + (x{j}(k) - 49.5))
    end
end
if x{j}(k) == 56
    set(h(k),'visible','off')
end
if x{j}(k) == 60
    set(h(k),'XData',x1{k} + 6.5, 'YData', y1{k} + 0.5)
end
for i = 61:65
    if x{j}(k) == i
        set(h(k),'XData',x1{k} + (x{j}(k) - 59.5), 'YData', y1{k} + 7.5)
    end
end
if x{j}(k) == 66
    set(h(k),'Visible','off')
end
for i = 71:75
    if x{j}(k) == i
        set(h(k),'XData',x1{k} + 7.5, 'YData', y1{k} + (84.5 - x{j}(k)))
    end
end
if x{j}(k) == 76
    set(h(k),'Visible','off')
end
for i = 81:85
    if x{j}(k) == i
        set(h(k),'XData',x1{k} + (94.5 - x{j}(k)), 'YData', y1{k} + 7.5)
    end
end
if x{j}(k) == 86
    set(h(k),'Visible','off')
end
end