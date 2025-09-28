tellraw @a {"text":"[EmptyOverworld] Test function works! Namespace is correct.","color":"green"}

# Test teleportation
execute as @a if dimension minecraft:overworld run tellraw @s {"text":"[EmptyOverworld] You are in overworld - teleporting to Nether!","color":"yellow"}
execute as @a if dimension minecraft:overworld run execute in minecraft:the_nether run tp @s ~ 65 ~
