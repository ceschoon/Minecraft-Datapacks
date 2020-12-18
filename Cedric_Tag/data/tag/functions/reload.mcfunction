
scoreboard objectives remove tag_DeathCount
scoreboard objectives remove tag_TimeTicks
scoreboard objectives remove tag_TimeSec
scoreboard objectives remove tag_timeTotal
scoreboard objectives remove tag_Tag
scoreboard objectives remove tag_On

scoreboard objectives add tag_DeathCount deathCount
scoreboard objectives add tag_TimeTicks dummy
scoreboard objectives add tag_TimeSec dummy "Time Tagged"
scoreboard objectives setdisplay sidebar tag_TimeSec
scoreboard objectives add tag_TimeTotal dummy
scoreboard objectives add tag_Tag dummy
scoreboard objectives add tag_On dummy

# indication variables for derived games

scoreboard objectives remove tag_htag
scoreboard objectives remove tag_rrtag
scoreboard objectives remove tag_rrtagx
scoreboard objectives remove tag_stag

scoreboard objectives add tag_htag dummy
scoreboard objectives add tag_rrtag dummy
scoreboard objectives add tag_rrtagx dummy
scoreboard objectives add tag_stag dummy

scoreboard players set @a tag_htag 0
scoreboard players set @a tag_rrtag 0
scoreboard players set @a tag_rrtagx 0
scoreboard players set @a tag_stag 0

function htag:reload
function rrtag:reload
function rrtagx:reload
function stag:reload

# compass module
function tag:compassreload

gamerule keepInventory true
gamerule doImmediateRespawn true

say "Cedric Tag: reloaded tag"
