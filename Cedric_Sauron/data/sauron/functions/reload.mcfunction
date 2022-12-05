
scoreboard objectives remove srn_deathcount
scoreboard objectives remove srn_timer
scoreboard objectives remove srn_trackpos
scoreboard objectives remove srn_sound
scoreboard objectives remove srn_particles
scoreboard objectives remove srn_lightning
scoreboard objectives remove srn_griefing

scoreboard objectives add srn_deathcount deathCount
scoreboard objectives add srn_timer dummy
scoreboard objectives add srn_trackpos dummy
scoreboard objectives add srn_sound dummy
scoreboard objectives add srn_particles dummy
scoreboard objectives add srn_lightning dummy
scoreboard objectives add srn_griefing dummy

scoreboard players set @a srn_deathcount 0
scoreboard players set @a srn_timer 0
scoreboard players set @a srn_trackpos 0
scoreboard players set @a srn_sound 0
scoreboard players set @a srn_particles 0
scoreboard players set @a srn_lightning 0
scoreboard players set @a srn_griefing 0

say Cedric Sauron: reloaded!
