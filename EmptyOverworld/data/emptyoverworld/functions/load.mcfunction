# On first join, move players at Overworld spawn into Nether hub
execute as @a at @s if dimension minecraft:overworld if entity @s[x=0,y=64,z=0,distance=..10] run tp @s 0 65 0 minecraft:the_nether