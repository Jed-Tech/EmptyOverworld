# data/emptyoverworld/function/tick.mcfunction

# Only teleport players if they are currently in the Overworld
execute as @a if entity @s[dimension=minecraft:overworld] run function emptyoverworld:teleport_to_nether