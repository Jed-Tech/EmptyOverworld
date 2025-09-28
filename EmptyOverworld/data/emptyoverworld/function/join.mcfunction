# First-time join experience
tellraw @s {"text":"[EmptyOverworld] Welcome to the Nether-Only world!","color":"aqua"}
tellraw @s {"text":"[EmptyOverworld] The Overworld is gone. This is your life now...","color":"gray"}

# Teleport player to Nether if they're in the overworld
execute as @s if dimension minecraft:overworld run tellraw @s {"text":"[EmptyOverworld] Teleporting to Nether!","color":"yellow"}
execute as @s if dimension minecraft:overworld run execute in minecraft:the_nether run tp @s 0 65 0

# Build Nether spawn platform if player is in the Nether
execute as @s if dimension minecraft:the_nether run tellraw @s {"text":"[EmptyOverworld] Building your Nether platform...","color":"blue"}
execute as @s if dimension minecraft:the_nether run function emptyoverworld:spawn_platform

# Revoke this advancement so it only runs once per player
advancement revoke @s only emptyoverworld:join
