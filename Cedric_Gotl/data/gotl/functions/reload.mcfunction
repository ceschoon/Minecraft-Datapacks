
function lodestones:reload
function gotlroles:reload

tellraw @a [" "]
tellraw @a [{"text":"[Guardians of the Lodestones: start]","color":"gold", "clickEvent":{"action":"run_command","value":"/function gotl:start"},"hoverEvent":{"action":"show_text","value":{"text":"Warning: Everyone must disconect/reconnect for proper rng"}}}]
tellraw @a [" "]
