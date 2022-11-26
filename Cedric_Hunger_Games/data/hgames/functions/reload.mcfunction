
scoreboard objectives remove hgames_On
scoreboard objectives remove hgames_DeathCount
scoreboard objectives remove hgames_TimeTicks
scoreboard objectives remove hgames_LootDropDelay
scoreboard objectives remove hgames_LightningDelay
scoreboard objectives remove hgames_WarnDelay
scoreboard objectives remove hgames_Kills
scoreboard objectives remove hgames_Score

scoreboard objectives add hgames_On dummy
scoreboard objectives add hgames_DeathCount deathCount
scoreboard objectives add hgames_TimeTicks dummy
scoreboard objectives add hgames_LootDropDelay dummy
scoreboard objectives add hgames_LightningDelay dummy
scoreboard objectives add hgames_WarnDelay dummy
scoreboard objectives add hgames_Kills minecraft.custom:minecraft.player_kills
scoreboard objectives add hgames_Score dummy "Score"

scoreboard players set @a hgames_On 0
scoreboard players set @a hgames_DeathCount 0
scoreboard players set @a hgames_TimeTicks 0
scoreboard players set @a hgames_LootDropDelay 0
scoreboard players set @a hgames_LightningDelay 0
scoreboard players set @a hgames_WarnDelay 0
scoreboard players set @a hgames_Kills 0
scoreboard players set @a hgames_Score 0

# reset particular game rules to the default value
gamerule doMobSpawning true

say Cedric Hunger Games: reloaded!

