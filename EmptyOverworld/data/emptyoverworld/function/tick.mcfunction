# tick.mcfunction
# Teleport any players stuck in the Overworld to the Nether once

execute as @a unless entity @s[tag=eo_tp_cd] if dimension minecraft:overworld run function emptyoverworld:teleport_to_nether