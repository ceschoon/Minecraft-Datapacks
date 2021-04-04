

summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,CustomName:"\"temp\"",CustomNameVisible:0}
summon armor_stand ~1 ~ ~ {Invisible:1,Marker:1,CustomName:"\"temp\"",CustomNameVisible:0}
summon armor_stand ~-1 ~ ~ {Invisible:1,Marker:1,CustomName:"\"temp\"",CustomNameVisible:0}
summon armor_stand ~ ~ ~1 {Invisible:1,Marker:1,CustomName:"\"temp\"",CustomNameVisible:0}
summon armor_stand ~ ~ ~-1 {Invisible:1,Marker:1,CustomName:"\"temp\"",CustomNameVisible:0}

# no towers
execute as @s[scores={tag_notowers=1}] at @e[type=armor_stand,name=temp] run function tagrules:notowers

# ylimit
execute as @s[scores={tag_ylimit=1}] run function tagrules:ylimit

# no tunnels
execute as @s[scores={tag_notunnels=1}] at @s run function tagrules:notunnels

# no boats
execute as @s[scores={tag_noboats=1}] at @s run function tagrules:noboats

kill @e[type=armor_stand,name=temp]
