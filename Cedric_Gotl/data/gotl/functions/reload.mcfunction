
function lodestones:reload
function gotlroles:reload

tellraw @a [" "]
tellraw @a [{"text":"=== Guardians of the Lodestones ===","color":"gold","bold":true}]
tellraw @a [{"text":"[Start]","color":"green", "clickEvent":{"action":"run_command","value":"/function gotl:start"},"hoverEvent":{"action":"show_text","value":{"text":"Warning: Everyone must disconect/reconnect for proper rng"}}}]
tellraw @a [" "]
