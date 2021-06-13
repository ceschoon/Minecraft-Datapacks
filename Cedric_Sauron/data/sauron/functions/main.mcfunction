## Timer control
scoreboard players add @a srn_timer 1
scoreboard players set @a[scores={srn_timer=1200}] srn_timer 0

# Sound effects (ambient)
execute at @a[scores={srn_sound=1,srn_timer=200}] run playsound ambient.soul_sand_valley.mood ambient @a ~ ~ ~ 10.0 0.0
execute at @a[scores={srn_sound=1,srn_timer=400}] run playsound ambient.soul_sand_valley.mood ambient @a ~ ~ ~ 10.0 0.0
execute at @a[scores={srn_sound=1,srn_timer=600}] run playsound ambient.soul_sand_valley.mood ambient @a ~ ~ ~ 10.0 0.0
execute at @a[scores={srn_sound=1,srn_timer=800}] run playsound ambient.soul_sand_valley.mood ambient @a ~ ~ ~ 10.0 0.0
execute at @a[scores={srn_sound=1,srn_timer=0}] run playsound ambient.basalt_deltas.mood ambient @a ~ ~ ~ 10.0 0.0

# Particles
execute at @a[scores={srn_particles=1}] run particle lava ~ ~ ~ 0.05 0.05 0.05 1 1 normal
execute at @a[scores={srn_particles=1}] run particle landing_lava ~ ~ ~ 0.05 0.05 0.05 1 1 normal

# Tp armor stand to keep track of Sauron's position (prior to death)
execute as @a[scores={srn_deathcount=0,srn_trackpos=1}] at @s unless entity @s[scores={srn_deathcount=1..}] run tp @e[type=armor_stand,name=sauronpos] ~ ~ ~

# Events at Sauron's death
execute as @a[scores={srn_deathcount=1,srn_sound=1}] at @e[type=armor_stand,name=sauronpos] run playsound entity.wither.death master @a ~ ~ ~ 50.0 0.0
execute as @a[scores={srn_deathcount=1,srn_particles=1}] at @e[type=armor_stand,name=sauronpos] run particle explosion_emitter ~ ~ ~ 0.05 0.05 0.05 1 1 normal
execute as @a[scores={srn_deathcount=1,srn_lightning=1}] at @e[type=armor_stand,name=sauronpos] run summon lightning_bolt ~ ~ ~

# Death detection
scoreboard players set @a[scores={srn_deathcount=5}] srn_deathcount 0
scoreboard players set @a[scores={srn_deathcount=4}] srn_deathcount 5
scoreboard players set @a[scores={srn_deathcount=3}] srn_deathcount 4
scoreboard players set @a[scores={srn_deathcount=2}] srn_deathcount 3
scoreboard players set @a[scores={srn_deathcount=1}] srn_deathcount 2

# Griefing
execute at @a[scores={srn_griefing=1}] run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 dirt replace grass_block
execute at @a[scores={srn_griefing=1}] run fill ~ ~-1 ~ ~ ~-1 ~ coarse_dirt replace dirt
