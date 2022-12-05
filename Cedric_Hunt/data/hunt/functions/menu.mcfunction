tellraw @a [" "]
tellraw @a [{"text":"=== Minigame: Manhunt ===","color":"gold","bold":true}]
tellraw @a [{"text":"[Info]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function hunt:info"}}]
tellraw @a [{"text":"[Reload]","color":"dark_aqua", "clickEvent":{"action":"run_command","value":"/function hunt:reload"}}]
tellraw @a [{"text":"[Start with me]","color":"green", "clickEvent":{"action":"run_command","value":"/function hunt:start"},"hoverEvent":{"action":"show_text","value":{"text":"Player who clicks is hunted"}}}]
tellraw @a [{"text":"[Start with random player]","color":"green", "clickEvent":{"action":"run_command","value":"/execute as @r run function hunt:start"},"hoverEvent":{"action":"show_text","value":{"text":"Hunted player is selected at random"}}}]
tellraw @a [{"text":"[Pause/Restart]","color":"dark_green", "clickEvent":{"action":"run_command","value":"/function ctime:togglepause"}}]
tellraw @a [" "]