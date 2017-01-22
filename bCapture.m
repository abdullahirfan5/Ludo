for i = 1:4
    
    if pos{3}(k) == pos{2}(i) & pos{3}(k) ~= -1 & pos{3}(k) ~= 0 & pos{3}(k) ~= 8 & pos{3}(k) ~= 13 & pos{3}(k) ~= 21 & pos{3}(k) ~= 26 & pos{3}(k) ~= 34 & pos{3}(k) ~= 39 & pos{3}(k) ~= 47
        set(r(i),'XData', x1{i} + x(i),'YData', y1{i} + y(i) + 9)
        pos{2}(i) = -1; % Piece goes back to base
        rn(i) = 1; % Returns to square one
        sound(o2,Fs2) % Piece capture sound effect
        title(['Blue Killed Red! Press any key to continue'],'color','w')
        waitforbuttonpress
    elseif pos{3}(k) == pos{1}(i) & pos{3}(k) ~= -1 & pos{3}(k) ~= 0 & pos{3}(k) ~= 8 & pos{3}(k) ~= 13 & pos{3}(k) ~= 21 & pos{3}(k) ~= 26 & pos{3}(k) ~= 34 & pos{3}(k) ~= 39 & pos{3}(k) ~= 47
        set(g(i),'XData', x1{i} + x(i),'YData', y1{i} + y(i))
        pos{1}(i) = -1; % Piece goes back to base
        sound(o2,Fs2) % Piece capture sound effect
        title(['Blue Killed Green! Press any key to continue'],'color','w')
        waitforbuttonpress
    elseif pos{3}(k) == pos{4}(i) & pos{3}(k) ~= -1 & pos{3}(k) ~= 0 & pos{3}(k) ~= 8 & pos{3}(k) ~= 13 & pos{3}(k) ~= 21 & pos{3}(k) ~= 26 & pos{3}(k) ~= 34 & pos{3}(k) ~= 39 & pos{3}(k) ~= 47
        set(yl(i),'XData', x1{i} + x(i) + 9,'YData', y1{i} + y(i))
        pos{4}(i) = -1; % Piece goes back to base
        yn(i) = 1; % Returns to square one
        sound(o2,Fs2) % Piece capture sound effect
        title(['Blue Killed Yellow! Press any key to continue'],'color','w')
        waitforbuttonpress
    end

end
