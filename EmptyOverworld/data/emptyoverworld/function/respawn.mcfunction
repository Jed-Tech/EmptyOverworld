# Respawn/dimension change handling
tellraw @s {"text":"[EmptyOverworld] You've respawned or changed dimensions!","color":"gold"}
tellraw @s {"text":"[EmptyOverworld] Returning you to the Nether...","color":"yellow"}

# Teleport player to Nether if they're in the overworld
execute as @s if dimension minecraft:overworld run tellraw @s {"text":"[EmptyOverworld] Teleporting to Nether!","color":"red"}
execute as @s if dimension minecraft:overworld run execute in minecraft:the_nether run tp @s 0 65 0

# Build Nether spawn platform if player is in the Nether
execute as @s if dimension minecraft:the_nether run tellraw @s {"text":"[EmptyOverworld] Ensuring your Nether platform is ready...","color":"blue"}
execute as @s if dimension minecraft:the_nether run function emptyoverworld:spawn_platform

# Revoke this advancement so it can be triggered again on next respawn
advancement revoke @s only emptyoverworld:respawn
