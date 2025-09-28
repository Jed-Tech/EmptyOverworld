# Debug: Announce that load function is running
tellraw @a {"text":"[EmptyOverworld] Load function executed!","color":"green"}

# Build Nether spawn platform
execute in minecraft:the_nether run function emptyoverworld:spawn_platform

# Teleport any existing players from overworld to Nether
execute as @a if dimension minecraft:overworld run tp @s 0 65 0 minecraft:the_nether

# Kickstart the teleport scheduler
schedule function emptyoverworld:tick_runner 20t

# Debug: Announce completion
tellraw @a {"text":"[EmptyOverworld] Load function completed!","color":"green"}