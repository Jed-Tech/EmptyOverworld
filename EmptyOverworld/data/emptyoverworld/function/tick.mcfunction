# Only teleport players in the Overworld who don't already have cooldown
execute as @a unless entity @s[tag=eo_tp_cd] if entity @s in minecraft:overworld run function emptyoverworld:teleport_to_nether