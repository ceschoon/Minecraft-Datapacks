
scoreboard objectives remove tag_notowers
scoreboard objectives remove tag_ylimit
scoreboard objectives remove tag_notunnels
scoreboard objectives remove tag_noboats

scoreboard objectives add tag_notowers dummy
scoreboard objectives add tag_ylimit dummy
scoreboard objectives add tag_notunnels dummy
scoreboard objectives add tag_noboats dummy

scoreboard players set @a tag_notowers 0
scoreboard players set @a tag_ylimit 0
scoreboard players set @a tag_notunnels 0
scoreboard players set @a tag_noboats 0

scoreboard objectives remove tag_distInBoat
scoreboard objectives add tag_distInBoat minecraft.custom:minecraft.boat_one_cm
scoreboard players set @a tag_distInBoat 0

tellraw @a [" "]
tellraw @a [{"text":"[Tag: add rule no boats]","color":"gold", "clickEvent":{"action":"run_command","value":"/function tagrules:setnoboats"},"hoverEvent":{"action":"show_text","value":{"text":"Tag rule: poison effect to players travelling by boat"}}}]
tellraw @a [{"text":"[Tag: add rule no tunnels]","color":"gold", "clickEvent":{"action":"run_command","value":"/function tagrules:setnotunnels"},"hoverEvent":{"action":"show_text","value":{"text":"Tag rule: poison effect to players in 1 by 1 tunnels"}}}]
tellraw @a [{"text":"[Tag: add rule no towers]","color":"gold", "clickEvent":{"action":"run_command","value":"/function tagrules:setnotowers"},"hoverEvent":{"action":"show_text","value":{"text":"Tag rule: poison effect to players building towers"}}}]
tellraw @a [{"text":"[Tag: add rule y limit]","color":"gold", "clickEvent":{"action":"run_command","value":"/function tagrules:setylimit"},"hoverEvent":{"action":"show_text","value":{"text":"Tag rule: adventure mode above y=90"}}}]

#say "Cedric Tag: reloaded tag rules"
