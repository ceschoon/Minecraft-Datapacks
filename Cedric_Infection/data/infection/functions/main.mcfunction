
# display menu
tellraw @a[scores={cmenu_show=1..}] [{"text":"[Show menu: Infection]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function infection:menu"}}]

# effect glowing to all sane players
effect give @a[scores={inf_On=1},team=sane] glowing 10

# give food as reward for kills
give @a[scores={inf_On=1,inf_Kills=1..}] cooked_beef 3
scoreboard players remove @a[scores={inf_On=1,inf_Kills=1..}] inf_Kills 1

# tell sane players when an infected is nearby + play sound
execute as @a[team=sane,scores={inf_WarnDelay=60..}] at @s if entity @a[team=infected,distance=..30] run playsound minecraft:entity.zombie.infect master @s ~ ~ ~
execute as @a[team=sane,scores={inf_WarnDelay=60..}] at @s if entity @a[team=infected,distance=..30] run tellraw @s [{"text":"An infected player is nearby...","color":"red"}]
execute as @a[team=sane,scores={inf_WarnDelay=60..}] at @s if entity @a[team=infected,distance=..30] run scoreboard players set @s inf_WarnDelay 0

# infect sane players who just died
execute if entity @a[scores={inf_On=1,inf_DeathCount=5},team=sane] as @a at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~
execute if entity @a[scores={inf_On=1,inf_DeathCount=5},team=sane] run title @a[team=sane] actionbar [{"text":"One of you lost his life... but will come back soon.","color":"red"}]
team join infected @a[scores={inf_On=1,inf_DeathCount=5},team=sane]

# mole reveal
scoreboard objectives remove inf_test_mole
scoreboard objectives add inf_test_mole dummy
scoreboard players set @a inf_test_mole 0
execute as @a[team=sane,scores={inf_Mole=1}] unless entity @s[nbt={Inventory:[{id: "minecraft:black_banner", Count:1b}]}] run scoreboard players set @s inf_test_mole 1
team join infected @a[scores={inf_test_mole=1}]
execute as @a[scores={inf_test_mole=1}] run tellraw @a [{"selector":"@s","color":"red"},{"text":" was a mole the hole time!!","color":"red"}]
execute as @a[scores={inf_test_mole=1}] at @s run playsound minecraft:entity.ghast.hurt master @s ~ ~ ~

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
