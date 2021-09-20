
scoreboard objectives remove pltf_temp
scoreboard objectives add pltf_temp dummy

execute store result score @s pltf_temp run clear @s white_terracotta 1
execute if entity @s[scores={pltf_temp=1},team=pltf_team1] run give @s lime_terracotta 1
execute if entity @s[scores={pltf_temp=1},team=pltf_team2] run give @s red_terracotta 1
execute if entity @s[scores={pltf_temp=1},team=pltf_team3] run give @s blue_terracotta 1
execute if entity @s[scores={pltf_temp=1},team=pltf_team4] run give @s yellow_terracotta 1

