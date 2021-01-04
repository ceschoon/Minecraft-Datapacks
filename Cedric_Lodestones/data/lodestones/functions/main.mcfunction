#### Lodestones game: main function (executed every tick)

# compass
function lodestones:compassdetect

# detect death and give respawn kit
execute as @a[scores={tag_DeathCount=5}] at @s run function lodestones:giverespawnset

# delay and reset death detection
scoreboard players set @a[scores={tag_DeathCount=5}] tag_DeathCount 0
scoreboard players set @a[scores={tag_DeathCount=4}] tag_DeathCount 5
scoreboard players set @a[scores={tag_DeathCount=3}] tag_DeathCount 4
scoreboard players set @a[scores={tag_DeathCount=2}] tag_DeathCount 3
scoreboard players set @a[scores={tag_DeathCount=1}] tag_DeathCount 2

# detect win (TODO)
execute at @e[type=armor_stand,name=team1] if entity @r[scores={ls_On=1}] unless block ~ ~-1 ~ lodestone run function lodestones:win2
execute at @e[type=armor_stand,name=team2] if entity @r[scores={ls_On=1}] unless block ~ ~-1 ~ lodestone run function lodestones:win1

