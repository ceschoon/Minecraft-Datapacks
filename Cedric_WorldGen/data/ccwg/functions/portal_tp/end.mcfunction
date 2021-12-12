
execute if entity @s[scores={ccwg_portal_cooldown=0}] run effect give @s nausea 10 1 true
execute if entity @s[scores={ccwg_portal_cooldown=0}] run scoreboard players set @s ccwg_portal_cooldown 120

execute if entity @s[scores={ccwg_portal_cooldown=1,ccwg_setup_portal=0}] run function ccwg:recorddimension

execute in minecraft:the_end if entity @s[scores={ccwg_portal_cooldown=1}] run summon armor_stand ~ ~0.5 ~ {Invisible:1,Marker:1,CustomName:"\"ccwg_portal\"",CustomNameVisible:0}
execute in minecraft:the_end if entity @s[scores={ccwg_portal_cooldown=1}] run tp ~ ~0.5 ~

