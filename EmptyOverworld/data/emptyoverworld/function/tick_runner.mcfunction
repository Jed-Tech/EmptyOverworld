# Run the main teleport check once per second
function emptyoverworld:tick
schedule function emptyoverworld:tick_runner 20t