
scoreboard objectives remove inf_On
scoreboard objectives remove inf_DeathCount
scoreboard objectives remove inf_TimeTicks
scoreboard objectives remove inf_TimeSec
scoreboard objectives remove inf_WarnDelay

scoreboard objectives add inf_On dummy
scoreboard objectives add inf_DeathCount deathCount
scoreboard objectives add inf_TimeTicks dummy
scoreboard objectives add inf_TimeSec dummy "Time"
scoreboard objectives add inf_WarnDelay dummy

team remove sane
team add sane 
team modify sane color green

team remove infected
team add infected
team modify infected color red

say "Cedric Infection: reloaded!"
