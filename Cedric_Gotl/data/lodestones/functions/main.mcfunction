#### Lodestones game: main function (executed every tick)

# preparation time: >0 in preparation period, =0 means start actual game, <0 in game
scoreboard players remove @a[scores={ls_PrepTime=0..}] ls_PrepTime 1

# warn players of remaining time before game starts
execute if entity @a[scores={ls_PrepTime=1200}] run tellraw @a [{"text":"WARNING: One minute left before lodestones are automatically placed!","color":"gold"}]
execute if entity @a[scores={ls_PrepTime=600}] run tellraw @a [{"text":"WARNING: 30 seconds left before lodestones are automatically placed!","color":"gold"}]
execute if entity @a[scores={ls_PrepTime=200}] run tellraw @a [{"text":"WARNING: 10 seconds left before lodestones are automatically placed!","color":"gold"}]
execute if entity @a[scores={ls_PrepTime=180}] run tellraw @a [{"text":"WARNING: 9 seconds left before lodestones are automatically placed!","color":"gold"}]
execute if entity @a[scores={ls_PrepTime=160}] run tellraw @a [{"text":"WARNING: 8 seconds left before lodestones are automatically placed!","color":"gold"}]
execute if entity @a[scores={ls_PrepTime=140}] run tellraw @a [{"text":"WARNING: 7 seconds left before lodestones are automatically placed!","color":"gold"}]
execute if entity @a[scores={ls_PrepTime=120}] run tellraw @a [{"text":"WARNING: 6 seconds left before lodestones are automatically placed!","color":"gold"}]
execute if entity @a[scores={ls_PrepTime=100}] run tellraw @a [{"text":"WARNING: 5 seconds left before lodestones are automatically placed!","color":"gold"}]
execute if entity @a[scores={ls_PrepTime=80}] run tellraw @a [{"text":"WARNING: 4 seconds left before lodestones are automatically placed!","color":"gold"}]
execute if entity @a[scores={ls_PrepTime=60}] run tellraw @a [{"text":"WARNING: 3 seconds left before lodestones are automatically placed!","color":"gold"}]
execute if entity @a[scores={ls_PrepTime=40}] run tellraw @a [{"text":"WARNING: 2 seconds left before lodestones are automatically placed!","color":"gold"}]
execute if entity @a[scores={ls_PrepTime=20}] run tellraw @a [{"text":"WARNING: 1 seconds left before lodestones are automatically placed!","color":"gold"}]

# place lodestone where banner is grounded
execute as @a[scores={ls_On=1,ls_PrepTime=0..,ls_LsPlaced=0},team=team1] at @s if block ~ ~ ~ lime_banner run function lodestones:placelodestone1
execute as @a[scores={ls_On=1,ls_PrepTime=0..,ls_LsPlaced=0},team=team1] at @s if block ~ ~ ~ lime_banner run scoreboard players set @a[team=team1] ls_LsPlaced 1
execute as @a[scores={ls_On=1,ls_PrepTime=0..,ls_LsPlaced=0},team=team2] at @s if block ~ ~ ~ red_banner run function lodestones:placelodestone2
execute as @a[scores={ls_On=1,ls_PrepTime=0..,ls_LsPlaced=0},team=team2] at @s if block ~ ~ ~ red_banner run scoreboard players set @a[team=team2] ls_LsPlaced 1

# start actual game at the end of prep time
execute as @a[scores={ls_PrepTime=0}] at @s run give @s compass
execute as @a[scores={ls_PrepTime=0},team=team1] at @s run spawnpoint @s ~ ~2 ~
execute as @a[scores={ls_PrepTime=0},team=team2] at @s run spawnpoint @s ~ ~2 ~
execute as @r[scores={ls_PrepTime=0,ls_LsPlaced=0},team=team1] at @s run function lodestones:placelodestone1
execute as @r[scores={ls_PrepTime=0,ls_LsPlaced=0},team=team2] at @s run function lodestones:placelodestone2

# compass
execute if entity @a[scores={ls_On=1,ls_PrepTime=..0}] run function lodestones:compassdetect

# detect death and give respawn kit
execute as @a[scores={ls_On=1,ls_DeathCount=5}] at @s run function lodestones:giverespawnset

# delay and reset death detection
scoreboard players set @a[scores={ls_DeathCount=5}] ls_DeathCount 0
scoreboard players set @a[scores={ls_DeathCount=4}] ls_DeathCount 5
scoreboard players set @a[scores={ls_DeathCount=3}] ls_DeathCount 4
scoreboard players set @a[scores={ls_DeathCount=2}] ls_DeathCount 3
scoreboard players set @a[scores={ls_DeathCount=1}] ls_DeathCount 2

# give obsidian as a reward for killing an enemy
# this will rather be a deterrent for rushing the enemy base unprepared
execute if entity @a[team=team1,scores={ls_KilledBy2=1}] run give @a[team=team2,scores={ls_Kills=1}] obsidian 1
execute if entity @a[team=team2,scores={ls_KilledBy1=1}] run give @a[team=team1,scores={ls_Kills=1}] obsidian 1

# reset kill-related scoreboard
scoreboard players remove @a[scores={ls_Kills=1..}] ls_Kills 1
scoreboard players remove @a[scores={ls_KilledBy1=1..}] ls_KilledBy1 1
scoreboard players remove @a[scores={ls_KilledBy2=1..}] ls_KilledBy2 1

# detect win
execute at @e[type=armor_stand,name=team1] if entity @r[scores={ls_On=1,ls_PrepTime=..0}] unless block ~ ~-1 ~ lodestone run function lodestones:win2
execute at @e[type=armor_stand,name=team2] if entity @r[scores={ls_On=1,ls_PrepTime=..0}] unless block ~ ~-1 ~ lodestone run function lodestones:win1

