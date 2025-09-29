# data/emptyoverworld/function/tick.mcfunction

# Debug messages to show which dimension each player is in
execute as @a in minecraft:overworld run tellraw @s {"text":"[DEBUG] You are in the OVERWORLD","color":"red"}
execute as @a in minecraft:the_nether run tellraw @s {"text":"[DEBUG] You are in the NETHER","color":"gold"}
execute as @a in minecraft:the_end run tellraw @s {"text":"[DEBUG] You are in the END","color":"dark_purple"}

# Only teleport players who are currently in the Overworld
execute as @a if entity @s in minecraft:overworld run function emptyoverworld:teleport_to_nether