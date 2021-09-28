
scoreboard objectives remove hunt_DeathCount
scoreboard objectives remove hunt_TimeTicks
scoreboard objectives remove hunt_TimeSec
scoreboard objectives remove hunt_timeTotal
scoreboard objectives remove hunt_Hunted
scoreboard objectives remove hunt_On

scoreboard objectives add hunt_DeathCount deathCount
scoreboard objectives add hunt_TimeTicks dummy
scoreboard objectives add hunt_TimeSec dummy "Time Hunted"
scoreboard objectives add hunt_TimeTotal dummy
scoreboard objectives add hunt_Hunted dummy
scoreboard objectives add hunt_On dummy

tellraw @a [" "]
tellraw @a [{"text":"=== Manhunt ===","color":"gold","bold":true}]
tellraw @a [{"text":"[Info]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function hunt:info"}}]
tellraw @a [{"text":"[Start with me]","color":"green", "clickEvent":{"action":"run_command","value":"/function hunt:start"},"hoverEvent":{"action":"show_text","value":{"text":"Player who clicks is hunted"}}}]
tellraw @a [{"text":"[Start with random player]","color":"green", "clickEvent":{"action":"run_command","value":"/execute as @r run function hunt:start"},"hoverEvent":{"action":"show_text","value":{"text":"Hunted player is selected at random"}}}]
tellraw @a [" "]

#say "Cedric Hunt: reloaded hunt"
