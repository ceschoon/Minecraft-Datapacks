
# effect mining fatigue to all players
effect give @a mining_fatigue 20 1

# countdown at start
execute as @r[scores={hgames_TimeTicks=0}] at @s run title @a title {"text":"10","color":"gold"}
execute as @r[scores={hgames_TimeTicks=20}] at @s run title @a title {"text":"9","color":"gold"}
execute as @r[scores={hgames_TimeTicks=40}] at @s run title @a title {"text":"8","color":"gold"}
execute as @r[scores={hgames_TimeTicks=60}] at @s run title @a title {"text":"7","color":"gold"}
execute as @r[scores={hgames_TimeTicks=80}] at @s run title @a title {"text":"6","color":"gold"}
execute as @r[scores={hgames_TimeTicks=100}] at @s run title @a title {"text":"5","color":"gold"}
execute as @r[scores={hgames_TimeTicks=120}] at @s run title @a title {"text":"4","color":"gold"}
execute as @r[scores={hgames_TimeTicks=140}] at @s run title @a title {"text":"3","color":"gold"}
execute as @r[scores={hgames_TimeTicks=160}] at @s run title @a title {"text":"2","color":"gold"}
execute as @r[scores={hgames_TimeTicks=180}] at @s run title @a title {"text":"1","color":"gold"}
execute as @r[scores={hgames_TimeTicks=200}] at @s run title @a title {"text":"Go!","color":"gold"}

# loot drops
scoreboard players set @a[scores={hgames_LootDropDelay=2400..}] hgames_LootDropDelay 0
execute if entity @a[scores={hgames_LootDropDelay=0}] run summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,CustomName:"\"lootdrop\"",CustomNameVisible:0}
execute if entity @a[scores={hgames_LootDropDelay=0}] run spreadplayers ~ ~ 150 150 false @e[type=armor_stand,name=lootdrop]
execute if entity @a[scores={hgames_LootDropDelay=0}] at @e[type=armor_stand,name=lootdrop] run function hgames:genlootdrop
execute if entity @a[scores={hgames_LootDropDelay=0}] run tellraw @a [{"text":"Loot as been dropped on the map! Look around for a beacon beam.","color":"green"}]
execute if entity @a[scores={hgames_LootDropDelay=5}] run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~
execute if entity @a[scores={hgames_LootDropDelay=10}] run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~
execute if entity @a[scores={hgames_LootDropDelay=15}] run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~

# loot explosion
execute if entity @a[scores={hgames_LootDropDelay=2000}] at @e[type=armor_stand,name=lootdrop] run title @a[distance=..16] title {"text":"10","color":"red"}
execute if entity @a[scores={hgames_LootDropDelay=2020}] at @e[type=armor_stand,name=lootdrop] run title @a[distance=..16] title {"text":"9","color":"red"}
execute if entity @a[scores={hgames_LootDropDelay=2040}] at @e[type=armor_stand,name=lootdrop] run title @a[distance=..16] title {"text":"8","color":"red"}
execute if entity @a[scores={hgames_LootDropDelay=2060}] at @e[type=armor_stand,name=lootdrop] run title @a[distance=..16] title {"text":"7","color":"red"}
execute if entity @a[scores={hgames_LootDropDelay=2080}] at @e[type=armor_stand,name=lootdrop] run title @a[distance=..16] title {"text":"6","color":"red"}
execute if entity @a[scores={hgames_LootDropDelay=2100}] at @e[type=armor_stand,name=lootdrop] run title @a[distance=..16] title {"text":"5","color":"red"}
execute if entity @a[scores={hgames_LootDropDelay=2120}] at @e[type=armor_stand,name=lootdrop] run title @a[distance=..16] title {"text":"4","color":"red"}
execute if entity @a[scores={hgames_LootDropDelay=2140}] at @e[type=armor_stand,name=lootdrop] run title @a[distance=..16] title {"text":"3","color":"red"}
execute if entity @a[scores={hgames_LootDropDelay=2160}] at @e[type=armor_stand,name=lootdrop] run title @a[distance=..16] title {"text":"2","color":"red"}
execute if entity @a[scores={hgames_LootDropDelay=2180}] at @e[type=armor_stand,name=lootdrop] run title @a[distance=..16] title {"text":"1","color":"red"}
execute if entity @a[scores={hgames_LootDropDelay=2200}] at @e[type=armor_stand,name=lootdrop] run summon tnt ~ ~4 ~
execute if entity @a[scores={hgames_LootDropDelay=2220}] at @e[type=armor_stand,name=lootdrop] run summon tnt ~ ~4 ~
execute if entity @a[scores={hgames_LootDropDelay=2240}] at @e[type=armor_stand,name=lootdrop] run summon tnt ~ ~2 ~

# reward for kills
scoreboard players add @a[scores={hgames_Kills=1..}] hgames_Score 10
scoreboard players remove @a[scores={hgames_Kills=1..}] hgames_Kills 1

# punishment for death (No, I think loosing the inventory is enough)
execute if entity @a[scores={hgames_DeathCount=1}] as @a at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~
#scoreboard players remove @a[scores={hgames_DeathCount=1}] hgames_Score 10

# no negative scores
scoreboard players set @a[scores={hgames_Score=..-1}] hgames_Score 0

# keep potion of harming in last inventory slot in case the player is stuck in a hole in adventure mode
# TODO: additional penalty for using it (otherwise player would drink it not to let another have the kill)
item replace entity @a hotbar.8 with potion{Potion:"strong_harming",display:{Lore:["\"Suicide bottle\""]}}

# increment time
scoreboard players add @a hgames_TimeTicks 1
scoreboard players add @a hgames_LootDropDelay 1

# tell players when another is nearby + play sound
execute as @a[scores={hgames_WarnDelay=60..}] at @s if entity @a[distance=..20] run playsound minecraft:entity.zombie.infect master @s ~ ~ ~
execute as @a[scores={hgames_WarnDelay=60..}] at @s if entity @a[distance=..20] run tellraw @s [{"text":"A player is nearby...","color":"red"}]
execute as @a[scores={hgames_WarnDelay=60..}] at @s if entity @a[distance=..20] run scoreboard players set @s hgames_WarnDelay 0

# delay and reset death detection
scoreboard players set @a[scores={hgames_DeathCount=5}] hgames_DeathCount 0
scoreboard players set @a[scores={hgames_DeathCount=4}] hgames_DeathCount 5
scoreboard players set @a[scores={hgames_DeathCount=3}] hgames_DeathCount 4
scoreboard players set @a[scores={hgames_DeathCount=2}] hgames_DeathCount 3
scoreboard players set @a[scores={hgames_DeathCount=1}] hgames_DeathCount 2

# spread players after death and reset spawn point (use dimroof variable from compass module)
execute if entity @s[scores={dimroof=0}] run spreadplayers ~ ~ 200 200 false @a[scores={hgames_DeathCount=1}]
execute if entity @s[scores={dimroof=1}] run spreadplayers ~ ~ 200 200 under 127 false @a[scores={hgames_DeathCount=1}]
execute as @a[scores={hgames_DeathCount=1}] at @s run spawnpoint @s ~ ~ ~

# detect end of the game
#execute if entity @a[scores={hgames_On=1}] unless entity @a[team=sane] run function infection:win
