
# effect glowing to all sane players
effect give @a[scores={inf_On=1},team=sane] glowing 10

# tell sane players when an infected is nearby + play sound
execute as @a[team=sane,scores={inf_WarnDelay=60..}] at @s if entity @a[team=infected,distance=..30] run playsound minecraft:entity.zombie.infect master @s ~ ~ ~
execute as @a[team=sane,scores={inf_WarnDelay=60..}] at @s if entity @a[team=infected,distance=..30] run tellraw @s [{"text":"An infected player is nearby...","color":"red"}]
execute as @a[team=sane,scores={inf_WarnDelay=60..}] at @s if entity @a[team=infected,distance=..30] run scoreboard players set @s inf_WarnDelay 0

# infect sane players you just died into
execute if entity @a[scores={inf_On=1,inf_DeathCount=5},team=sane] as @a at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~
execute if entity @a[scores={inf_On=1,inf_DeathCount=5},team=sane] run title @a[team=sane] actionbar [{"text":"One of you lost his life... but will come back soon.","color":"red"}]
team join infected @a[scores={inf_On=1,inf_DeathCount=5},team=sane]

# delay and reset death detection
scoreboard players set @a[scores={inf_DeathCount=5}] inf_DeathCount 0
scoreboard players set @a[scores={inf_DeathCount=4}] inf_DeathCount 5
scoreboard players set @a[scores={inf_DeathCount=3}] inf_DeathCount 4
scoreboard players set @a[scores={inf_DeathCount=2}] inf_DeathCount 3
scoreboard players set @a[scores={inf_DeathCount=1}] inf_DeathCount 2

# increment time
scoreboard players add @a[scores={inf_On=1},team=sane] inf_TimeTicks 1
execute as @a[scores={inf_On=1,inf_TimeTicks=20..}] run scoreboard players add @s inf_TimeSec 1
execute as @a[scores={inf_On=1,inf_TimeTicks=20..}] run scoreboard players add @s inf_WarnDelay 1
execute as @a[scores={inf_On=1,inf_TimeTicks=20..}] run scoreboard players set @s inf_TimeTicks 0

# detect end of the game
execute if entity @a[scores={inf_On=1}] unless entity @a[team=sane] run function infection:win
