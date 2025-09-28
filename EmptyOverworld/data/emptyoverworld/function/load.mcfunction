# EmptyOverworld Datapack Loaded
tellraw @a {"text":"[EmptyOverworld] Datapack loaded! The Overworld is now inaccessible.","color":"green"}

# Immediate teleport any existing Overworld players
execute as @a if entity @s in minecraft:overworld run tellraw @s {"text":"[EmptyOverworld] The Overworld is gone! Teleporting to Nether...","color":"red"}
execute as @a if entity @s in minecraft:overworld run execute in minecraft:the_nether run teleport @s 0 65 0

# (Optional) Spawn platform logic can be added here