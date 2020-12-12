
scoreboard objectives remove tag_DeathCount
scoreboard objectives remove tag_Time
scoreboard objectives remove tag_Tag
scoreboard objectives remove tag_On

scoreboard objectives add tag_DeathCount deathCount
scoreboard objectives add tag_Time dummy "Time Tagged"
scoreboard objectives setdisplay sidebar tag_Time
scoreboard objectives add tag_Tag dummy
scoreboard objectives add tag_On dummy

# compass
function tag:compassreload

gamerule keepInventory true
gamerule doImmediateRespawn true

say "Cedric Tag: reloaded tag"
