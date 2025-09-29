tellraw @s {"text":"[EmptyOverworld] The Overworld is gone! Teleporting to Nether...","color":"red"}
execute in minecraft:the_nether run teleport @s 0 65 0
tag @s add eo_recent_tp
schedule function emptyoverworld:clear_tp_tag 2t