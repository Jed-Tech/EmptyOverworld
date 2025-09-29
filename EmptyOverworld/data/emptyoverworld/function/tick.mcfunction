# Only teleport players who are actually in the Overworld
# Cooldown tag prevents immediate re-trigger after a teleport
execute as @a unless entity @s[tag=eo_recent_tp] if entity @s in minecraft:overworld run function emptyoverworld:teleport_to_nether

# (Optional debug — safe because it FILTERS instead of CONTEXT-SWITCHING)
execute as @a if entity @s in minecraft:overworld run tellraw @s {"text":"[DEBUG] In OVERWORLD (will TP)","color":"red"}
execute as @a if entity @s in minecraft:the_nether run tellraw @s {"text":"[DEBUG] In NETHER (no TP)","color":"gold"}
execute as @a if entity @s in minecraft:the_end run tellraw @s {"text":"[DEBUG] In END (no TP)","color":"dark_purple"}