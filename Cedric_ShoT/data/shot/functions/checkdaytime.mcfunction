
scoreboard objectives remove shot_Daytime
scoreboard objectives add shot_Daytime dummy
scoreboard players set @a shot_Daytime 0

execute store result score @a shot_Daytime run time query daytime

# Message player if phase changes (one tick delay so that it is reliably triggered after sleeping)
tellraw @a[scores={shot_Daytime=1}] [{"text":"The game is now in the building phase","color":"gold"}]
tellraw @a[scores={shot_Daytime=6001}] [{"text":"The game is now in the collection phase","color":"gold"}]
tellraw @a[scores={shot_Daytime=12001}] [{"text":"The game is now in the building phase","color":"gold"}]
tellraw @a[scores={shot_Daytime=18001}] [{"text":"The game is now in the collection phase","color":"gold"}]

# Increment number of cycles if we begin a new one
execute as @a[scores={shot_Daytime=1}] run scoreboard players add @s shot_NumCycles 1
execute as @a[scores={shot_Daytime=12001}] run scoreboard players add @s shot_NumCycles 1

# Random chance of entering the last cycle (one tick delay so the title overwrites the share or take title)
execute as @r[scores={shot_LastCycle=0,shot_Daytime=1}] if entity @s[scores={shot_NumCycles=3..,shot_rng=0..33}] run scoreboard players set @a shot_LastCycle 2
execute as @r[scores={shot_LastCycle=0,shot_Daytime=12001}] if entity @s[scores={shot_NumCycles=3..,shot_rng=0..33}] run scoreboard players set @a shot_LastCycle 2
tellraw @a[scores={shot_LastCycle=2}] [{"text":"The game is entering the last cycle","color":"gold"}]
title @a[scores={shot_LastCycle=2}] title [{"text":"The last cycle...","color":"gold"}]
playsound minecraft:entity.wither.spawn master @a[scores={shot_LastCycle=2}] ~ ~ ~
scoreboard players set @a[scores={shot_LastCycle=2}] shot_LastCycle 1

# End of the game actions if last cycle ends
execute if entity @a[scores={shot_LastCycle=1,shot_Daytime=23999}] run scoreboard players set @a shot_On -1
execute if entity @a[scores={shot_LastCycle=1,shot_Daytime=11999}] run scoreboard players set @a shot_On -1
execute as @a[scores={shot_On=-1}] store result score @s shot_ScoreCopy run scoreboard players get @s shot_Score
tellraw @a[scores={shot_On=-1}] [{"text":"Analysing scores...","color":"gold"}]
scoreboard players set @a[scores={shot_On=-1}] shot_On 2

# Update phase
execute as @a[scores={shot_Daytime=..5999}] run scoreboard players set @s shot_Phase 0
execute as @a[scores={shot_Daytime=6000..11999}] run scoreboard players set @s shot_Phase 1
execute as @a[scores={shot_Daytime=12000..17999}] run scoreboard players set @s shot_Phase 0
execute as @a[scores={shot_Daytime=18000..}] run scoreboard players set @s shot_Phase 1

# Check whether to start countdown
execute as @a[scores={shot_Daytime=22800}] run scoreboard players set @a shot_Countdown 60
execute as @a[scores={shot_Daytime=10800}] run scoreboard players set @a shot_Countdown 60

scoreboard objectives remove shot_Daytime

