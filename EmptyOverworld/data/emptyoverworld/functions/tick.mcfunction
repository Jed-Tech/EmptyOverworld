# Debug: Check for overworld players
execute as @a if dimension minecraft:overworld run tellraw @s {"text":"[EmptyOverworld] Teleporting to Nether!","color":"yellow"}

# Teleport any Overworld players to the Nether hub
execute as @a if dimension minecraft:overworld run tp @s 0 65 0 minecraft:the_nether