for i = 1:4
    
    if pos{1}(k) == pos{2}(i) & pos{1}(k) ~= -1 & pos{1}(k) ~= 0 & pos{1}(k) ~= 8 & pos{1}(k) ~= 13 & pos{1}(k) ~= 21 & pos{1}(k) ~= 26 & pos{1}(k) ~= 34 & pos{1}(k) ~= 39 & pos{1}(k) ~= 47
        set(r(i),'XData', [x1{i} + x(i)], 'YData', [y1{i} + y(i) + 9]) % Takes the captured piece back to its starting point
        pos{2}(i) = -1; % Piece goes back to base
        rn(i) = 1; % Returns to square one
        sound(o2,Fs2) % Piece capture sound effect
        title(['Green Killed Red! Press any key to continue'],'color','w')
        waitforbuttonpress
    elseif pos{1}(k) == pos{3}(i) & pos{1}(k) ~= -1 & pos{1}(k) ~= 0 & pos{1}(k) ~= 8 & pos{1}(k) ~= 13 & pos{1}(k) ~= 21 & pos{1}(k) ~= 26 & pos{1}(k) ~= 34 & pos{1}(k) ~= 39 & pos{1}(k) ~= 47
        set(b(i),'XData', [x1{i} + x(i) + 9],'YData', [y1{i} + y(i) + 9]) % Takes the captured piece back to its starting point
        pos{3}(i) = -1; % Piece goes back to base
        bn(i) = 1; % Returns to square one
        sound(o2,Fs2) % Piece capture sound effect
        title(['Green Killed Blue! Press any key to continue'],'color','w')
        waitforbuttonpress
    elseif pos{1}(k) == pos{4}(i) & pos{1}(k) ~= -1 & pos{1}(k) ~= 0 & pos{1}(k) ~= 8 & pos{1}(k) ~= 13 & pos{1}(k) ~= 21 & pos{1}(k) ~= 26 & pos{1}(k) ~= 34 & pos{1}(k) ~= 39 & pos{1}(k) ~= 47
        set(yl(i),'XData', [x1{i} + x(i) + 9],'YData', [y1{i} + y(i)]) % Takes the captured piece back to its starting point
        pos{4}(i) = -1; % Piece goes back to base
        yn(i) = 1; % Returns to square one
        sound(o2,Fs2) % Piece capture sound effect
        title(['Green Killed Yellow! Press any key to continue'],'color','w')
        waitforbuttonpress
    end
    
end