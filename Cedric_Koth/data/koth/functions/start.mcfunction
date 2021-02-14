
# Scoreboards
scoreboard objectives setdisplay sidebar koth_TimeSec

scoreboard players set @a koth_On 1
scoreboard players set @a koth_TimeTicks 0
scoreboard players set @a koth_TimeSec 0
scoreboard players set @a koth_TimeTotal 0

# Gamerules
gamerule keepInventory true
gamerule doImmediateRespawn true

# Store position to target hill with compass
execute store result score @a X run data get entity @s Pos[0] 1
execute store result score @a Y run data get entity @s Pos[1] 1
execute store result score @a Z run data get entity @s Pos[2] 1

# Summon armorstand on top of the hill (for targeting position)
kill @e[type=armor_stand]
summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,CustomName:"\"hill\"",CustomNameVisible:0}

# World
worldborder center ~ ~
worldborder set 1000000
time set 0

# Spread players + set spawn (world spawn too, should not be close to platform)
spreadplayers ~ ~ 300 300 false @a
execute as @a at @s run spawnpoint @s ~ ~ ~
execute at @r setworldspawn ~ ~ ~

# Effects
effect clear @a
effect give @a resistance 10 255
effect give @a regeneration 10
effect give @a saturation 10 10

# Inventory
clear @a
give @a lime_bed
execute as @a at @s run function koth:giverespawnset

# Game starts message
execute as @r[scores={koth_On=1}] at @s run title @a title {"text":"Go!","color":"gold"}
execute as @r[scores={koth_On=1}] at @s run tellraw @a {"text":"King of the Hill starts Now!","color":"gold"}


