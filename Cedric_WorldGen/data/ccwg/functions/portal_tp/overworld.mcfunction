
execute if entity @s[scores={ccwg_portal_cooldown=180}] run playsound minecraft:block.portal.trigger block @s ~ ~ ~
execute if entity @s[scores={ccwg_portal_cooldown=90}] run playsound minecraft:block.portal.travel block @s ~ ~ ~

execute if entity @s[scores={ccwg_portal_cooldown=0}] run effect give @s nausea 10 1 true
execute if entity @s[scores={ccwg_portal_cooldown=0}] run scoreboard players set @s ccwg_portal_cooldown 200

execute if entity @s[scores={ccwg_portal_cooldown=100,ccwg_setup_portal=0}] run function ccwg:recorddimension

execute in minecraft:overworld if entity @s[scores={ccwg_portal_cooldown=100}] run summon armor_stand ~ ~0.5 ~ {Invisible:1,Marker:1,CustomName:"\"ccwg_portal\"",CustomNameVisible:0}
execute in minecraft:overworld if entity @s[scores={ccwg_portal_cooldown=100}] run tp ~ ~0.5 ~

