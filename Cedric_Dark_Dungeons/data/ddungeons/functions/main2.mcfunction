
## Temporary variable
scoreboard objectives remove ddungeons_temp
scoreboard objectives add ddungeons_temp dummy

## Countdown
scoreboard players set @a ddungeons_temp 0
execute at @e[type=armor_stand,name=rslamp] unless block ~ ~ ~ redstone_lamp[lit=true] run scoreboard players set @a ddungeons_temp 1
execute if entity @a[scores={ddungeons_temp=1,ddungeons_TicksInSec=0}] run scoreboard players remove @a[scores={ddungeons_Countdown=1..}] ddungeons_Countdown 1

## Time left messages
tellraw @a[scores={ddungeons_TicksInSec=0,ddungeons_Countdown=300}] {"text":"Dark Dungeons: Only 5 minutes left!","color":"gold"}
tellraw @a[scores={ddungeons_TicksInSec=0,ddungeons_Countdown=240}] {"text":"Dark Dungeons: Only 4 minutes left!","color":"gold"}
tellraw @a[scores={ddungeons_TicksInSec=0,ddungeons_Countdown=180}] {"text":"Dark Dungeons: Only 3 minutes left!","color":"gold"}
tellraw @a[scores={ddungeons_TicksInSec=0,ddungeons_Countdown=120}] {"text":"Dark Dungeons: Only 2 minutes left!","color":"gold"}
tellraw @a[scores={ddungeons_TicksInSec=0,ddungeons_Countdown=60}] {"text":"Dark Dungeons: Only 1 minute left!","color":"gold"}
tellraw @a[scores={ddungeons_TicksInSec=0,ddungeons_Countdown=30}] {"text":"Dark Dungeons: Hurry up! You have 30 seconds","color":"gold"}
tellraw @a[scores={ddungeons_TicksInSec=0,ddungeons_Countdown=20}] {"text":"Dark Dungeons: Hurry up! You have 20 seconds","color":"gold"}
tellraw @a[scores={ddungeons_TicksInSec=0,ddungeons_Countdown=10}] {"text":"Dark Dungeons: Hurry up! You have 10 seconds","color":"gold"}
tellraw @a[scores={ddungeons_TicksInSec=0,ddungeons_Countdown=9}] {"text":"Dark Dungeons: 9 seconds...","color":"gold"}
tellraw @a[scores={ddungeons_TicksInSec=0,ddungeons_Countdown=8}] {"text":"Dark Dungeons: 8 seconds...","color":"gold"}
tellraw @a[scores={ddungeons_TicksInSec=0,ddungeons_Countdown=7}] {"text":"Dark Dungeons: 7 seconds...","color":"gold"}
tellraw @a[scores={ddungeons_TicksInSec=0,ddungeons_Countdown=6}] {"text":"Dark Dungeons: 6 seconds...","color":"gold"}
tellraw @a[scores={ddungeons_TicksInSec=0,ddungeons_Countdown=5}] {"text":"Dark Dungeons: 5 seconds...","color":"gold"}
tellraw @a[scores={ddungeons_TicksInSec=0,ddungeons_Countdown=4}] {"text":"Dark Dungeons: 4 seconds...","color":"gold"}
tellraw @a[scores={ddungeons_TicksInSec=0,ddungeons_Countdown=3}] {"text":"Dark Dungeons: 3 seconds...","color":"gold"}
tellraw @a[scores={ddungeons_TicksInSec=0,ddungeons_Countdown=2}] {"text":"Dark Dungeons: 2 seconds...","color":"gold"}
tellraw @a[scores={ddungeons_TicksInSec=0,ddungeons_Countdown=1}] {"text":"Dark Dungeons: 1 seconds...","color":"gold"}

## Time left warning sound
execute as @a[scores={ddungeons_TicksInSec=0,ddungeons_Countdown=300}] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~
execute as @a[scores={ddungeons_TicksInSec=0,ddungeons_Countdown=240}] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~
execute as @a[scores={ddungeons_TicksInSec=0,ddungeons_Countdown=180}] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~
execute as @a[scores={ddungeons_TicksInSec=0,ddungeons_Countdown=120}] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~
execute as @a[scores={ddungeons_TicksInSec=0,ddungeons_Countdown=60}] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~
execute as @a[scores={ddungeons_TicksInSec=0,ddungeons_Countdown=30}] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~
execute as @a[scores={ddungeons_TicksInSec=0,ddungeons_Countdown=20}] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~
execute as @a[scores={ddungeons_TicksInSec=0,ddungeons_Countdown=10}] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~
execute as @a[scores={ddungeons_TicksInSec=0,ddungeons_Countdown=9}] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~
execute as @a[scores={ddungeons_TicksInSec=0,ddungeons_Countdown=8}] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~
execute as @a[scores={ddungeons_TicksInSec=0,ddungeons_Countdown=7}] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~
execute as @a[scores={ddungeons_TicksInSec=0,ddungeons_Countdown=6}] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~
execute as @a[scores={ddungeons_TicksInSec=0,ddungeons_Countdown=5}] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~
execute as @a[scores={ddungeons_TicksInSec=0,ddungeons_Countdown=4}] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~
execute as @a[scores={ddungeons_TicksInSec=0,ddungeons_Countdown=3}] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~
execute as @a[scores={ddungeons_TicksInSec=0,ddungeons_Countdown=2}] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~
execute as @a[scores={ddungeons_TicksInSec=0,ddungeons_Countdown=1}] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~

## Time increment
scoreboard players add @a ddungeons_TicksInSec 1
scoreboard players set @a[scores={ddungeons_TicksInSec=20..}] ddungeons_TicksInSec 0

## Delay respawn
scoreboard players set @a[scores={ddungeons_DeathCount=601..}] ddungeons_DeathCount 0
scoreboard players add @a[scores={ddungeons_DeathCount=1..}] ddungeons_DeathCount 1

## Handle dead players
execute at @e[type=armor_stand,name=prison] run tp @a[scores={ddungeons_DeathCount=2}] ~ ~0.5 ~
title @a[scores={ddungeons_DeathCount=2}] title [{"text":"You died!","color":"red"}]
title @a[scores={ddungeons_DeathCount=2}] subtitle [{"text":"You will be set free in 30 seconds...","color":"red"}]
title @a[scores={ddungeons_DeathCount=540}] title [{"text":"Back in 3","color":"red"}]
title @a[scores={ddungeons_DeathCount=560}] title [{"text":"Back in 2","color":"red"}]
title @a[scores={ddungeons_DeathCount=580}] title [{"text":"Back in 1","color":"red"}]
title @a[scores={ddungeons_DeathCount=600}] title [{"text":" ","color":"red"}]
execute at @e[type=armor_stand,name=prison] run tp @a[scores={ddungeons_DeathCount=600}] ~ ~3 ~
give @a[scores={ddungeons_DeathCount=600}] wooden_sword

## Effects
effect give @a saturation 20
effect give @a[scores={ddungeons_Mole=0}] blindness 20
#effect give @a[scores={ddungeons_Mole=1}] weakness 20

## End game detection
scoreboard players set @a ddungeons_temp 0
execute at @e[type=armor_stand,name=rslamp] if block ~ ~ ~ redstone_lamp[lit=false] run scoreboard players set @a ddungeons_temp 1
execute if entity @a[scores={ddungeons_Countdown=1..,ddungeons_temp=0,ddungeons_TicksInSec=2..,ddungeons_DeathCount=0}] run function ddungeons:players_win
execute if entity @a[scores={ddungeons_Countdown=..0,ddungeons_temp=1,ddungeons_TicksInSec=2..,ddungeons_DeathCount=0}] run function ddungeons:players_loose
