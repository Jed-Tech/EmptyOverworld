# Build Nether spawn platform
execute in minecraft:the_nether run function emptyoverworld:spawn_platform

# Kickstart the teleport scheduler
schedule function emptyoverworld:tick_runner 20t