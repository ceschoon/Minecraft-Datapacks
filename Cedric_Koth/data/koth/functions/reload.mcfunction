
scoreboard objectives remove koth_DeathCount
scoreboard objectives remove koth_TimeTicks
scoreboard objectives remove koth_TimeSec
scoreboard objectives remove koth_timeTotal
scoreboard objectives remove koth_On

scoreboard objectives add koth_DeathCount deathCount
scoreboard objectives add koth_TimeTicks dummy
scoreboard objectives add koth_TimeSec dummy "Time"
scoreboard objectives add koth_TimeTotal dummy
scoreboard objectives add koth_Hunted dummy
scoreboard objectives add koth_On dummy

scoreboard objectives remove koth_rng
scoreboard objectives add koth_rng minecraft.custom:minecraft.walk_one_cm
scoreboard players set @a koth_rng 0

team remove offhill
team remove onhill

team add offhill
team add onhill

team modify offhill color gray
team modify onhill color gold

tellraw @a [" "]
tellraw @a [{"text":"=== King of the Hill ===","color":"gold","bold":true}]
tellraw @a [{"text":"[Info]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function koth:info"}}]
tellraw @a [{"text":"[Start]","color":"green", "clickEvent":{"action":"run_command","value":"/function koth:start"},"hoverEvent":{"action":"show_text","value":{"text":"Note: the platform will be generated where you stand"}}}]
tellraw @a [" "]

#say "Cedric Koth: reloaded"

function koth:compassreload
