
scoreboard objectives remove hgames_On
scoreboard objectives remove hgames_DeathCount
scoreboard objectives remove hgames_LootDropDelay
scoreboard objectives remove hgames_Kills
scoreboard objectives remove hgames_Score

scoreboard objectives add hgames_On dummy
scoreboard objectives add hgames_DeathCount deathCount
scoreboard objectives add hgames_LootDropDelay dummy
scoreboard objectives add hgames_Kills minecraft.custom:minecraft.player_kills
scoreboard objectives add hgames_Score dummy "Score"

scoreboard players set @a hgames_On 0
scoreboard players set @a hgames_DeathCount 0
scoreboard players set @a hgames_LootDropDelay 0
scoreboard players set @a hgames_Kills 0
scoreboard players set @a hgames_Score 0

tellraw @a [" "]
tellraw @a [{"text":"=== Hunger Games ===","color":"gold","bold":true}]
tellraw @a [{"text":"[Info]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function hgames:info"}}]
tellraw @a [{"text":"[Start]","color":"green", "clickEvent":{"action":"run_command","value":"/function hgames:start"},"hoverEvent":{"action":"show_text","value":{"text":""}}}]
tellraw @a [" "]

#say "Cedric Hunger Games: reloaded!"

