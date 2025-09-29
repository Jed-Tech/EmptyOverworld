# Tick loop: teleport any players in the Overworld (unless on cooldown)
execute as @a unless entity @s[tag=eo_tp_cd] run execute if entity @s in minecraft:overworld run tellraw @s {"text":"[DEBUG] Overworld detected — teleporting...","color":"red"}

execute as @a unless entity @s[tag=eo_tp_cd] run execute if entity @s in minecraft:overworld run function emptyoverworld:teleport_to_nether

# Always clear cooldowns at the end of tick
function emptyoverworld:clear_tp_tag