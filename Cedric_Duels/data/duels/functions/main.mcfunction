# Rng and number of sets
scoreboard players set @a[scores={duels_rng=10..}] duels_rng 0
scoreboard players set @a[scores={duels_SetId=10..}] duels_SetId 0
scoreboard players set @a[scores={duels_SetId=..-1}] duels_SetId 9

# Reset platform (obsidian is looks better than bedrock)
#execute at @e[type=armor_stand,name=hill] run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 obsidian

# Detect presence on/off platform
#execute at @e[type=armor_stand,name=hill] as @a[distance=..5,scores={duels_On=1}] at @s if block ~ ~-1 ~ obsidian run scoreboard players set @s duels_OnHill 1
#execute at @e[type=armor_stand,name=hill] as @a[distance=..5,scores={duels_On=1}] at @s if block ~ ~-2 ~ obsidian run scoreboard players set @s duels_OnHill 1

# delay and reset death detection
scoreboard players set @a[scores={duels_DeathCount=5}] duels_DeathCount 0
scoreboard players set @a[scores={duels_DeathCount=4}] duels_DeathCount 5
scoreboard players set @a[scores={duels_DeathCount=3}] duels_DeathCount 4
scoreboard players set @a[scores={duels_DeathCount=2}] duels_DeathCount 3
scoreboard players set @a[scores={duels_DeathCount=1}] duels_DeathCount 2

# detect death and declare victory of remaining player
team join noteam @a[scores={duels_On=1,duels_DeathCount=5}]
execute as @a[scores={duels_On=1..},team=team1] unless entity @a[team=team2] run function duels:win
execute as @a[scores={duels_On=1..},team=team2] unless entity @a[team=team1] run function duels:win

# increment time
scoreboard players add @a[team=!noteam] duels_TimeTicks 1
scoreboard players add @a[team=!noteam] duels_TimeTotal 1
execute as @a[scores={duels_On=1..,duels_TimeTicks=20..}] run scoreboard players add @s duels_TimeSec 1
execute as @a[scores={duels_On=1..,duels_TimeTicks=20..}] run scoreboard players set @s duels_TimeTicks 0

# detect end of the game
#execute as @a[scores={duels_On=1,duels_TimeSec=1200}] run function duels:win

