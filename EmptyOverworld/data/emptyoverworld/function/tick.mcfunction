# Run every tick: teleport any Overworld player without cooldown
execute as @a unless entity @s[tag=eo_tp_cd] if entity @s in minecraft:overworld run function emptyoverworld:teleport_to_nether