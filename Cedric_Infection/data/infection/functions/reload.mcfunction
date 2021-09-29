
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

tellraw @a [" "]
tellraw @a [{"text":"=== Infection ===","color":"gold","bold":true}]
tellraw @a [{"text":"[Info]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function infection:info"}}]
tellraw @a [{"text":"[Start with me]","color":"green", "clickEvent":{"action":"run_command","value":"/function infection:start"},"hoverEvent":{"action":"show_text","value":{"text":"First infected is the one who clicks"}}}]
tellraw @a [{"text":"[Start with random player]","color":"green", "clickEvent":{"action":"run_command","value":"/execute as @r run function infection:start"},"hoverEvent":{"action":"show_text","value":{"text":"First infected is selected at random"}}}]
tellraw @a [" "]

#say "Cedric Infection: reloaded!"

