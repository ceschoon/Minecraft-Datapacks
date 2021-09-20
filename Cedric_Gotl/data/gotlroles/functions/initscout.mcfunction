#### Initialisation function for the scout

title @s[team=ls_team1] actionbar [{"text":"You are a scout!","color":"green"}]
title @s[team=ls_team2] actionbar [{"text":"You are a scout!","color":"red"}]

tellraw @s[team=ls_team1] [{"text":"You are a scout! The scout runs faster and jump higher than other players. It is a good role for attacking.","color":"green"}]
tellraw @s[team=ls_team2] [{"text":"You are a scout! The scout runs faster and jump higher than other players. It is a good role for attacking.","color":"red"}]

give @s bow
give @s arrow 64
