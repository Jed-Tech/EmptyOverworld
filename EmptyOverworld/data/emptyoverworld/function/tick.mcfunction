# tick.mcfunction
# Continuous failsafe - teleport any Overworld players (once per entry)

execute as @a unless entity @s[tag=eo_tp_cd] if dimension minecraft:overworld run function emptyoverworld:teleport_to_nether