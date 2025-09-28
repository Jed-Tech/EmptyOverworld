# Manual test function to confirm datapack is loaded and teleport syntax is working
tellraw @a {"text":"[EmptyOverworld] Test function works! Namespace is correct.","color":"green"}

# Show player’s actual dimension
execute as @a if entity @s in minecraft:overworld run tellraw @s {"text":"[Test] You are in the OVERWORLD.","color":"red"}
execute as @a if entity @s in minecraft:the_nether run tellraw @s {"text":"[Test] You are in the NETHER.","color":"gold"}
execute as @a if entity @s in minecraft:the_end run tellraw @s {"text":"[Test] You are in the END.","color":"dark_purple"}

# Force teleport if in Overworld
execute as @a if entity @s in minecraft:overworld run tellraw @s {"text":"[Test] You are in overworld - teleporting to Nether!","color":"yellow"}
execute as @a if entity @s in minecraft:overworld run tp @s 0 65 0 minecraft:the_nether
