# Create a 6x6 reinforced deepslate platform centered at (0,65,0)
fill -3 65 -3 2 65 2 minecraft:reinforced_deepslate replace

# Set world spawnpoint in the Nether
execute in minecraft:the_nether run setworldspawn 0 65 0
