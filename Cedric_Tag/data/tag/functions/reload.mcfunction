
scoreboard objectives remove tag_DeathCount
scoreboard objectives remove tag_TimeTicks
scoreboard objectives remove tag_TimeSec
scoreboard objectives remove tag_timeTotal
scoreboard objectives remove tag_Tag
scoreboard objectives remove tag_On

scoreboard objectives add tag_DeathCount deathCount
scoreboard objectives add tag_TimeTicks dummy
scoreboard objectives add tag_TimeSec dummy "Time Tagged"
scoreboard objectives add tag_TimeTotal dummy
scoreboard objectives add tag_Tag dummy
scoreboard objectives add tag_On dummy

# indication variables for derived games

scoreboard objectives remove tag_rtag
scoreboard objectives remove tag_rtagxs

scoreboard objectives add tag_rtag dummy
scoreboard objectives add tag_rtagxs dummy

scoreboard players set @a tag_rtag 0
scoreboard players set @a tag_rtagxs 0

tellraw @a [" "]
tellraw @a [{"text":"====== Tag ======","color":"gold","bold":true}]

function tag:reloadteams
function tagrules:reload

tellraw @a [{"text":"[Start (basic)]","color":"green", "clickEvent":{"action":"run_command","value":"/function tag:start"},"hoverEvent":{"action":"show_text","value":{"text":"Basic tag: No modification of map or player inventory/effects"}}}]
tellraw @a [{"text":"[Start rtag]","color":"green", "clickEvent":{"action":"run_command","value":"/function rtag:start"},"hoverEvent":{"action":"show_text","value":{"text":"Proper Tag: Set worldborders, etc."}}}]
tellraw @a [{"text":"[Start rtagxs]","color":"green", "clickEvent":{"action":"run_command","value":"/function rtagxs:start"},"hoverEvent":{"action":"show_text","value":{"text":"Mini Tag: Extra small map and one puch kill"}}}]
tellraw @a [" "]

#say "Cedric Tag: reloaded!"
