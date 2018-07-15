% PIANO TILES
% Jingle Bell
% CS 100 Project
%
% Muhammad Arsalan Khan
% 19100150

clear all
clc
figure;
axis equal;
axis ([0 60 0 120])
axis off;



% Audio Files
[y1,Fs] = audioread('1.mp3');
[y2,Fs] = audioread('2.mp3');
[y3,Fs] = audioread('3.mp3');
[y4,Fs] = audioread('4.mp3');
[y5,Fs] = audioread('5.mp3');
[y6,Fs] = audioread('6.mp3');
[y7,Fs] = audioread('7.mp3');
[y8,Fs] = audioread('8.mp3');
[y9,Fs] = audioread('9.mp3');
[y10,Fs] = audioread('10.mp3');
[y11,Fs] = audioread('11.mp3');
[y12,Fs] = audioread('12.mp3');
[y13,Fs] = audioread('13.mp3');
[y14,Fs] = audioread('14.mp3');
[y15,Fs] = audioread('15.mp3');
[y16,Fs] = audioread('16.mp3');
[y17,Fs] = audioread('17.mp3');
[y18,Fs] = audioread('18.mp3');
[y19,Fs] = audioread('19.mp3');
[y20,Fs] = audioread('20.mp3');
[y21,Fs] = audioread('21.mp3');
[y22,Fs] = audioread('22.mp3');
[y23,Fs] = audioread('23.mp3');
[y24,Fs] = audioread('24.mp3');
[y25,Fs] = audioread('25.mp3');
[y26,Fs] = audioread('26.mp3');
[y27,Fs] = audioread('27.mp3');
[y28,Fs] = audioread('28.mp3');
[y29,Fs] = audioread('29.mp3');
[y30,Fs] = audioread('30.mp3');
[y31,Fs] = audioread('31.mp3');
[y32,Fs] = audioread('32.mp3');
[y33,Fs] = audioread('33.mp3');
[y34,Fs] = audioread('34.mp3');
[y35,Fs] = audioread('35.mp3');
[y36,Fs] = audioread('36.mp3');
[y37,Fs] = audioread('37.mp3');
[y38,Fs] = audioread('38.mp3');
[y39,Fs] = audioread('39.mp3');
[y40,Fs] = audioread('40.mp3');
[y41,Fs] = audioread('41.mp3');
[y42,Fs] = audioread('42.mp3');
[y43,Fs] = audioread('43.mp3');
[y44,Fs] = audioread('44.mp3');


%initialization
main_counter = 0;
start_tile_no = 1;
steps_counter = 0;
limiter = 0;
x = 20;
counter_for_loop = 0;
pos_of_end_tile = 10000;
points = 0;
lives = 5;
sounds = 0;
play = 0;

% Creates a background;
rectangle('Position',[0 0 60 120], 'FaceColor', 'w');

% Creating a pointer;
pointer = rectangle('Position',[x 0 20 20], 'FaceColor', 'r');

while 1;
    
    main_counter = main_counter + 1;
    limiter = limiter + 1; %this is a limiter to limit the no of iteration for loop
    
    if mod(main_counter,30) == 0 || main_counter == 1
        steps_counter = steps_counter + 1;
        tile_no = steps_counter; %just to simplify
        tile(tile_no) = rectangle('Position',[((randi(3)*20)-20) (120) 20 30],'FaceColor','k'); %creates a tile
    end
    
    for loop = start_tile_no:tile_no
        getting = get(tile(loop), 'Position');
        set(tile(loop), 'Position', [getting(1) (getting(2)-1) 20 30]);
    end
    
    if limiter == 150
        start_tile_no = start_tile_no + 1;
        limiter = 120;
    end
    
    %pause(0.01)
    
    % Conditions
    
    % take the x co-ordinate from the tile and compare it with red block
    
    % User-Pointer
    
    set(gcf, 'KeyPressFcn', 'a = get(gcf, ''CurrentCharacter'');');
    a = 1;
    while counter_for_loop < 3
        pause(0.003);
        if a == 28
            x = x - 20;
            break;
        end
        if a == 29
            x = x + 20;
            break;
        end
        counter_for_loop = counter_for_loop + 1;
        
        
        % Press ENTER to stop!
        if a == 13
            break;
        end
        
        
    end
    if x>40
        x = 40;
    end
    
    if x<0
        x = 0;
    end
    
    
    set(pointer, 'Position', [x 0 20 20]);
    
    counter_for_loop = 0;
    
    
    if start_tile_no > 1
        pos_of_end_tile = get(tile(start_tile_no + 1), 'Position');
        color_of_tile = get(tile(start_tile_no + 1), 'FaceColor');
        
        if pos_of_end_tile(2) == -0 && color_of_tile(1) == 0
            lives = lives - 1;
        end
        
    end
    
    pos_of_pointer = get(pointer, 'Position');
    
    if pos_of_end_tile(1) == 0 && pos_of_pointer(1) == 0 && pos_of_end_tile(2) <= 20 && color_of_tile(1) == 0
        sounds = 1 + sounds;
        set(tile(start_tile_no + 1), 'FaceColor', 'y');
        points = points + 10;
        play = 1;
    end
    
    if pos_of_end_tile(1) == 20 && pos_of_pointer(1) == 20 && pos_of_end_tile(2) <= 20 && color_of_tile(1) == 0
        sounds = 1 + sounds;
        set(tile(start_tile_no + 1), 'FaceColor', [0.2 1 0.4]);
        points = points + 10;
        play = 1;
    end
    
    if pos_of_end_tile(1) == 40 && pos_of_pointer(1) == 40 && pos_of_end_tile(2) <= 20 && color_of_tile(1) == 0
        sounds = 1 + sounds;
        set(tile(start_tile_no + 1), 'FaceColor', [1 0 1]);
        points = points + 10;
        play = 1;
    end
    
%Settign first 2 tiles as grey to give user time to begin
set(tile(1), 'FaceColor', [0.5 0.5 0.5])
if main_counter>=30    
set(tile(2), 'FaceColor', [0.5 0.5 0.5])
end    
    
% Press ENTER to stop!
if a == 13
break;
end
    
% Lose Statement
if lives == 0
title('YOU LOSE!')
break;
end
    
display = ['Points: ' num2str(points) ' ' 'Lives: ' num2str(lives)];
title(display);

disp(sounds)


% sounds statements

if play == 1
    
if sounds == 1
    sound(y1,Fs);
end
if sounds == 2
    sound(y2,Fs);
end
if sounds == 3
    sound(y3,Fs);
end
if sounds == 4
    sound(y4,Fs);
end
if sounds == 5
    sound(y5,Fs);
end
if sounds == 6
    sound(y6,Fs);
end
if sounds == 7
    sound(y7,Fs);
end
if sounds == 8
    sound(y8,Fs);
end
if sounds == 9
    sound(y9,Fs);
end
if sounds == 10
    sound(y10,Fs);
end

if sounds == 11
    sound(y11,Fs);
end
if sounds == 12
    sound(y12,Fs);
end
if sounds == 13
    sound(y13,Fs);
end
if sounds == 14
    sound(y14,Fs);
end
if sounds == 15
    sound(y15,Fs);
end
if sounds == 16
    sound(y16,Fs);
end
if sounds == 17
    sound(y17,Fs);
end
if sounds ==18
    sound(y18,Fs);
end
if sounds == 19
    sound(y19,Fs);
end
if sounds == 20
    sound(y20,Fs);
end

if sounds == 21
    sound(y21,Fs);
end
if sounds == 22
    sound(y22,Fs);
end
if sounds == 23
    sound(y23,Fs);
end
if sounds == 24
    sound(y24,Fs);
end
if sounds == 25
    sound(y25,Fs);
end
if sounds == 26
    sound(y26,Fs);
end
if sounds == 27
    sound(y27,Fs);
end
if sounds == 28
    sound(y28,Fs);
end
if sounds == 29
    sound(y29,Fs);
end
if sounds == 30
    sound(y30,Fs);
end

if sounds == 31
    sound(y31,Fs);
end
if sounds == 32
    sound(y32,Fs);
end
if sounds == 33
    sound(y33,Fs);
end
if sounds == 34
    sound(y34,Fs);
end
if sounds == 35
    sound(y35,Fs);
end
if sounds == 36
    sound(y36,Fs);
end
if sounds == 37
    sound(y37,Fs);
end
if sounds == 38
    sound(y38,Fs);
end
if sounds == 39
    sound(y39,Fs);
end
if sounds == 40
    sound(y40,Fs);
end
if sounds == 41
    sound(y41,Fs);
end
if sounds == 42
    sound(y42,Fs);
end
if sounds == 43
    sound(y43,Fs);
end
if sounds == 44
    sound(y44,Fs);
    sounds = 0;
end

play = 0;
end

end

