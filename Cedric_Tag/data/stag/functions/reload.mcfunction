# Currently no specific reload action to take besides those in base game "tag"

scoreboard objectives remove tag_kbrunner
scoreboard objectives add tag_kbrunner killedByTeam.gold

team remove runner
team add runner
team modify runner color gold

say "Cedric Tag: reloaded stag"
