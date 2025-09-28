# Continuous failsafe - teleport any Overworld players to Nether
execute as @a if entity @s in minecraft:overworld run tellraw @s {"text":"[EmptyOverworld] The Overworld is gone! Teleporting to Nether...","color":"red"}
execute as @a if entity @s in minecraft:overworld run execute in minecraft:the_nether run tp @s 0 65 0
