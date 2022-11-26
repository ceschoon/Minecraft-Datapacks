
# display menu
tellraw @a[scores={cmenu_show=1..}] [{"text":"[Show menu: Hunger Games]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function hgames:menu"}}]

execute if entity @a[scores={hgames_On=1}] run function hgames:main2

