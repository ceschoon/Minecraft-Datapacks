
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
tellraw @a [{"text":"=== Teams ===","color":"gold","bold":true}]
tellraw @a [{"text":"[Info]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function teams:info"}}]
tellraw @a [{"text":"[Manage teams]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function teams:manage"}}]
tellraw @a [" "]

