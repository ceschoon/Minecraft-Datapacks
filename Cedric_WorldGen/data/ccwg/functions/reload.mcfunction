
#tellraw @a [" "]
#tellraw @a [{"text":"=== Custom World Generation ===","color":"gold","bold":true}]
#tellraw @a [{"text":"[Info]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function ccwg:info"}}]
#tellraw @a [{"text":"[Menu]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function ccwg:menu"}}]
#tellraw @a [" "]

scoreboard objectives remove ccwg_setup_portal
scoreboard objectives add ccwg_setup_portal dummy
scoreboard players set @a ccwg_setup_portal 0

function ccwg:menu
