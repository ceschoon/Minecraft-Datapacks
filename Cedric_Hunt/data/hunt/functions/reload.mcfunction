
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
tellraw @a [{"text":"[Manhunt: start with me]","color":"gold", "clickEvent":{"action":"run_command","value":"/function hunt:start"},"hoverEvent":{"action":"show_text","value":{"text":"Start minigame: Manhunt (Player who clicks is hunted)"}}}]
tellraw @a [{"text":"[Manhunt: start with random player]","color":"gold", "clickEvent":{"action":"run_command","value":"/execute as @r run function hunt:start"},"hoverEvent":{"action":"show_text","value":{"text":"Start minigame: Manhunt (Hunted player slected at random)"}}}]
tellraw @a [" "]

#say "Cedric Hunt: reloaded hunt"
