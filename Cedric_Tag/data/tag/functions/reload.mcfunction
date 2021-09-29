
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
tellraw @a [{"text":"[Info]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function tag:info"}}]

function tag:reloadteams
function tagrules:reload

tellraw @a [{"text":"[Start (basic)]","color":"green", "clickEvent":{"action":"run_command","value":"/function tag:start"},"hoverEvent":{"action":"show_text","value":{"text":"No modification of map or player inventory/effects"}}}]
tellraw @a [{"text":"[Start (normal)]","color":"green", "clickEvent":{"action":"run_command","value":"/function rtag:start"},"hoverEvent":{"action":"show_text","value":{"text":"Normal map 400x400"}}}]
tellraw @a [{"text":"[Start (mini)]","color":"green", "clickEvent":{"action":"run_command","value":"/function rtagxs:start"},"hoverEvent":{"action":"show_text","value":{"text":"Extra small map and one puch kill"}}}]
tellraw @a [" "]

#say "Cedric Tag: reloaded!"
