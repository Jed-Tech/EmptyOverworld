# Player join event - ensure they're in the Nether
tellraw @s {"text":"[EmptyOverworld] The Overworld is gone. Welcome to The Nether...","color":"aqua"}

# Teleport player to Nether if they're in the overworld
execute as @s if dimension minecraft:overworld run tellraw @s {"text":"[EmptyOverworld] Teleporting to Nether!","color":"yellow"}
execute as @s if dimension minecraft:overworld run execute in minecraft:the_nether run tp @s 0 65 0

# Build Nether spawn platform if player is in the Nether
execute as @s if dimension minecraft:the_nether run tellraw @s {"text":"[EmptyOverworld] In Nether - building platform","color":"blue"}
execute as @s if dimension minecraft:the_nether run function emptyoverworld:spawn_platform
