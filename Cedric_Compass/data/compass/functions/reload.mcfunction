# Compass Module reload
# Credits to the author of the huntpack-e1750 datapack

scoreboard objectives remove drop
scoreboard objectives remove target
scoreboard objectives remove X
scoreboard objectives remove Y
scoreboard objectives remove Z

scoreboard objectives add drop minecraft.dropped:minecraft.compass
scoreboard objectives add target dummy
scoreboard objectives add X dummy
scoreboard objectives add Y dummy
scoreboard objectives add Z dummy

scoreboard players set @a target 0

# Add blanks spaces because this is the first datapack
# to be loaded and the spaces make things look cleaner
tellraw @a [" "]
tellraw @a [" "]
tellraw @a [" "]
tellraw @a [" "]
tellraw @a [" "]
tellraw @a [" "]
tellraw @a [" "]
tellraw @a [" "]
tellraw @a [" "]
tellraw @a [" "]
tellraw @a [" "]
tellraw @a [" "]
tellraw @a [" "]
tellraw @a [" "]
tellraw @a [" "]
tellraw @a [" "]
tellraw @a [" "]
tellraw @a [" "]
tellraw @a [" "]
tellraw @a [" "]
tellraw @a [" "]
tellraw @a [" "]
tellraw @a [" "]
tellraw @a [" "]
tellraw @a [" "]
tellraw @a [" "]
tellraw @a [" "]
tellraw @a [" "]
tellraw @a [" "]
tellraw @a [" "]
tellraw @a [" "]
tellraw @a [" "]

tellraw @a [" "]
tellraw @a [{"text":"=== Compass module ===","color":"gold","bold":true}]
tellraw @a [{"text":"[Info]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function compass:info"}}]
tellraw @a [{"text":"[Track me]","color":"green", "clickEvent":{"action":"run_command","value":"/function compass:trackme"},"hoverEvent":{"action":"show_text","value":{"text":"Make compasses point to the player who clicks"}}}]
tellraw @a [" "]

#say "Cedric Compass: reloaded"
