
# display menu
tellraw @a[scores={cmenu_show=1..}] [{"text":"[Show menu: Hunt]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function hunt:menu"}}]

# Game starts 10 seconds after start function is executed
execute as @r[scores={hunt_On=0,hunt_TimeTotal=0}] at @s run title @a title {"text":"10","color":"gold"}
execute as @r[scores={hunt_On=0,hunt_TimeTotal=20}] at @s run title @a title {"text":"9","color":"gold"}
execute as @r[scores={hunt_On=0,hunt_TimeTotal=40}] at @s run title @a title {"text":"8","color":"gold"}
execute as @r[scores={hunt_On=0,hunt_TimeTotal=60}] at @s run title @a title {"text":"7","color":"gold"}
execute as @r[scores={hunt_On=0,hunt_TimeTotal=80}] at @s run title @a title {"text":"6","color":"gold"}
execute as @r[scores={hunt_On=0,hunt_TimeTotal=100}] at @s run title @a title {"text":"5","color":"gold"}
execute as @r[scores={hunt_On=0,hunt_TimeTotal=120}] at @s run title @a title {"text":"4","color":"gold"}
execute as @r[scores={hunt_On=0,hunt_TimeTotal=140}] at @s run title @a title {"text":"3","color":"gold"}
execute as @r[scores={hunt_On=0,hunt_TimeTotal=160}] at @s run title @a title {"text":"2","color":"gold"}
execute as @r[scores={hunt_On=0,hunt_TimeTotal=180}] at @s run title @a title {"text":"1","color":"gold"}
execute as @r[scores={hunt_On=0,hunt_TimeTotal=200}] at @s run title @a title {"text":"Go!","color":"gold"}
execute as @r[scores={hunt_On=0,hunt_TimeTotal=200}] at @s run tellraw @a {"text":"Hunt starts now!","color":"gold"}
execute as @r[scores={hunt_On=0,hunt_TimeTotal=200}] at @s run scoreboard players set @a hunt_On 1

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
execute as @a[scores={hunt_On=1,hunt_Hunted=1,hunt_DeathCount=5}] run title @a title [{"text":"Game over!","color":"gold"}]
execute as @a[scores={hunt_On=1,hunt_Hunted=1,hunt_DeathCount=5}] run tellraw @a [{"text":"Game over! The hunted player died","color":"gold"}]
execute as @a[scores={hunt_On=1,hunt_Hunted=1,hunt_DeathCount=5}] run scoreboard players set @a hunt_On 0

