# Player join event - ensure they're in the Nether
# Check if player has already been processed
execute as @s unless score @s joined matches 1 run function emptyoverworld:join_failsafe_process

# Mark player as processed
scoreboard players set @s joined 1
