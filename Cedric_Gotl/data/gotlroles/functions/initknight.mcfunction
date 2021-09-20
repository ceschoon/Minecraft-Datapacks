#### Initialisation function for the knight

title @s[team=ls_team1] actionbar [{"text":"You are a knight!","color":"green"}]
title @s[team=ls_team2] actionbar [{"text":"You are a knight!","color":"red"}]

tellraw @s[team=ls_team1] [{"text":"You are a knight! The knight is much stronger than other players. His strength can be useful for both attack and defence.","color":"green"}]
tellraw @s[team=ls_team2] [{"text":"You are a knight! The knight is much stronger than other players. His strength can be useful for both attack and defence.","color":"red"}]

give @s iron_sword
give @s shield

