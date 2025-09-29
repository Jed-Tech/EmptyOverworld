# EmptyOverworld Datapack Loaded
tellraw @a {"text":"[EmptyOverworld] Datapack loaded! The Overworld is now inaccessible.","color":"green"}

# Immediate teleport any existing Overworld players
execute as @a if entity @s in minecraft:overworld run tellraw @s {"text":"[EmptyOverworld] Teleporting to Nether!","color":"yellow"}
execute as @a if entity @s in minecraft:overworld run execute in minecraft:the_nether run teleport @s 0 65 0