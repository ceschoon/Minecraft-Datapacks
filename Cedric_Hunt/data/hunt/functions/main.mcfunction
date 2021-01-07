
# Game starts 10 seconds after start function is executed
execute as @r[scores={hunt_On=0,hunt_TimeTotal=200}] at @s run title @a title {"text":"Go!","color":"gold"}
execute as @r[scores={hunt_On=0,hunt_TimeTotal=200}] at @s run tellraw @a {"text":"Hunt starts now!","color":"gold"}
execute as @r[scores={hunt_On=0,hunt_TimeTotal=200}] at @s run scoreboard players set @a hunt_On 1

# compass
execute if entity @p[scores={target=1},nbt={Dimension:"minecraft:overworld"}] run function hunt:compassdetectoverworld
execute if entity @p[scores={target=1},nbt={Dimension:"minecraft:the_nether"}] run function hunt:compassdetectnether
execute if entity @p[scores={target=1},nbt={Dimension:"minecraft:the_end"}] run function hunt:compassdetectend

# delay and reset death detection
scoreboard players set @a[scores={hunt_DeathCount=5}] hunt_DeathCount 0
scoreboard players set @a[scores={hunt_DeathCount=4}] hunt_DeathCount 5
scoreboard players set @a[scores={hunt_DeathCount=3}] hunt_DeathCount 4
scoreboard players set @a[scores={hunt_DeathCount=2}] hunt_DeathCount 3
scoreboard players set @a[scores={hunt_DeathCount=1}] hunt_DeathCount 2

# detect death and give respawn kit
execute as @a[scores={hunt_On=1,hunt_DeathCount=5}] at @s run function hunt:giverespawnset

# increment time
scoreboard players add @a hunt_TimeTicks 1
scoreboard players add @a hunt_TimeTotal 1
execute as @a[scores={hunt_On=1,hunt_Hunted=1,hunt_TimeTicks=20..}] run scoreboard players add @s hunt_TimeSec 1
execute as @a[scores={hunt_On=1,hunt_Hunted=1,hunt_TimeTicks=20..}] run scoreboard players set @s hunt_TimeTicks 0

# detect end of the game
execute as @a[scores={hunt_On=1,hunt_Hunted=1,hunt_DeathCount=5}] run scoreboard players set @a hunt_On 0

