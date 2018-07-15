#MATLAB Project:   PIANO TILES

Summary: This is a game inspired from piano. In this game, piano keys (or tiles) will be falling from above and the user 
         will have to bring the red pointer (at the bottom) onto the same column on as that of the falling tile. 
         If user is successful in touching the pointer on the tile, then a piano key tune is heard and his score increases,
         otherwise userís lives decreases by 1. When user misses 5 tiles, the game ends.


Usage:   Start the game by clicking Runme1.m. This begins the game using keyboard inputs.


Options: There are 3 ways to play this game.
         1. By Keyboard (Runme1.m)
         2. By Wiimote (Runme2.m)
         3. By Smartphone (Runme3.m)


Features: If a user misses 10 tiles, the game stops and shows that the game is over.
	  
	  During the game, after some time, the speed of the game increases.

	  There is are few bonus features in this game
		1. A virtual piano (Runme5.m). It takes input from keyboard from A-L & Z-B rows of the keyboard and 
                   plays the tune
		2. Playing jingle bell tune (Runme4.m). It plays the christmas jingle bell tune instead of the normal 
                   three key tunes. 

Programming: 

	 Unusual Feature: Taking inputs from wii and keyboard is too common, hence there is a runme3.m file that
			  takes input from the phone

	 Structure:  The main program is started by runme1.m
			
		     The function homescreen() is called by the .m files to show the homescreen

		     Runme2.m takes input from wiimote, but in order to do so, you have to be sure to be in WiiLab directory
		     and first run the demo program to initialise wiimote

		     Runme3.m takes input from mobile phone

		     Runme4.m plays the game with jingle bell tune

		     Runme5.m is the virtual piano
