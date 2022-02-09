
scoreboard objectives remove ddungeons_On
scoreboard objectives remove ddungeons_TicksInSec
scoreboard objectives remove ddungeons_Countdown
scoreboard objectives remove ddungeons_DeathCount
scoreboard objectives remove ddungeons_Mole

scoreboard objectives add ddungeons_On dummy
scoreboard objectives add ddungeons_TicksInSec dummy
scoreboard objectives add ddungeons_Countdown dummy "Time left"
scoreboard objectives add ddungeons_DeathCount deathCount
scoreboard objectives add ddungeons_Mole dummy

scoreboard players set @a ddungeons_On 0

say @s "Dark Dungeons: Reloaded!"

