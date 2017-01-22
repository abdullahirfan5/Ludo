if die(1) == 6 & die(2) ~= 6
    title(['Green Scored ' num2str(die(1)) ' and ' num2str(die(2))],'color','g')
    t=2; % The player gets to make 2 moves
elseif die(1) == 6 & die(2) == 6 & die(3) ~= 6;
    title(['Green Scored ' num2str(die(1)) ', ' num2str(die(2)) ' and ' num2str(die(3))],'color','g')
    t=3; % The player gets to make 3 moves
elseif die(1) ~= 6
    title(['Green Scored ' num2str(die(1))],'color','g')
    t=1; % The player gets to make 1 move
end
