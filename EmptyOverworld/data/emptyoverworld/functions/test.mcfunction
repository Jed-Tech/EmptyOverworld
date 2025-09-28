# Simple test function to verify namespace is working
tellraw @a {"text":"[EmptyOverworld] Test function works! Namespace is correct.","color":"green"}

# Test teleportation
execute as @a if dimension minecraft:overworld run tellraw @s {"text":"[EmptyOverworld] You are in overworld - teleporting to Nether!","color":"yellow"}
execute as @a if dimension minecraft:overworld run tp @s 0 65 0 minecraft:the_nether
