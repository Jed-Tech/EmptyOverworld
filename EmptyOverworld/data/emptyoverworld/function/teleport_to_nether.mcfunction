# teleport_to_nether.mcfunction

# Add cooldown tag so this only fires once until cleared
tag @s add eo_tp_cd

# Teleport the player into the Nether
execute in minecraft:the_nether run teleport @s 0 65 0

# Optional message
tellraw @s {"text":"[EmptyOverworld] The Overworld is gone! Teleporting you to the Nether.","color":"red"}

# Schedule cooldown removal after short delay (20 ticks = 1 second)
schedule function emptyoverworld:clear_cd 20t