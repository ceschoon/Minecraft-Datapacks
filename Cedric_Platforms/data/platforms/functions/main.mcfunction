# Permanent effects
effect give @a saturation 10

# Rng
scoreboard players set @a[scores={pltf_rng=100..}] pltf_rng 0

# Kill players who fell off the map
kill @a[x=-1000000,y=0,z=-1000000,dx=2000000,dy=149,dz=2000000,scores={pltf_DeathCount=0}]

# Delay respawn
scoreboard players set @a[scores={pltf_DeathCount=201..}] pltf_DeathCount 0
scoreboard players add @a[scores={pltf_DeathCount=1..}] pltf_DeathCount 1

# Handle dead players
gamemode spectator @a[scores={pltf_DeathCount=2}]
execute at @e[type=armor_stand,name=diamond] run tp @a[scores={pltf_DeathCount=1..199}] ~ ~20 ~
title @a[scores={pltf_DeathCount=2}] title [{"text":"You died!","color":"red"}]
title @a[scores={pltf_DeathCount=2}] subtitle [{"text":"You will respawn in 10 seconds...","color":"red"}]
gamemode survival @a[scores={pltf_DeathCount=200}]

# Tp players who respawned back to team platform
execute at @e[type=armor_stand,name=team1] run tp @a[scores={pltf_DeathCount=200},team=team1] ~ ~ ~
execute at @e[type=armor_stand,name=team2] run tp @a[scores={pltf_DeathCount=200},team=team2] ~ ~ ~
execute at @e[type=armor_stand,name=team3] run tp @a[scores={pltf_DeathCount=200},team=team3] ~ ~ ~
execute at @e[type=armor_stand,name=team4] run tp @a[scores={pltf_DeathCount=200},team=team4] ~ ~ ~

# Force players to wear team colors
execute as @a if entity @s[team=team1] run replaceitem entity @s armor.head leather_helmet{display:{color:65280},Enchantments:[{lvl:1s,id:"minecraft:binding_curse"},{lvl:1s,id:"minecraft:vanishing_curse"}]}
execute as @a if entity @s[team=team2] run replaceitem entity @s armor.head leather_helmet{display:{color:16711680},Enchantments:[{lvl:1s,id:"minecraft:binding_curse"},{lvl:1s,id:"minecraft:vanishing_curse"}]}
execute as @a if entity @s[team=team3] run replaceitem entity @s armor.head leather_helmet{display:{color:255},Enchantments:[{lvl:1s,id:"minecraft:binding_curse"},{lvl:1s,id:"minecraft:vanishing_curse"}]}
execute as @a if entity @s[team=team4] run replaceitem entity @s armor.head leather_helmet{display:{color:16776960},Enchantments:[{lvl:1s,id:"minecraft:binding_curse"},{lvl:1s,id:"minecraft:vanishing_curse"}]}

# Clear inventories from other team's wool color
clear @a[team=team2] lime_wool
clear @a[team=team3] lime_wool
clear @a[team=team4] lime_wool
clear @a[team=team1] red_wool
clear @a[team=team3] red_wool
clear @a[team=team4] red_wool
clear @a[team=team1] blue_wool
clear @a[team=team2] blue_wool
clear @a[team=team4] blue_wool
clear @a[team=team1] yellow_wool
clear @a[team=team2] yellow_wool
clear @a[team=team3] yellow_wool

# Clear diamonds from inventory and increment score
scoreboard players set @a pltf_AddScore 0
execute at @e[type=armor_stand,name=team1] as @a[team=team1,distance=..2] store success score @s pltf_AddScore run clear @s diamond 1
execute at @e[type=armor_stand,name=team2] as @a[team=team2,distance=..2] store success score @s pltf_AddScore run clear @s diamond 1
execute at @e[type=armor_stand,name=team3] as @a[team=team3,distance=..2] store success score @s pltf_AddScore run clear @s diamond 1
execute at @e[type=armor_stand,name=team4] as @a[team=team4,distance=..2] store success score @s pltf_AddScore run clear @s diamond 1
scoreboard players add @a[scores={pltf_AddScore=1}] pltf_Score 1

# Reset platforms
execute at @e[type=armor_stand,name=diamond] run function platforms:builddiamond
execute at @e[type=armor_stand,name=emerald1] run function platforms:buildemerald
execute at @e[type=armor_stand,name=emerald2] run function platforms:buildemerald
execute at @e[type=armor_stand,name=team1] run function platforms:buildteam1
execute at @e[type=armor_stand,name=team2] run function platforms:buildteam2
execute at @e[type=armor_stand,name=team3] run function platforms:buildteam3
execute at @e[type=armor_stand,name=team4] run function platforms:buildteam4

# decrement time delays for generators
scoreboard players remove @a pltf_DelayEmrld 1
scoreboard players remove @a pltf_DelayDiamd 1
scoreboard players remove @a pltf_DelayWool 1

# spawn loot at armor stand when delay completed
execute at @e[type=armor_stand,name=diamond] if entity @a[scores={pltf_DelayDiamd=..0}] run loot spawn ~ ~ ~ loot minecraft:blocks/diamond_ore
execute at @e[type=armor_stand,name=emerald1] if entity @a[scores={pltf_DelayEmrld=..0}] run loot spawn ~ ~ ~ loot minecraft:blocks/emerald_ore
execute at @e[type=armor_stand,name=emerald2] if entity @a[scores={pltf_DelayEmrld=..0}] run loot spawn ~ ~ ~ loot minecraft:blocks/emerald_ore
execute at @e[type=armor_stand,name=team1] if entity @a[scores={pltf_DelayWool=..0}] run loot spawn ~ ~ ~ loot minecraft:blocks/lime_wool
execute at @e[type=armor_stand,name=team2] if entity @a[scores={pltf_DelayWool=..0}] run loot spawn ~ ~ ~ loot minecraft:blocks/red_wool
execute at @e[type=armor_stand,name=team3] if entity @a[scores={pltf_DelayWool=..0}] run loot spawn ~ ~ ~ loot minecraft:blocks/blue_wool
execute at @e[type=armor_stand,name=team4] if entity @a[scores={pltf_DelayWool=..0}] run loot spawn ~ ~ ~ loot minecraft:blocks/yellow_wool

# reset delay
scoreboard players set @a[scores={pltf_DelayEmrld=..0}] pltf_DelayEmrld 300
scoreboard players set @a[scores={pltf_DelayDiamd=..0}] pltf_DelayDiamd 600
scoreboard players set @a[scores={pltf_DelayWool=..0}] pltf_DelayWool 20

# detect end of the game
#execute as @a[scores={pltf_On=1,pltf_Score=1200..}] run function platforms:win

