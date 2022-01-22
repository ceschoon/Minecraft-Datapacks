
## remove previous anvils on the map
execute at @e[type=armor_stand,name=anvil] run fill ~ ~-5 ~ ~ ~1 ~ air replace anvil
execute at @e[type=armor_stand,name=anvil] run fill ~ ~-5 ~ ~ ~1 ~ air replace chipped_anvil
execute at @e[type=armor_stand,name=anvil] run fill ~ ~-5 ~ ~ ~1 ~ air replace damaged_anvil
kill @e[type=armor_stand,name=anvil]

## make a new one appear
summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,CustomName:"\"anvil\"",CustomNameVisible:0}
execute at @r run spreadplayers ~ ~ 50 50 false @e[type=armor_stand,name=anvil]
execute at @e[type=armor_stand,name=anvil] run setblock ~ ~50 ~ anvil
