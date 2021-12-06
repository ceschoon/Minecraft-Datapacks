
#tellraw @a [" "]
#tellraw @a [{"text":"=== Custom World Generation ===","color":"gold","bold":true}]
#tellraw @a [{"text":"[Info]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function ccwg:info"}}]
#tellraw @a [{"text":"[Menu]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function ccwg:menu"}}]
#tellraw @a [" "]

function ccwg:menu
