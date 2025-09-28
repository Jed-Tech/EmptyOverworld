# Continuous failsafe - teleport any Overworld players to Nether
# Debug: Show what dimension we're in
execute as @a run tellraw @s {"text":"[DEBUG] I am in dimension: ","color":"gray"}
execute as @a run execute in minecraft:overworld run tellraw @s {"text":"OVERWORLD","color":"red"}
execute as @a run execute in minecraft:the_nether run tellraw @s {"text":"NETHER","color":"gold"}
execute as @a run execute in minecraft:the_end run tellraw @s {"text":"END","color":"purple"}

# Only teleport if actually in Overworld
execute as @a if entity @s in minecraft:overworld run tellraw @s {"text":"[EmptyOverworld] The Overworld is gone! Teleporting to Nether...","color":"red"}
execute as @a if entity @s in minecraft:overworld run execute in minecraft:the_nether run tp @s 0 65 0
