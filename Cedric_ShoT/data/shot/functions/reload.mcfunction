
scoreboard objectives remove shot_Score
scoreboard objectives remove shot_ScoreCopy
scoreboard objectives remove shot_Common
scoreboard objectives remove shot_Phase
scoreboard objectives remove shot_NumCycles
scoreboard objectives remove shot_LastCycle
scoreboard objectives remove shot_CoinDelay
scoreboard objectives remove shot_Countdown
scoreboard objectives remove shot_TicksInSec
scoreboard objectives remove shot_DeathCount
scoreboard objectives remove shot_KillCount
scoreboard objectives remove shot_Winner
scoreboard objectives remove shot_On
scoreboard objectives remove shot_temp

scoreboard objectives remove shot_genmaster
scoreboard objectives remove shot_gentrials
scoreboard objectives remove shot_genhouse1
scoreboard objectives remove shot_genhouse2
scoreboard objectives remove shot_genhouse3
scoreboard objectives remove shot_gentower1
scoreboard objectives remove shot_gentower2
scoreboard objectives remove shot_genhidden

scoreboard objectives add shot_Score dummy "Score"
scoreboard objectives add shot_ScoreCopy dummy
scoreboard objectives add shot_Common dummy "Common Basket"
scoreboard objectives add shot_Phase dummy
scoreboard objectives add shot_NumCycles dummy
scoreboard objectives add shot_LastCycle dummy
scoreboard objectives add shot_CoinDelay dummy
scoreboard objectives add shot_Countdown dummy
scoreboard objectives add shot_TicksInSec dummy
scoreboard objectives add shot_DeathCount minecraft.custom:minecraft.deaths
scoreboard objectives add shot_KillCount minecraft.custom:minecraft.player_kills
scoreboard objectives add shot_Winner dummy
scoreboard objectives add shot_On dummy
scoreboard objectives add shot_temp dummy

scoreboard objectives add shot_genmaster dummy
scoreboard objectives add shot_gentrials dummy
scoreboard objectives add shot_genhouse1 dummy
scoreboard objectives add shot_genhouse2 dummy
scoreboard objectives add shot_genhouse3 dummy
scoreboard objectives add shot_gentower1 dummy
scoreboard objectives add shot_gentower2 dummy
scoreboard objectives add shot_genhidden dummy

scoreboard players set @a shot_Score 0
scoreboard players set @a shot_ScoreCopy 0
scoreboard players set @a shot_Common 0
scoreboard players set @a shot_Phase 0
scoreboard players set @a shot_NumCycles 0
scoreboard players set @a shot_LastCycle 0
scoreboard players set @a shot_CoinDelay 0
scoreboard players set @a shot_Countdown 0
scoreboard players set @a shot_TicksInSec 0
scoreboard players set @a shot_DeathCount 0
scoreboard players set @a shot_KillCount 0
scoreboard players set @a shot_Winner 0
scoreboard players set @a shot_On 0

# Scoreboard variables for random number generation
scoreboard objectives remove shot_rng
scoreboard objectives add shot_rng minecraft.custom:minecraft.walk_one_cm
scoreboard players set @a shot_rng 0

tellraw @a [" "]
tellraw @a [{"text":"=== Share or Take ===","color":"gold","bold":true}]
tellraw @a [{"text":"[Info]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function shot:info"}}]
tellraw @a [{"text":"[Generate map]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function shot:initstructures"},"hoverEvent":{"action":"show_text","value":{"text":"Warning: Takes a few seconds to generate. You must be in a biome with a lot of grass (everywhere within 100 blocks radius)"}}}]
tellraw @a [{"text":"[Start]","color":"green", "clickEvent":{"action":"run_command","value":"/function shot:start"},"hoverEvent":{"action":"show_text","value":{"text":"Warning: generate map first"}}}]
tellraw @a [" "]

#say "Cedric ShoT: reloaded"

