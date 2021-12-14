
tellraw @a [" "]
tellraw @a [{"text":"=== Custom World Generation ===","color":"gold","bold":true}]
tellraw @a [{"text":"[Get the Book]","color":"aqua", "clickEvent":{"action":"run_command","value":"/execute if entity @s[gamemode=creative] run function ccwg:book/give_book"},"hoverEvent":{"action":"show_text","value":{"text":"You can only get it if you are in creative mode."}}}]
tellraw @a [" "]

#function ccwg:menu

scoreboard objectives remove ccwg_setup_portal
scoreboard objectives add ccwg_setup_portal dummy
scoreboard players set @a ccwg_setup_portal 0

scoreboard objectives remove ccwg_portal_cooldown
scoreboard objectives add ccwg_portal_cooldown dummy
scoreboard players set @a ccwg_portal_cooldown 0

scoreboard objectives remove ccwg_portal_sound_ambient
scoreboard objectives add ccwg_portal_sound_ambient dummy
scoreboard players set @a ccwg_portal_sound_ambient 0
