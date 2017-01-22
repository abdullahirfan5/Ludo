if player == 'r'
    
    die(1) = 1 + floor(6*rand); % First die roll
    die(2) = 1 + floor(6*rand); % Second die roll
    die(3) = 1 + floor(6*rand); % Third die roll
    
    sound(o4,Fs4) % Die rolling sound effect
    
    rScore % Displays the score(s) on the die/dice
    
    if die(1) == 6 & die(2) == 6 & die(3) == 6;
        title(['Red Scored ' num2str(die(1)) ', ' num2str(die(2)) ' and ' num2str(die(3)) ' - Invalid move!'],'color','r')
        invalid = 1; % The player does not get to play this turn
    end
    
    if invalid ~= 1
        
        for i = 1:t
            
            rScore % Displays the score(s) on the die/dice
            
            while ~next
                
                waitforbuttonpress;
                keyPressed = get(gcf, 'CurrentCharacter'); % Detects user input
                
                if keyPressed == '1'
                    k = 1; % Piece #1
                elseif keyPressed == '2'
                    k = 2; % Piece #2
                elseif keyPressed == '3'
                    k = 3; % Piece #3
                elseif keyPressed == '4'
                    k = 4; % Piece #4
                elseif any(['s', 'S'] == keyPressed) & all(pos{2}(:) == -1) & die(i) ~= 6 | any(pos{2}(:) ~= 1) & any(pos{2}(:) + die(i) > 66) & any(['s', 'S'] == keyPressed)
                    next = 1; % The player skips the turn
                end
                
                if pos{2}(k) == -1 & die(i) == 6
                    pos{2}(k) = rpos(rn(k)); % Piece comes out of its base
                    edit_pos(player,pos,r,x1,y1,k) % Alters the position of the piece graphically
                    
                    rCapture % m file that checks if any opponents have been captured
                    
                    next = 1; % Next move/turn
                    sound(o1,Fs1) % Moving playing piece sound effect
                elseif pos{2}(k) ~= -1 & die(i) + rn(k) <= 57
                    rn(k) = rn(k) + die(i); % Updates the piece's progress by the score on the ongoing die roll
                    pos{2}(k) = rpos(rn(k)); % Increments the piece's position according to progress
                    edit_pos(player,pos,r,x1,y1,k) % Alters the position of the piece graphically
                    
                    rCapture % m file that checks if any opponents have been captured
                    
                    next = 1; % Next move/turn
                    sound(o1,Fs1) % Moving playing piece sound effect
                end
            end
            
            next = 0;
            
        end
        
    end
    
    pause(0.5)
    keyPressed = '1';
    invalid = 0;
    
    
    
    if all(pos{2}(:) == 66) % When all pieces have reached home
        done = 1; % Game over
        msgbox(['Red Wins!'])
        sound(o3,Fs3) % Winning sound effect
    else
        if p == 2 % If two player mode is running
            player = 'g' % Turn switches to green
            for i = 1:90 % Rotates the board for the next player
                view(-110+i,35)
                pause(0.01)
            end
        else
            
            player = 'b'; % Turn switches to blue
            
            for i = 1:90 % Rotates the board for the next player
                view(-110-i,35)
                pause(0.01)
            end
        end
    end
    
    pause(1)
    
end