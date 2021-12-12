
execute if entity @s[scores={ccwg_portal_sound_ambient=0}] run playsound minecraft:block.portal.ambient block @s ~ ~ ~

scoreboard players set @s[scores={ccwg_portal_sound_ambient=0}] ccwg_portal_sound_ambient 200
scoreboard players remove @s[scores={ccwg_portal_sound_ambient=1..}] ccwg_portal_sound_ambient 1

