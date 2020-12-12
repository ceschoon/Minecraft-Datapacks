
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

# indication variables for derived games

scoreboard objectives remove tag_rrtag
scoreboard objectives remove tag_rrtagx

scoreboard objectives add tag_rrtag dummy
scoreboard objectives add tag_rrtagx dummy

scoreboard players set @a tag_rrtag 0
scoreboard players set @a tag_rrtagx 0

function rrtag:reload
function rrtagx:reload

# compass module
function tag:compassreload

gamerule keepInventory true
gamerule doImmediateRespawn true

say "Cedric Tag: reloaded tag"
