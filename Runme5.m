clear all
close all
clc
% For BG 1280x800
img = imread('actual piano.jpg');
image([0 1280],[800 0],img);
set(gca,'YDir','normal')
title('Press keys from 2nd(A-L) and 3rd(Z-B) row. ENTER to close!')
axis off;
axis equal;
axis ([0 1280 0 800]);
hold on;

%calling all audios
[y10,Fs] = audioread('10.wav');
[y11,Fs] = audioread('11.wav');
[y12,Fs] = audioread('12.wav');
[y13,Fs] = audioread('13.wav');
[y14,Fs] = audioread('14.wav');
[y15,Fs] = audioread('15.wav');
[y16,Fs] = audioread('16.wav');
[y17,Fs] = audioread('17.wav');
[y18,Fs] = audioread('18.wav');
[y19,Fs] = audioread('19.wav');
[y20,Fs] = audioread('20.wav');
[y21,Fs] = audioread('21.wav');
[y22,Fs] = audioread('22.wav');
[y23,Fs] = audioread('23.wav');
[y24,Fs] = audioread('24.wav');
[y25,Fs] = audioread('25.wav');

%keypress inputs
    set(gcf, 'KeyPressFcn', 'a = get(gcf, ''CurrentCharacter'');');
    a = 1;
    while 1
        pause(0.005);
       
        %     97
        if a == 97
            % % for 1
 x = [0,80,80,38,38,0,0];
 y = [62.5,62.5,165,165,358,358,62.5];
            sound(y10,Fs);
           aa =  plot(x,y, 'r', 'linewidth',3);
            pause(1);
            delete(aa)
        end
        %    115
        if a == 115
            % for 2
 x = [80,170,170,150,150,97,97,80,80];
 y = [62.5,62.5,163,163,355,355,163,163,62.5];

            sound(y11,Fs);
           s =  plot(x,y, 'r', 'linewidth',3);
            pause(1);
            delete(s)
        end
        %    100
        if a == 100
            % for 3
 x = [170,260,260,207.5,207.5,170,170];
 y = [62.5,62.5,355,355,163,163,62.5];
            sound(y12,Fs);
                      d =  plot(x,y, 'r', 'linewidth',3);
            pause(1);
            delete(d)
        end
        %    102
        if a == 102
            
 % for 4
 x = [260,350,350,307.5,307.5,260,260];
 y = [62.5,62.5,163,163,355,355,62.5];
            sound(y13,Fs);
                       f =  plot(x,y, 'r', 'linewidth',3);
            pause(1);
            delete(f)
            
        end
        %    103
        if a == 103
             % for 5
 x = [350,439,439,410,410,363,363,350,350];
 y = [62.5,62.5,163,163,355,355,163,163,62.5];
            sound(y14,Fs);
                       g =  plot(x,y, 'r', 'linewidth',3);
            pause(1);
            delete(g)
        end
        %    104
        if a == 104
             % for 6
  x = [439,529,529,514,514,467,467,439,439];
  y = [62.5,62.5,163,163,355,355,163,163,62.5];
  
            sound(y15,Fs);
                       h =  plot(x,y, 'r', 'linewidth',3);
            pause(1);
            delete(h)
        end
        %    106
        if a == 106
            % for 7
  x = [529,619,619,570,570,529,529];
  y = [62.5,62.5,355,355,163,163,62.5];  
            sound(y16,Fs);
                       j =  plot(x,y, 'r', 'linewidth',3);
            pause(1);
            delete(j)
        end
        %    107
        if a == 107
             % for 8
 x = [619,709,709,671,671,619,619];
 y = [62.5,62.5,163,163,355,355,62.5];
            sound(y17,Fs);
                       k =  plot(x,y, 'r', 'linewidth',3);
            pause(1);
            delete(k)
        end
        %    108
        if a == 108
             % for 9
 x = [709,799,799,780,780,726,726,709,709];
 y = [62.5,62.5,163,163,355,355,163,163,62.5];
            sound(y18,Fs);
                       l =  plot(x,y, 'r', 'linewidth',3);
            pause(1);
            delete(l)
        end
        %    122
        if a == 122
             % for 10
 x = [799,889,889,836,836,799,799];
 y = [62.5,62.5,355,355,163,163,62.5];
   
            sound(y19,Fs);
                      z =  plot(x,y, 'r', 'linewidth',3);
            pause(1);
            delete(z)
        end
        %    120
        if a == 120
             % for 11
 x = [889,979,979,937,937,889,889];
 y = [62.5,62.5,163,163,355,355,62.5];
            sound(y20,Fs);
                      x =  plot(x,y, 'r', 'linewidth',3);
            pause(1);
            delete(x)
        end
        %     99
        if a == 99
             % for 12
 x = [979,1069,1069,1040,1040,993,993,979,979];
 y = [62.5,62.5,163,163,355,355,163,163,62.5];
            sound(y21,Fs);
                       c =  plot(x,y, 'r', 'linewidth',3);
            pause(1);
            delete(c)
        end
        %    118
        if a == 118
             % for 13
 x = [1069,1159,1159,1144,1144,1098,1098,1069,1069];
 y = [62.5,62.5,163,163,355,355,163,163,62.5];
            sound(y22,Fs);
                       v =  plot(x,y, 'r', 'linewidth',3);
            pause(1);
            delete(v)
        end
        %     98
        if a == 98
             % for 14
 x = [1159,1249,1249,1203,1203,1159,1159];
 y = [62.5,62.5,355,355,163,163,62.5];
            sound(y23,Fs);
                       b =  plot(x,y, 'r', 'linewidth',3);
            pause(1);
            delete(b)
        end
   % Press ENTER to stop!
    if a == 13
        close all
        clear all
        clc
        break;
    end
    
        a = 1;
    end  