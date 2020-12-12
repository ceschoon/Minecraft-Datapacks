
scoreboard objectives remove tag_DeathCount
scoreboard objectives remove tag_TimeTicks
scoreboard objectives remove tag_TimeSec
scoreboard objectives remove tag_Tag
scoreboard objectives remove tag_On

scoreboard objectives add tag_DeathCount deathCount
scoreboard objectives add tag_TimeTicks dummy
scoreboard objectives add tag_TimeSec dummy "Time Tagged"
scoreboard objectives setdisplay sidebar tag_TimeSec
scoreboard objectives add tag_Tag dummy
scoreboard objectives add tag_On dummy

# compass
function tag:compassreload

gamerule keepInventory true
gamerule doImmediateRespawn true

say "Cedric Tag: reloaded tag"
