for i = 1:4
    
    if pos{4}(k) == pos{2}(i) & pos{4}(k) ~= -1 & pos{4}(k) ~= 0 & pos{4}(k) ~= 8 & pos{4}(k) ~= 13 & pos{4}(k) ~= 21 & pos{4}(k) ~= 26 & pos{4}(k) ~= 34 & pos{4}(k) ~= 39 & pos{4}(k) ~= 47
        set(r(i),'XData', x1{i} + x(i),'YData', y1{i} + y(i) + 9)
        pos{2}(i) = -1; % Piece goes back to base
        rn(i) = 1; % Returns to square one
        sound(o2,Fs2) % Piece capture sound effect
        title(['Yellow Killed Red! Press any key to continue'],'color','w')
        waitforbuttonpress
    elseif pos{4}(k) == pos{1}(i) & pos{4}(k) ~= -1 & pos{4}(k) ~= 0 & pos{4}(k) ~= 8 & pos{4}(k) ~= 13 & pos{4}(k) ~= 21 & pos{4}(k) ~= 26 & pos{4}(k) ~= 34 & pos{4}(k) ~= 39 & pos{4}(k) ~= 47
        set(g(i),'XData', x1{i} + x(i),'YData', y1{i} + y(i))
        pos{1}(i) = -1; % Piece goes back to base
        sound(o2,Fs2) % Piece capture sound effect
        title(['Yellow Killed Green! Press any key to continue'],'color','w')
        waitforbuttonpress
    elseif pos{4}(k) == pos{3}(i) & pos{4}(k) ~= -1 & pos{4}(k) ~= 0 & pos{4}(k) ~= 8 & pos{4}(k) ~= 13 & pos{4}(k) ~= 21 & pos{4}(k) ~= 26 & pos{4}(k) ~= 34 & pos{4}(k) ~= 39 & pos{4}(k) ~= 47
        set(b(i),'XData', x1{i} + x(i) + 9,'YData', y1{i} + y(i) + 9)
        pos{3}(i) = -1; % Piece goes back to base
        bn(i) = 1; % Returns to square one
        sound(o2,Fs2) % Piece capture sound effect
        title(['Yellow Killed Blue! Press any key to continue'],'color','w')
        waitforbuttonpress
    end
    
end
