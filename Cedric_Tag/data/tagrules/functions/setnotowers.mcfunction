
scoreboard players set @a tag_notowers 1

tellraw @a [{"text":"New rule activated: no towers","color":"gold"}]
tellraw @a [{"text":"[Tag: remove rule no towers]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function tagrules:unsetnotowers"},"hoverEvent":{"action":"show_text","value":{"text":"Tag rule: poison effect to players building towers"}}}]
