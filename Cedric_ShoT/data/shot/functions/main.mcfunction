
execute if entity @a[scores={shot_On=1}] run function shot:checkdaytime
execute if entity @a[scores={shot_On=1}] run function shot:generatecoins
execute if entity @a[scores={shot_On=1}] run function shot:summonfireball
execute if entity @a[scores={shot_On=1,shot_Phase=0}] run function shot:takecoinsfrominventory
execute if entity @a[scores={shot_On=2}] run function shot:findwinner
execute as @a[scores={shot_On=1}] run function shot:forcegamemode
execute as @r[scores={shot_On=0,shot_genmaster=1}] run function shot:generatestructures
execute as @r[scores={shot_On=0,shot_genmaster=1}] run function shot:populatestructures

# commands to execute every second rather than every tick
execute as @a[scores={shot_On=1,shot_TicksInSec=0}] run function shot:showcountdown

# keep track of seconds
scoreboard players add @a shot_TicksInSec 1
scoreboard players set @a[scores={shot_TicksInSec=20..}] shot_TicksInSec 0

# rng max value
scoreboard players set @a[scores={shot_rng=100..}] shot_rng 0

# delay and reset death detection
scoreboard players set @a[scores={shot_DeathCount=5}] shot_DeathCount 0
scoreboard players set @a[scores={shot_DeathCount=4}] shot_DeathCount 5
scoreboard players set @a[scores={shot_DeathCount=3}] shot_DeathCount 4
scoreboard players set @a[scores={shot_DeathCount=2}] shot_DeathCount 3
scoreboard players set @a[scores={shot_DeathCount=1}] shot_DeathCount 2

# actions after death
execute as @a[scores={shot_DeathCount=5}] at @e[type=armor_stand,name=map_centre] run spreadplayers ~ ~ 200 200 false @s
execute as @a[scores={shot_DeathCount=5}] at @s run spawnpoint @s ~ ~ ~
execute as @a[scores={shot_DeathCount=5}] at @s run function shot:giverespawnset

# penalty for dying
scoreboard players remove @a[scores={shot_DeathCount=5}] shot_Score 20

# reward for killing someone (equal or lower than death penalty or it can be exploited)
scoreboard players add @a[scores={shot_KillCount=1..}] shot_Score 20
scoreboard players set @a[scores={shot_KillCount=1..}] shot_KillCount 0

