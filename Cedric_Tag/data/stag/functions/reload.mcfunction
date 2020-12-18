# Currently no specific reload action to take besides those in base game "tag"

scoreboard objectives remove tag_kbrunner
scoreboard objectives add tag_kbrunner killedByTeam.aqua

team add runner
#team remove hunter1
#team remove hunter2
#team remove hunter3
#team remove hunter4

team add runner
#team add hunter1
#team add hunter2
#team add hunter3
#team add hunter4

team modify runner color aqua
#team modify hunter1 color dark_red
#team modify hunter2 color dark_red
#team modify hunter3 color dark_red
#team modify hunter4 color dark_red

say "Cedric Tag: reloaded stag"
