# Step 1: Tag Overworld players without cooldown
execute as @a unless entity @s[tag=eo_tp_cd] if entity @s in minecraft:overworld run tag @s add eo_tp_cd
# Debug message for tagging (comment or delete to disable)
execute as @a unless entity @s[tag=eo_tp_cd] if entity @s in minecraft:overworld run tellraw @s {"text":"[EmptyOverworld DEBUG] Tagged for teleport"}

# Step 2: Immediately run teleport if tagged and in Overworld
execute as @a if entity @s[tag=eo_tp_cd] if entity @s in minecraft:overworld run function emptyoverworld:teleport_to_nether