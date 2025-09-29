# Add cooldown before teleport
tag @s add eo_tp_cd

tellraw @s {"text":"[DEBUG] Teleporting you to the Nether at 0 65 0...","color":"yellow"}

# Teleport into Nether
execute in minecraft:the_nether run teleport @s 0 65 0

# Clear cooldown tag after a short delay so teleport finishes cleanly
schedule function emptyoverworld:clear_tp_tag 10t replace