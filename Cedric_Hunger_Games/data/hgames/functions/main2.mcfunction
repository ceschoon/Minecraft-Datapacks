
# effect mining fatigue to all players
effect give @a mining_fatigue 20 1

# reward for kills
#give @a[scores={inf_On=1,inf_Kills=1..}] cooked_beef 3
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

# tell sane players when an infected is nearby + play sound
#execute as @a[team=sane,scores={inf_WarnDelay=60..}] at @s if entity @a[team=infected,distance=..30] run playsound minecraft:entity.zombie.infect master @s ~ ~ ~
#execute as @a[team=sane,scores={inf_WarnDelay=60..}] at @s if entity @a[team=infected,distance=..30] run tellraw @s [{"text":"An infected player is nearby...","color":"red"}]
#execute as @a[team=sane,scores={inf_WarnDelay=60..}] at @s if entity @a[team=infected,distance=..30] run scoreboard players set @s inf_WarnDelay 0

# delay and reset death detection
scoreboard players set @a[scores={hgames_DeathCount=5}] hgames_DeathCount 0
scoreboard players set @a[scores={hgames_DeathCount=4}] hgames_DeathCount 5
scoreboard players set @a[scores={hgames_DeathCount=3}] hgames_DeathCount 4
scoreboard players set @a[scores={hgames_DeathCount=2}] hgames_DeathCount 3
scoreboard players set @a[scores={hgames_DeathCount=1}] hgames_DeathCount 2

# increment time
scoreboard players add @a hgames_LootDropDelay 1
#execute as @a[scores={hgames_On=1,hgames_TimeTicks=20..}] run scoreboard players add @s hgames_TimeSec 1
#execute as @a[scores={hgames_On=1,hgames_TimeTicks=20..}] run scoreboard players add @s hgames_LootDropDelay 1
#execute as @a[scores={hgames_On=1,hgames_TimeTicks=20..}] run scoreboard players set @s hgames_TimeTicks 0

# detect end of the game
#execute if entity @a[scores={hgames_On=1}] unless entity @a[team=sane] run function infection:win
