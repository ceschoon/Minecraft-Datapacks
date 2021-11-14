# Scoreboard for variables
scoreboard objectives remove ls_On
scoreboard objectives remove ls_PrepTime
scoreboard objectives remove ls_Kills
scoreboard objectives remove ls_KilledBy1
scoreboard objectives remove ls_KilledBy2
scoreboard objectives remove ls_DeathCount

scoreboard objectives add ls_On dummy
scoreboard objectives add ls_PrepTime dummy
scoreboard objectives add ls_Kills minecraft.custom:minecraft.player_kills
scoreboard objectives add ls_KilledBy1 killedByTeam.green
scoreboard objectives add ls_KilledBy2 killedByTeam.red
scoreboard objectives add ls_DeathCount deathCount

# Compass module
function lodestones:compassreload

# Messages 
#say "Cedric Gotl: reloaded lodestones module!"
