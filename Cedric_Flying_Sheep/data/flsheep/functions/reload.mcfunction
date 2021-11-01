
scoreboard objectives remove flsheep_DeathCnt
scoreboard objectives remove flsheep_AddScore
scoreboard objectives remove flsheep_Score
scoreboard objectives remove flsheep_Delay
scoreboard objectives remove flsheep_On
scoreboard objectives remove flsheep_Numteams

scoreboard objectives add flsheep_DeathCnt deathCount
scoreboard objectives add flsheep_AddScore dummy
scoreboard objectives add flsheep_Score dummy "Sheep delivered"
scoreboard objectives add flsheep_Delay dummy
scoreboard objectives add flsheep_On dummy
scoreboard objectives add flsheep_NumTeams dummy

scoreboard players set @a flsheep_On 0
scoreboard players set @a flsheep_NumTeams 0

scoreboard objectives remove flsheep_rng
scoreboard objectives add flsheep_rng minecraft.custom:minecraft.walk_one_cm
scoreboard players set @a flsheep_rng 0

team remove flsheep_team1
team remove flsheep_team2
team remove flsheep_team3
team remove flsheep_team4

team add flsheep_team1
team add flsheep_team2
team add flsheep_team3
team add flsheep_team4

team modify flsheep_team1 color green
team modify flsheep_team2 color red
team modify flsheep_team3 color blue
team modify flsheep_team4 color yellow

tellraw @a [" "]
tellraw @a [{"text":"=== Flying Sheep ===","color":"gold","bold":true}]
tellraw @a [{"text":"[Info]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function flsheep:info"}}]
tellraw @a [{"text":"[Start 2 teams]","color":"green", "clickEvent":{"action":"run_command","value":"/function flsheep:start2"}}]
tellraw @a [{"text":"[Start 4 teams]","color":"green", "clickEvent":{"action":"run_command","value":"/function flsheep:start4"}}]
tellraw @a [" "]


