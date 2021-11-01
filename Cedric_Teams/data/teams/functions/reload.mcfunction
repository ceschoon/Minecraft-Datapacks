
team remove team1
team remove team2
team remove team3
team remove team4

team add team1
team add team2
team add team3
team add team4

team modify team1 color green
team modify team2 color red
team modify team3 color blue
team modify team4 color yellow

tellraw @a [" "]
tellraw @a [{"text":"=== Create Teams ===","color":"gold","bold":true}]
tellraw @a [{"text":"[Empty all teams]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function teams:empty"}}]
tellraw @a [{"text":"[Click to join team 1]","color":"green", "clickEvent":{"action":"run_command","value":"/team join team1 @s"}}]
tellraw @a [{"text":"[Click to join team 2]","color":"red", "clickEvent":{"action":"run_command","value":"/team join team2 @s"}}]
tellraw @a [{"text":"[Click to join team 3]","color":"blue", "clickEvent":{"action":"run_command","value":"/team join team3 @s"}}]
tellraw @a [{"text":"[Click to join team 4]","color":"yellow", "clickEvent":{"action":"run_command","value":"/team join team4 @s"}}]
tellraw @a [" "]

