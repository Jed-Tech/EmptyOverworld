# Add cooldown so we don’t loop teleport
tag @s add eo_tp_cd

# Debug message before teleport
tellraw @s {"text":"[DEBUG] Teleporting you to the Nether at 0 65 0...","color":"yellow"}

# Teleport into the Nether safely
execute in minecraft:the_nether run teleport @s 0 65 0