if die(1) == 6 & die(2) ~= 6
    title(['Blue Scored ' num2str(die(1)) ' and ' num2str(die(2))],'color','b')
    t=2; % The player gets to make 2 moves
elseif die(1) == 6 & die(2) == 6 & die(3) ~= 6;
    title(['Blue Scored ' num2str(die(1)) ', ' num2str(die(2)) ' and ' num2str(die(3))],'color','b')
    t=3; % The player gets to make 3 moves
elseif die(1) ~= 6
    title(['Blue Scored ' num2str(die(1))],'Color','b')
    t=1; % The player gets to make 1 move
end