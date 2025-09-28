say load function works

# Teleport any Overworld players to the Nether hub
execute as @a if dimension minecraft:overworld run tellraw @s {"text":"[EmptyOverworld] Teleporting to Nether!","color":"yellow"}
execute as @a if dimension minecraft:overworld run execute in minecraft:the_nether run tp @s 0 65 0

# Build Nether spawn platform when players are in the Nether
execute as @a if dimension minecraft:the_nether run tellraw @s {"text":"[EmptyOverworld] In Nether - building platform","color":"blue"}
execute as @a if dimension minecraft:the_nether run function emptyoverworld:spawn_platform
