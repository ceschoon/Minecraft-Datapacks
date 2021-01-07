
scoreboard objectives remove hunt_DeathCount
scoreboard objectives remove hunt_TimeTicks
scoreboard objectives remove hunt_TimeSec
scoreboard objectives remove hunt_timeTotal
scoreboard objectives remove hunt_Hunted
scoreboard objectives remove hunt_On

scoreboard objectives add hunt_DeathCount deathCount
scoreboard objectives add hunt_TimeTicks dummy
scoreboard objectives add hunt_TimeSec dummy "Time Hunted"
scoreboard objectives setdisplay sidebar hunt_TimeSec
scoreboard objectives add hunt_TimeTotal dummy
scoreboard objectives add hunt_Hunted dummy
scoreboard objectives add hunt_On dummy

say "Cedric Hunt: reloaded hunt"
