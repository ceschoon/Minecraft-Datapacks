
# display menu
tellraw @a[scores={cmenu_show=1..}] [{"text":"[Show menu: King of the Hill]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function koth:menu"}}]

# Rng
scoreboard players set @a[scores={koth_rng=100..}] koth_rng 0

# Reset platform (obsidian is looks better than bedrock)
execute at @e[type=armor_stand,name=hill] run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 obsidian

# Detect presence on/off platform
scoreboard objectives remove koth_OnHill
scoreboard objectives add koth_OnHill dummy
scoreboard players set @a koth_OnHill 0
execute at @e[type=armor_stand,name=hill] as @a[distance=..5,scores={koth_On=1}] at @s if block ~ ~-1 ~ obsidian run scoreboard players set @s koth_OnHill 1
execute at @e[type=armor_stand,name=hill] as @a[distance=..5,scores={koth_On=1}] at @s if block ~ ~-2 ~ obsidian run scoreboard players set @s koth_OnHill 1
team join onhill @a[scores={koth_On=1,koth_OnHill=1}]
team join offhill @a[scores={koth_On=1,koth_OnHill=0}]

# delay and reset death detection
scoreboard players set @a[scores={koth_DeathCount=5}] koth_DeathCount 0
scoreboard players set @a[scores={koth_DeathCount=4}] koth_DeathCount 5
scoreboard players set @a[scores={koth_DeathCount=3}] koth_DeathCount 4
scoreboard players set @a[scores={koth_DeathCount=2}] koth_DeathCount 3
scoreboard players set @a[scores={koth_DeathCount=1}] koth_DeathCount 2

# detect death and give respawn kit
execute as @a[scores={koth_On=1,koth_DeathCount=5}] at @s run function koth:giverespawnset

# increment time
scoreboard players add @a koth_TimeTicks 1
scoreboard players add @a koth_TimeTotal 1
execute as @a[team=onhill,scores={koth_On=1,koth_TimeTicks=20..}] run scoreboard players add @s koth_TimeSec 1
execute as @a[scores={koth_On=1,koth_TimeTicks=20..}] run scoreboard players set @s koth_TimeTicks 0

# detect end of the game
execute as @a[scores={koth_On=1,koth_TimeSec=1200}] run function koth:win

