execute if entity @s in minecraft:overworld run tellraw @s {"text":"[EmptyOverworld] The Overworld is gone! Teleporting to Nether...","color":"red"}
execute if entity @s in minecraft:overworld run execute in minecraft:the_nether run teleport @s 0 65 0

tag @s add eo_tp_cd
schedule function emptyoverworld:clear_tp_cd 2t