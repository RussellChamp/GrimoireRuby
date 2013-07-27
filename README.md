Grimoire
========

Grimoire: Magic item generator for the Pathfinder tabletop RPG
written by Russell Champoux
last updated 7/27/13

This project contains a series of function under the 'Grimoire' module.
 * The primary file to include is grimoire.rb

Grimoire currently only rolls for items based on the Pathfinder Core Rulebook
I hope to add roll tables for the Pathfinder Advanced Player's Guide soon
Grimoire has been tested and known to work with Ruby 1.8 and 1.9

While the primary purpose of this project is to be used as a library accessed by other projects, you can manually generate items by following these steps
 1. Open a terminal and `cd` to the directory Grimoire is located
 2. Start an interactive ruby shell by typing `irb` into the terminal
 3. load the ruby module by typing `require "./grimoire.rb"`
 4. Once the module is loaded (the above statement should just return "=> true"), you can run bits with the following commands
   `Grimoire.get_items(num_minor, num_medium, num_major)` where you specify how many of each item you want
   `Grimoire.get_item(quality, type)` where quality can be 'minor', 'medium', or 'major' and the type can be 'armor', 'shield', 'weapon', 'potion', 'ring', 'rod', 'scroll', 'staff', or 'wondrous item'

I'm going to assume that, if you got this far, you're smart and can look at the code for additional functions you can run. If you want to just get a list of function definitions, you can always run the following grep in the grimoire directory
`grep -r 'def '`

This project also contains the start for an IRC bot that utilizes the Grimoire module
 * The purpose is to generate magic items as commanded in an IRC room
 * It's not working quite yet

Send questions, feedback, or bug reports/fixes to RussellChamp [at] gmail [dot] com
 
