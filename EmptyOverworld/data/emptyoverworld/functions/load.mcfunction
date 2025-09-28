# Debug: Announce that load function is running
tellraw @a {"text":"[EmptyOverworld] Load function executed!","color":"green"}

# Set world spawn to Nether coordinates (this works even if Nether isn't loaded)
setworldspawn 0 65 0

# Debug: Announce completion
tellraw @a {"text":"[EmptyOverworld] Load function completed!","color":"green"}