# load.mcfunction
tellraw @a {"text":"[EmptyOverworld] Datapack loaded! The Overworld is now inaccessible.","color":"green"}

# Teleport any players already in the Overworld on join/load
execute as @a if dimension minecraft:overworld run function emptyoverworld:teleport_to_nether