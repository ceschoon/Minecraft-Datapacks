
execute if entity @a[scores={shot_genhouse1=2}] at @e[type=armor_stand,name=villager_house1] run summon villager ~ ~ ~ {VillagerData:{profession:fletcher,level:5,type:savanna},NoAI:0,Invulnerable:1,Offers:{Recipes:[{buy:{id:emerald,Count:2,tag:{display:{Lore:["\"Coin\""]}}},sell:{id:porkchop,Count:4},xp:1,maxUses:8},{buy:{id:emerald,Count:4,tag:{display:{Lore:["\"Coin\""]}}},sell:{id:stick,Count:16},xp:1,maxUses:8},{buy:{id:emerald,Count:12,tag:{display:{Lore:["\"Coin\""]}}},sell:{id:bow,Count:1},xp:1,maxUses:2},{buy:{id:emerald,Count:8,tag:{display:{Lore:["\"Coin\""]}}},sell:{id:arrow,Count:16},xp:1,maxUses:4}]}}
execute if entity @a[scores={shot_genhouse2=2}] at @e[type=armor_stand,name=villager_house2] run summon villager ~ ~ ~ {VillagerData:{profession:armorer,level:5,type:savanna},NoAI:0,Invulnerable:1,Offers:{Recipes:[{buy:{id:emerald,Count:5,tag:{display:{Lore:["\"Coin\""]}}},sell:{id:iron_ingot,Count:3},xp:1,maxUses:8},{buy:{id:emerald,Count:8,tag:{display:{Lore:["\"Coin\""]}}},sell:{id:coal,Count:4},xp:1,maxUses:4},{buy:{id:emerald,Count:16,tag:{display:{Lore:["\"Coin\""]}}},sell:{id:fire_charge,Count:1,tag:{display:{Lore:["\"Drop the fire charge to summon a fireball where you stand\""]}}},xp:1,maxUses:2}]}}
execute if entity @a[scores={shot_genhouse3=2}] at @e[type=armor_stand,name=villager_house3] run summon villager ~ ~ ~ {VillagerData:{profession:cleric,level:5,type:savanna},NoAI:0,Invulnerable:1,Offers:{Recipes:[{buy:{id:emerald,Count:2,tag:{display:{Lore:["\"Coin\""]}}},sell:{id:golden_apple,Count:1},xp:1,maxUses:4},{buy:{id:emerald,Count:12,tag:{display:{Lore:["\"Coin\""]}}},sell:{id:ender_pearl,Count:1},xp:1,maxUses:4},{buy:{id:emerald,Count:20,tag:{display:{Lore:["\"Coin\""]}}},sell:{id:potion,Count:1,tag:{Potion:"minecraft:invisibility"}},xp:1,maxUses:2},{buy:{id:emerald,Count:5,tag:{display:{Lore:["\"Coin\""]}}},sell:{id:potion,Count:1,tag:{Potion:"minecraft:strong_regeneration"}},xp:1,maxUses:2},{buy:{id:emerald,Count:12,tag:{display:{Lore:["\"Coin\""]}}},sell:{id:splash_potion,Count:1,tag:{Potion:"minecraft:poison"}},xp:1,maxUses:2}]}}

#{buy:{id:emerald,Count:8,tag:{display:{Lore:["\"Coin\""]}}},sell:{id:arrow,Count:16},xp:1,maxUses:8}

scoreboard players set @a[scores={shot_genhouse1=2}] shot_genhouse1 0
scoreboard players set @a[scores={shot_genhouse2=2}] shot_genhouse2 0
scoreboard players set @a[scores={shot_genhouse3=2}] shot_genhouse3 0
scoreboard players set @a[scores={shot_gentower1=2}] shot_gentower1 0
scoreboard players set @a[scores={shot_gentower2=2}] shot_gentower2 0


