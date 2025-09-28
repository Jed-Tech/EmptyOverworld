# EmptyOverworld Datapack Loaded
tellraw @a {"text":"[EmptyOverworld] Datapack loaded! The Overworld is now inaccessible.","color":"green"}

# Grant join advancement to all players for first-time join experience
advancement grant @a only emptyoverworld:join

# Grant respawn advancement to all players for respawn handling
advancement grant @a only emptyoverworld:respawn

# Start the tick function for continuous monitoring
schedule function emptyoverworld:tick 1t

# Immediate teleport any existing Overworld players
execute as @a if dimension minecraft:overworld run tellraw @s {"text":"[EmptyOverworld] Teleporting to Nether!","color":"yellow"}
execute as @a if dimension minecraft:overworld run execute in minecraft:the_nether run tp @s 0 65 0

# Build Nether spawn platform for existing Nether players
execute as @a if dimension minecraft:the_nether run tellraw @s {"text":"[EmptyOverworld] Building your Nether platform...","color":"blue"}
execute as @a if dimension minecraft:the_nether run function emptyoverworld:spawn_platform
