# tick.mcfunction
# Only run the teleport function for players actually in the Overworld
execute as @a if dimension = minecraft:overworld run function emptyoverworld:teleport_to_nether