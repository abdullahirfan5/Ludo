if player == 'y'
    
    die(1) = 1 + floor(6*rand); % First die roll
    die(2) = 1 + floor(6*rand); % Second die roll
    die(3) = 1 + floor(6*rand); % Third die roll
    
    sound(o4,Fs4) % Die rolling sound effect
    
    yScore % Displays the score(s) on the die/dice
    
    if die(1) == 6 & die(2) == 6 & die(3) == 6;
        title(['Yellow Scored ' num2str(die(1)) ', ' num2str(die(2)) ' and ' num2str(die(3)) ' - Invalid move!'],'color','y')
        invalid = 1;
    end
    
    if invalid ~= 1
        
        for i = 1:t
            
            yScore % Displays the score(s) on the die/dice
            
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
                elseif any(['s', 'S'] == keyPressed) & all(pos{4}(:) == -1) & die(i) ~= 6 | any(pos{4}(:) ~= 1) & any(pos{4}(:) + die(i) > 86) & any(['s', 'S'] == keyPressed)
                    next = 1; % The player skips the turn
                end
                if pos{4}(k) == -1 & die(i) == 6
                    pos{4}(k) = ypos(yn(k)); % Piece comes out of its base
                    edit_pos(player,pos,yl,x1,y1,k) % Alters the position of the piece graphically
                    
                    yCapture % m file that checks if any opponents have been captured
                    
                    next = 1; % Next move/turn
                    sound(o1,Fs1) % Moving playing piece sound effect
                elseif pos{4}(k) ~= -1 & die(i) + yn(k) <= 57
                    yn(k) = yn(k) + die(i) % Updates the piece's progress by the score on the ongoing die roll
                    pos{4}(k) = ypos(yn(k)); % Increments the piece's position according to progress
                    edit_pos(player,pos,yl,x1,y1,k) % Alters the position of the piece graphically
                    
                    yCapture % m file that checks if any opponents have been captured
                    
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
    
    if all(pos{4}(:) == 86) % When all pieces have reached home
        done = 1; % Game over
        msgbox(['Yellow Wins!'])
        sound(o3,Fs3) % Winning sound effect
    else
        
        player = 'g'; % Turn switches to Green
        
        for i = 1:90 % Rotates the board fo the next player
            view (-290-i,35)
            pause(0.01)
        end
    end
    
    pause(1)
    
end