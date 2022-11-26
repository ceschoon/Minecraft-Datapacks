
scoreboard objectives remove duels_DeathCount
scoreboard objectives remove duels_TimeTicks
scoreboard objectives remove duels_TimeSec
scoreboard objectives remove duels_timeTotal
scoreboard objectives remove duels_On
scoreboard objectives remove duels_SetId
scoreboard objectives remove duels_Score

scoreboard objectives add duels_DeathCount deathCount
scoreboard objectives add duels_TimeTicks dummy
scoreboard objectives add duels_TimeSec dummy "Time"
scoreboard objectives add duels_TimeTotal dummy
scoreboard objectives add duels_Hunted dummy
scoreboard objectives add duels_On dummy
scoreboard objectives add duels_SetId dummy
scoreboard objectives add duels_Score dummy "Score"

scoreboard objectives remove duels_rng
scoreboard objectives add duels_rng minecraft.custom:minecraft.walk_one_cm
scoreboard players set @a duels_rng 0

scoreboard players set @a duels_SetId 0
scoreboard players set @a duels_Score 0

say Cedric Duels: reloaded!
