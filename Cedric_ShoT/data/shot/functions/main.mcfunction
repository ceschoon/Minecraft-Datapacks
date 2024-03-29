
# display menu
tellraw @a[scores={cmenu_show=1..}] [{"text":"[Show menu: Share or Take]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function shot:menu"}}]

# note: 
# shot_On = 0 means we are not playing
# shot_On = 1 means we are playing
# shot_On = 2 means the gama is finished and we are analysing scores

# commands to execute every tick
execute if entity @a[scores={shot_On=1}] run function shot:checkdaytime
execute if entity @a[scores={shot_On=1}] run function shot:generatecoins
execute if entity @a[scores={shot_On=1}] run function shot:summonfireball
execute if entity @a[scores={shot_On=1,shot_Phase=0}] run function shot:takecoinsfrominventory
execute if entity @a[scores={shot_On=2,shot_Phase=0}] run function shot:takecoinsfrominventory
execute if entity @a[scores={shot_On=2}] run function shot:findwinner
execute as @a[scores={shot_On=1}] run function shot:forcegamemode
execute as @r[scores={shot_On=0,shot_genmaster=1}] run function shot:generatestructures
execute as @r[scores={shot_On=0,shot_genmaster=1}] run function shot:populatestructures

# commands to execute every second rather than every tick
#execute as @a[scores={shot_On=1,shot_TicksInSec=0}] run <command here>

# keep track of seconds
scoreboard players add @a shot_TicksInSec 1
scoreboard players set @a[scores={shot_TicksInSec=20..}] shot_TicksInSec 0

# rng max value
scoreboard players set @a[scores={shot_rng=100..}] shot_rng 0

# delay and reset death detection
scoreboard players set @a[scores={shot_On=1,shot_DeathCount=5}] shot_DeathCount 0
scoreboard players set @a[scores={shot_On=1,shot_DeathCount=4}] shot_DeathCount 5
scoreboard players set @a[scores={shot_On=1,shot_DeathCount=3}] shot_DeathCount 4
scoreboard players set @a[scores={shot_On=1,shot_DeathCount=2}] shot_DeathCount 3
scoreboard players set @a[scores={shot_On=1,shot_DeathCount=1}] shot_DeathCount 2

# actions after death
execute as @a[scores={shot_On=1,shot_DeathCount=5}] at @e[type=armor_stand,name=map_centre] run spreadplayers ~ ~ 200 200 false @s
execute as @a[scores={shot_On=1,shot_DeathCount=5}] at @s run spawnpoint @s ~ ~ ~
execute as @a[scores={shot_On=1,shot_DeathCount=5}] at @s run function shot:giverespawnset

# penalty for dying
scoreboard players remove @a[scores={shot_On=1,shot_DeathCount=5}] shot_Score 5

# penalty for killing someone in build phase
scoreboard players remove @a[scores={shot_On=1,shot_Phase=0,shot_KillCount=1..}] shot_Score 5
scoreboard players set @a[scores={shot_On=1,shot_Phase=0,shot_KillCount=1..}] shot_KillCount 0

# reward for killing someone in collection phase
# must be equal or lower than death penalty or it can be exploited
scoreboard players add @a[scores={shot_On=1,shot_Phase=1,shot_KillCount=1..}] shot_Score 5
scoreboard players set @a[scores={shot_On=1,shot_Phase=1,shot_KillCount=1..}] shot_KillCount 0

# no negative scores
scoreboard players set @a[scores={shot_Score=..-1}] shot_Score 0

# proper end if all score copies are negative (we finished the analysis)
execute unless entity @a[scores={shot_ScoreCopy=0..}] run scoreboard players set @a shot_On 0

# keep villagers in place
execute at @e[type=armor_stand,name=villager_house1] run tp @e[type=villager,distance=5..8] ~ ~ ~
execute at @e[type=armor_stand,name=villager_house2] run tp @e[type=villager,distance=5..8] ~ ~ ~
execute at @e[type=armor_stand,name=villager_house3] run tp @e[type=villager,distance=5..8] ~ ~ ~

# keep potion of harming in last inventory slot in case the player is stuck in a hole in adventure mode
# TODO: additional penalty for using it (otherwise player would drink it not to let another have the kill)
item replace entity @a[scores={shot_On=1}] hotbar.8 with potion{Potion:"strong_harming",display:{Lore:["\"Suicide bottle\""]}}
