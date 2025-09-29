# Step 1: Tag any Overworld player without cooldown
execute as @a unless entity @s[tag=eo_tp_cd] if entity @s in minecraft:overworld run tag @s add eo_tp_cd

# Step 2: If tagged and in the Overworld, schedule the teleport 2 ticks later
execute as @a if entity @s[tag=eo_tp_cd] if entity @s in minecraft:overworld run schedule function emptyoverworld:teleport_to_nether 2t replace