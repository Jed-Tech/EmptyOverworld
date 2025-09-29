# data/emptyoverworld/function/teleport_to_nether.mcfunction

tellraw @s {"text":"[EmptyOverworld] The Overworld is gone! Teleporting to Nether...","color":"red"}
execute in minecraft:the_nether run teleport @s 0 65 0