# Debug: Announce that load function is running
tellraw @a {"text":"[EmptyOverworld] Load function executed!","color":"green"}

# Set world spawn to Nether coordinates (this works even if Nether isn't loaded)
setworldspawn 0 65 0

# Teleport any existing players from overworld to Nether
execute as @a if dimension minecraft:overworld run tp @s 0 65 0 minecraft:the_nether

# Start the tick function immediately
function emptyoverworld:tick

# Kickstart the teleport scheduler
schedule function emptyoverworld:tick_runner 20t

# Debug: Announce completion
tellraw @a {"text":"[EmptyOverworld] Load function completed!","color":"green"}