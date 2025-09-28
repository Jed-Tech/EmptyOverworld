# Create a 6x6 nether brick platform centered at (0,65,0)
fill -3 65 -3 2 65 2 minecraft:nether_bricks replace

# Set world spawnpoint in the Nether
setworldspawn 0 65 0

# Debug message
tellraw @a {"text":"[EmptyOverworld] Spawn platform created!","color":"green"}