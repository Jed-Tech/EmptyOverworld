# Continuous failsafe - teleport any Overworld players to Nether

# Debug messages (safe to comment out when not needed)
execute as @a if entity @s in minecraft:overworld run tellraw @s {"text":"[DEBUG] You are in the OVERWORLD","color":"red"}
execute as @a if entity @s in minecraft:the_nether run tellraw @s {"text":"[DEBUG] You are in the NETHER","color":"gold"}
execute as @a if entity @s in minecraft:the_end run tellraw @s {"text":"[DEBUG] You are in the END","color":"dark_purple"}

# Only teleport if actually in Overworld
execute as @a if entity @s in minecraft:overworld run tellraw @s {"text":"[EmptyOverworld] The Overworld is gone! Teleporting to Nether...","color":"red"}
execute as @a if entity @s in minecraft:overworld run tp @s 0 65 0 minecraft:the_nether