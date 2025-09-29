# tick.mcfunction
# If player is in Overworld and not on cooldown → teleport them to Nether

execute as @a unless entity @s[tag=eo_tp_cd] if dimension minecraft:overworld run function emptyoverworld:teleport_to_nether