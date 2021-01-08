# Scoreboard for variables
scoreboard objectives remove ls_On
scoreboard objectives remove ls_DeathCount
scoreboard objectives add ls_On dummy
scoreboard objectives add ls_DeathCount deathCount

# Teams 
team remove team1
team remove team2

team add team1
team add team2

team modify team1 color green
team modify team2 color red

# Compass module
function lodestones:compassreload

# Messages 
say "Cedric Lodestones: reloaded!"
