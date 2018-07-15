function homescreen()
axis equal;
%axis off;

% For BG
%Creates a background;

hold on;
rectangle('Position',[0 0 60 120], 'FaceColor', 'w');
rectangle('Position',[0 0 20 30], 'FaceColor', 'k');
rectangle('Position',[40 0 20 30], 'FaceColor', 'k');
rectangle('Position',[0 60 20 30], 'FaceColor', 'k');
rectangle('Position',[40 60 20 30], 'FaceColor', 'k');
rectangle('Position',[20 30 20 30], 'FaceColor', 'k');
rectangle('Position',[20 90 20 30], 'FaceColor', 'k');

hold on;
img = imread('pianostart2.jpg');
bgimg = image([0 60],[120 0],img);
set(gca,'YDir','normal')
axis off;
axis equal;
axis([0 60 0 120])
pause(2);

i = 1;
 for j = 0:30
 axis ([0 60 j 120-j])
 pause(0.033)
 if i <= 0
     i = 0;
 end
set(bgimg,'AlphaData',i);
i = i - 0.05;

 end

pause(1)

end

