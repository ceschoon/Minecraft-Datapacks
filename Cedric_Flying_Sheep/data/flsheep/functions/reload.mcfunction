
scoreboard objectives remove flsheep_DeathCnt
scoreboard objectives remove flsheep_AddScore
scoreboard objectives remove flsheep_Score
scoreboard objectives remove flsheep_Delay
scoreboard objectives remove flsheep_On

scoreboard objectives add flsheep_DeathCnt deathCount
scoreboard objectives add flsheep_AddScore dummy
scoreboard objectives add flsheep_Score dummy "Sheep delivered"
scoreboard objectives add flsheep_Delay dummy
scoreboard objectives add flsheep_On dummy

scoreboard players set @a flsheep_On 0

scoreboard objectives remove flsheep_rng
scoreboard objectives add flsheep_rng minecraft.custom:minecraft.walk_one_cm
scoreboard players set @a flsheep_rng 0

team remove flsheep_team1
team remove flsheep_team2

team add flsheep_team1
team add flsheep_team2

team modify flsheep_team1 color green
team modify flsheep_team2 color red

tellraw @a [" "]
tellraw @a [{"text":"=== Flying Sheep ===","color":"gold","bold":true}]
tellraw @a [{"text":"[Info]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function flsheep:info"}}]
tellraw @a [{"text":"[Generate map]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function flsheep:generatemap"}}]
tellraw @a [{"text":"[Start]","color":"green", "clickEvent":{"action":"run_command","value":"/function flsheep:start"},"hoverEvent":{"action":"show_text","value":{"text":"Warning: generate map first"}}}]
tellraw @a [" "]


