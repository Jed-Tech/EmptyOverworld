# Mark player with cooldown tag before teleporting
tag @s add eo_tp_cd

# Debug message
tellraw @s {"text":"[DEBUG] Teleporting you to the Nether at 0 65 0...","color":"yellow"}

# Perform the teleport
execute in minecraft:the_nether run teleport @s 0 65 0