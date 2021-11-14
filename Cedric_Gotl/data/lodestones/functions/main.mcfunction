#### Lodestones game: main function (executed every tick)

# compass
execute if entity @a[scores={ls_On=1}] run function lodestones:compassdetect

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
execute at @e[type=armor_stand,name=team1] if entity @r[scores={ls_On=1}] unless block ~ ~-1 ~ lodestone run function lodestones:win2
execute at @e[type=armor_stand,name=team2] if entity @r[scores={ls_On=1}] unless block ~ ~-1 ~ lodestone run function lodestones:win1

