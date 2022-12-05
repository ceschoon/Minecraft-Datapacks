
scoreboard objectives remove duels_DeathCount
scoreboard objectives remove duels_TimeTicks
scoreboard objectives remove duels_TimeSec
scoreboard objectives remove duels_timeTotal
scoreboard objectives remove duels_On

scoreboard objectives add duels_DeathCount deathCount
scoreboard objectives add duels_TimeTicks dummy
scoreboard objectives add duels_TimeSec dummy "Time"
scoreboard objectives add duels_TimeTotal dummy
scoreboard objectives add duels_Hunted dummy
scoreboard objectives add duels_On dummy

scoreboard objectives remove duels_rng
scoreboard objectives add duels_rng minecraft.custom:minecraft.walk_one_cm
scoreboard players set @a duels_rng 0

tellraw @a [" "]
tellraw @a [{"text":"=== Duels ===","color":"gold","bold":true}]
tellraw @a [{"text":"[Info]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function duels:info"}}]
tellraw @a [{"text":"[Clear all armor stands]","color":"green", "clickEvent":{"action":"run_command","value":"/kill @e[type=armor_stand]"},"hoverEvent":{"action":"show_text","value":{"text":" "}}}]
tellraw @a [{"text":"[Set spawn player1]","color":"green", "clickEvent":{"action":"run_command","value":"/function duels:spawnpointplayer1"},"hoverEvent":{"action":"show_text","value":{"text":"Note: The spawn point of player 1 will be set where you stand"}}}]
tellraw @a [{"text":"[Set spawn player2]","color":"green", "clickEvent":{"action":"run_command","value":"/function duels:spawnpointplayer2"},"hoverEvent":{"action":"show_text","value":{"text":"Note: The spawn point of player 2 will be set where you stand"}}}]
tellraw @a [{"text":"[Start duel]","color":"green", "clickEvent":{"action":"run_command","value":"/function duels:start"},"hoverEvent":{"action":"show_text","value":{"text":"Note: The player that executes this command will be the first duelist and the second will be the player closest to him"}}}]
#tellraw @a [{"text":"[Summon control room]","color":"green", "clickEvent":{"action":"run_command","value":"/function duels:generatecontrolroom"},"hoverEvent":{"action":"show_text","value":{"text":"Note: The control room will be generated where you stand"}}}]
tellraw @a [" "]

#say "Cedric Duels: reloaded"
