
# display menu
tellraw @a[scores={cmenu_show=1..}] [{"text":"[Show menu: Guardian of the Lodestones]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function gotl:menu"}}]

execute if entity @a[scores={ls_On=1}] run function lodestones:main

# keep this running because rng must always be working before starting the game
# we need a separate rng module/datapack !!
function gotlroles:main
