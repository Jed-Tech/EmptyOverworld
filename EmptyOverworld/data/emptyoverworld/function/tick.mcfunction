# Continuous failsafe - teleport any Overworld players to Nether
execute as @a unless entity @s[tag=eo_in_nether] if entity @s in minecraft:overworld run function emptyoverworld:teleport_to_nether