% PIANO TILES
% WiiInputs
% CS 100 Project
% 
% Muhammad Arsalan Khan
% 19100150

clc
figure;

axis equal;
axis ([0 60 0 120])
axis off;

% Audio Files
[y1,Fs] = audioread('30.wav');
[y2,Fs] = audioread('40.wav');
[y3,Fs] = audioread('60.wav');


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
pausing = 0.005;

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

for i = 1:3

[X Y Z] = getWiimoteAccel ()
[A B UP RIGHT DOWN LEFT PLUS MINUS HOME ONE TWO] = getWiimoteButtons () 
disp(B)
disp(X)

end

if X >=5
    x = 40;
end

if X <= -5
    x = 0;
end

if X < 4 && X > -4
    x = 20;
end

set(pointer, 'Position', [x 0 20 20]);

if start_tile_no > 1
 pos_of_end_tile = get(tile(start_tile_no + 1), 'Position');
 color_of_tile = get(tile(start_tile_no + 1), 'FaceColor');

 if pos_of_end_tile(2) == -0 && color_of_tile(1) == 0
    lives = lives - 1;
 end

end 
    
 pos_of_pointer = get(pointer, 'Position');

if pos_of_end_tile(1) == 0 && B == 1 && pos_of_pointer(1) == 0 && pos_of_end_tile(2) <= 20 && color_of_tile(1) == 0
sound(y1,Fs);

set(tile(start_tile_no + 1), 'FaceColor', 'y');
points = points + 10;
end

if pos_of_end_tile(1) == 20 && B == 1 && pos_of_pointer(1) == 20 && pos_of_end_tile(2) <= 20 && color_of_tile(1) == 0
sound(y2,Fs);
set(tile(start_tile_no + 1), 'FaceColor', [0.2 1 0.4]);
points = points + 10;
end

if pos_of_end_tile(1) == 40 && B == 1 && pos_of_pointer(1) == 40 && pos_of_end_tile(2) <= 20 && color_of_tile(1) == 0
sound(y3,Fs);
set(tile(start_tile_no + 1), 'FaceColor', [1 0 1]);
points = points + 10;
end

%Settign first 2 tiles as grey to give user time to begin
set(tile(1), 'FaceColor', [0.5 0.5 0.5])
if main_counter>=30    
set(tile(2), 'FaceColor', [0.5 0.5 0.5])
end


% Lose Statement
if lives == 0
    disp('YOU LOSE!')    
    break;
end

display1 = ['Points: ' num2str(points) ' ' 'Lives: ' num2str(lives)];
disp(display1);

pause (0.01)


end

