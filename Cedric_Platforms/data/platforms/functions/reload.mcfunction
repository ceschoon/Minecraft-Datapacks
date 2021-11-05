
scoreboard objectives remove pltf_DeathCount
scoreboard objectives remove pltf_AddScore
scoreboard objectives remove pltf_Score
scoreboard objectives remove pltf_DelayEmrld
scoreboard objectives remove pltf_DelayDiamd
scoreboard objectives remove pltf_DelayWool
scoreboard objectives remove pltf_DelayFire1
scoreboard objectives remove pltf_DelayFire2
scoreboard objectives remove pltf_CountFire1
scoreboard objectives remove pltf_CountFire2
scoreboard objectives remove pltf_SummonFire
scoreboard objectives remove pltf_NumTeams
scoreboard objectives remove pltf_On

scoreboard objectives add pltf_DeathCount deathCount
scoreboard objectives add pltf_AddScore dummy
scoreboard objectives add pltf_Score dummy "Diamonds"
scoreboard objectives add pltf_DelayEmrld dummy
scoreboard objectives add pltf_DelayDiamd dummy
scoreboard objectives add pltf_DelayWool dummy
scoreboard objectives add pltf_DelayFire1 dummy
scoreboard objectives add pltf_DelayFire2 dummy
scoreboard objectives add pltf_CountFire1 dummy
scoreboard objectives add pltf_CountFire2 dummy
scoreboard objectives add pltf_SummonFire dummy
scoreboard objectives add pltf_NumTeams dummy
scoreboard objectives add pltf_On dummy

scoreboard players set @a pltf_NumTeams 4
scoreboard players set @a pltf_On 0

scoreboard objectives remove pltf_rng
scoreboard objectives add pltf_rng minecraft.custom:minecraft.walk_one_cm
scoreboard players set @a pltf_rng 0

scoreboard objectives remove pltf_nofireballs
scoreboard objectives add pltf_nofireballs dummy
scoreboard players set @a pltf_nofireballs 0

tellraw @a [" "]
tellraw @a [{"text":"=== Platforms ===","color":"gold","bold":true}]
tellraw @a [{"text":"[Info]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function platforms:info"}}]
tellraw @a [{"text":"[Generate map 1]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function platforms:generatemap1"},"hoverEvent":{"action":"show_text","value":{"text":"Non-circular map with 4 teams and 6 platforms (Warning: There must be enough land around you for a proper generation)"}}}]
tellraw @a [{"text":"[Generate map 2]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function platforms:generatemap2"},"hoverEvent":{"action":"show_text","value":{"text":"Circular map with 4 teams and 6 platforms (Warning: There must be enough land around you for a proper generation)"}}}]
tellraw @a [{"text":"[Generate map 3]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function platforms:generatemap3"},"hoverEvent":{"action":"show_text","value":{"text":"Circular map with 3 teams and 3 platforms (Warning: There must be enough land around you for a proper generation)"}}}]
tellraw @a [{"text":"[Generate map 4]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function platforms:generatemap4"},"hoverEvent":{"action":"show_text","value":{"text":"Circular map with 3 teams and 6 platforms (Warning: There must be enough land around you for a proper generation)"}}}]
tellraw @a [{"text":"[Generate map 5]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function platforms:generatemap5"},"hoverEvent":{"action":"show_text","value":{"text":"Non-circular map with 4 teams and platforms in the middle (Warning: There must be enough land around you for a proper generation)"}}}]
tellraw @a [{"text":"[Start]","color":"green", "clickEvent":{"action":"run_command","value":"/function platforms:start"},"hoverEvent":{"action":"show_text","value":{"text":"Warning: generate map first"}}}]
tellraw @a [" "]

#say "Cedric Platforms: reloaded"

