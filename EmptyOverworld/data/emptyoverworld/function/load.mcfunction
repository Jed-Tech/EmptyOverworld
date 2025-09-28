# EmptyOverworld Datapack Loaded
tellraw @a {"text":"[EmptyOverworld] Datapack loaded! The Overworld is now inaccessible.","color":"green"}

# Immediate teleport any existing Overworld players
execute as @a if entity @s in minecraft:overworld run tellraw @s {"text":"[EmptyOverworld] Teleporting to Nether!","color":"yellow"}
execute as @a if entity @s in minecraft:overworld run tp @s 0 65 0 minecraft:the_nether

# (Optional) Spawn platform logic can be added here