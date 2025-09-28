# Debug: announce load function is running
tellraw @a {"text":"[EmptyOverworld] load.mcfunction executed","color":"green"}

# Build Nether spawn platform at 0,65,0
execute in minecraft:the_nether run function emptyoverworld:spawn_platform

# Teleport any existing Overworld players to Nether hub
execute as @a if dimension minecraft:overworld run tp @s 0 65 0 minecraft:the_nether

# Kickstart the once-per-second teleport scheduler
schedule function emptyoverworld:tick_runner 20t

# Debug: announce completion ok
tellraw @a {"text":"[EmptyOverworld] load.mcfunction completed","color":"green"}