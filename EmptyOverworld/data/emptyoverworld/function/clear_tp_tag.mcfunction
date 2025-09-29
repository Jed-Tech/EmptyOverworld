# Normal case: clear cooldown tag if player is in the Nether
execute as @a if entity @s in minecraft:the_nether run tag @s remove eo_tp_cd

# Failsafe: after 30 ticks this same file runs again,
# clearing cooldown tag globally in case teleport failed
execute as @a unless entity @s in minecraft:the_nether run tag @s remove eo_tp_cd