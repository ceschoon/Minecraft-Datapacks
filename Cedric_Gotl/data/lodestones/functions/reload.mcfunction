# Scoreboard for variables
scoreboard objectives remove ls_On
scoreboard objectives remove ls_DeathCount
scoreboard objectives add ls_On dummy
scoreboard objectives add ls_DeathCount deathCount

# Teams 
team remove ls_team1
team remove ls_team2

team add ls_team1
team add ls_team2

team modify ls_team1 color green
team modify ls_team2 color red

# Compass module
function lodestones:compassreload

# Messages 
say "Cedric Gotl: reloaded lodestones module!"
