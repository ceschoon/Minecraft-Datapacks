
scoreboard objectives remove koth_DeathCount
scoreboard objectives remove koth_TimeTicks
scoreboard objectives remove koth_TimeSec
scoreboard objectives remove koth_timeTotal
scoreboard objectives remove hunt_On

scoreboard objectives add koth_DeathCount deathCount
scoreboard objectives add koth_TimeTicks dummy
scoreboard objectives add koth_TimeSec dummy "Time"
scoreboard objectives add koth_TimeTotal dummy
scoreboard objectives add koth_Hunted dummy
scoreboard objectives add koth_On dummy

scoreboard objectives remove koth_rng
scoreboard objectives add koth_rng minecraft.custom:minecraft.walk_one_cm
scoreboard players set @a koth_rng 0

team remove team_nohill
team remove team_hill

team add offhill
team add onhill

team modify offhill color gray
team modify onhill color gold

say "Cedric Koth: reloaded"

function koth:compassreload
