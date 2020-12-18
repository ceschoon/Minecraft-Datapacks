# Currently no specific reload action to take besides those in base game "tag"

scoreboard objectives remove tag_kbhunter1
scoreboard objectives remove tag_kbhunter2
scoreboard objectives remove tag_kbhunter3
scoreboard objectives remove tag_kbhunter4

scoreboard objectives add tag_kbrunner killedByTeam.green
scoreboard objectives add tag_kbrunner killedByTeam.dark_green
scoreboard objectives add tag_kbrunner killedByTeam.blue
scoreboard objectives add tag_kbrunner killedByTeam.dark_blue

team remove runner
team remove hunter1
team remove hunter2
team remove hunter3
team remove hunter4

team add runner
team add hunter1
team add hunter2
team add hunter3
team add hunter4

team modify runner color gold
team modify hunter1 color green
team modify hunter2 color dark_green
team modify hunter3 color blue
team modify hunter4 color dark_blue

say "Cedric Tag: reloaded rtag"
