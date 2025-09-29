# Teleport player into Nether and mark them so it doesn't repeat
tellraw @s {"text":"[EmptyOverworld] The Overworld is gone! Teleporting to Nether...","color":"red"}
execute in minecraft:the_nether run teleport @s 0 65 0
tag @s add eo_in_nether