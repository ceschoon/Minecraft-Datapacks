
scoreboard objectives remove tag_Score
scoreboard objectives remove tag_ScoreCopy
scoreboard objectives remove tag_Tag
scoreboard objectives remove tag_On

scoreboard objectives add tag_Score dummy "Time Tagged"
scoreboard objectives add tag_ScoreCopy dummy
scoreboard objectives add tag_Tag dummy
scoreboard objectives add tag_On dummy

# indication variables for derived games

scoreboard objectives remove tag_rtag
scoreboard objectives remove tag_rtagxs

scoreboard objectives add tag_rtag dummy
scoreboard objectives add tag_rtagxs dummy

scoreboard players set @a tag_rtag 0
scoreboard players set @a tag_rtagxs 0

function tag:reloadteams
function tagrules:reload

say Cedric Tag: reloaded!
