# Debug message (comment or delete to disable)
tellraw @s {"text":"[EmptyOverworld DEBUG] Teleporting you to the Nether at 0 65 0...","color":"yellow"}

# Teleport to Nether fixed coordinates
execute in minecraft:the_nether run teleport @s 0 65 0 0 0

# Schedule cooldown clear after 10 ticks (normal case)
schedule function emptyoverworld:clear_tp_tag 10t replace

# Schedule cooldown clear after 30 ticks (failsafe case)
schedule function emptyoverworld:clear_tp_tag 30t replace