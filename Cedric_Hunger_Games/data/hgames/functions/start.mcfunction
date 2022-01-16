
scoreboard objectives setdisplay sidebar hgames_Score

scoreboard players set @a hgames_On 1
scoreboard players set @a hgames_DeathCount 0
scoreboard players set @a hgames_LootDropDelay 0
scoreboard players set @a hgames_Kills 0
scoreboard players set @a hgames_Score 0

gamerule keepInventory false
gamerule doImmediateRespawn true
gamerule doDaylightCycle true
gamerule naturalRegeneration true

gamemode survival @a

time set 0

execute in minecraft:overworld run worldborder center ~ ~
execute in minecraft:overworld run worldborder set 400
setworldspawn ~ ~ ~

# Tp all players to bring them in the correct dimension
tp @a @s

# Spread Players (use dimroof variable from compass module)
execute if entity @s[scores={dimroof=0}] run spreadplayers ~ ~ 200 200 false @a
execute if entity @s[scores={dimroof=1}] run spreadplayers ~ ~ 200 200 under 127 false @a

execute as @a at @s run spawnpoint @s ~ ~ ~

effect clear @a
effect give @a resistance 10 255
effect give @a regeneration 10 10
effect give @a saturation 10 10

clear @a
# give nothing to start, the sane players must struggle to survive

title @a title {"text":"Hunger Game Starts Now!","color":"gold"}
tellraw @a [{"text":"Hunger Game Starts Now!","color":"gold"}]

