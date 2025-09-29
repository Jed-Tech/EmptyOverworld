# EmptyOverworld Datapack

**Version:** 1.0.x
**Target:** Minecraft 1.21.8 (Fabric or Vanilla)

This datapack removes access to the Overworld.
Players who spawn, join, or otherwise travel to the Overworld are automatically teleported into the Nether.

This datapack transforms Minecraft into a **Nether-Only Survival** experience with working progression to the End. Designed for Minecraft **1.21.x** (Fabric/Vanilla-compatible).

## ✨ Features

### 🌍 Overworld
- Generates as a **complete void** (no blocks, no terrain).
- Players cannot spawn naturally here.
- Can still be entered via Nether portals for building sky-islands if desired.

### 🌋 Nether
- Acts as the **main survival dimension**.
- A **safe spawn hub** is generated at **(0,65,0)**:
  - 6×6 reinforced deepslate platform
  - World spawn is set here by default.
- Respawn rules:
  - Players **without a respawn anchor** are teleported here.
  - Players **with a respawn anchor** respawn at their own anchor as normal.

### 🔮 End Access
- **Nether Ruined Portals are replaced** with **Stronghold End Portal Rooms**.
- Rooms generate ~10 blocks deeper than portals normally would, so Nether terrain naturally encloses them.
- End Portals are unfilled — players must craft and insert Eyes of Ender as in vanilla.

## 🚀 Installation

1. Download the `EmptyOverworld` datapack (ZIP or folder).
2. Place it in your world save under:
   ```
   saves/YourWorldName/datapacks/
   ```
3. Run `/reload` in-game or restart the world.

## 🛠️ Development

This datapack is automatically built and released via GitHub Actions. Each push to the main branch creates a new release with incremental versioning.

## 📝 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 📂 File Structure

- `data/emptyoverworld/function/tick.mcfunction`
- `data/emptyoverworld/function/teleport_to_nether.mcfunction`
- `data/emptyoverworld/function/clear_tp_tag.mcfunction`
- `data/minecraft/tags/function/tick.json`

## ⚠️ Syntax Gotchas in 1.21.8

We discovered several breaking changes and quirks in Minecraft 1.21.8:

### Folder Names
- **Use:** `data/<namespace>/function/`
- **Do NOT use:** `functions/` (plural). This will silently fail.

### Teleport Command
- **Correct:** `teleport @s 0 65 0 minecraft:the_nether`
- Old alias `tp` no longer works reliably in datapacks.

### Dimension Detection
- The old syntax `if dimension minecraft:overworld` does not exist.
- **The correct check is:**
  ```
  execute as @a if entity @s in minecraft:overworld run …
  ```
- Selector form `@s[dimension=…]` is invalid in 1.21.8.

### Tag Files
- Place your tick hook in: `data/minecraft/tags/function/tick.json`
- **Example JSON:**
  ```json
  { "values": [ "emptyoverworld:tick" ] }
  ```

### Cooldown Tagging
- To prevent infinite teleport loops, we use a temporary entity tag.
- `teleport_to_nether.mcfunction` adds tag `eo_tp_cd`.
- `clear_tp_tag.mcfunction` removes it after a short delay.
- **Use scheduling:** `schedule function emptyoverworld:clear_tp_tag 10t replace`

## 📜 Functions

### `tick.mcfunction`
Checks every tick for players in the Overworld and calls `teleport_to_nether` unless they have the cooldown tag.

### `teleport_to_nether.mcfunction`
Adds the `eo_tp_cd` tag, sends a chat warning, teleports the player to the Nether at 0 65 0, then schedules `clear_tp_tag` after 10 ticks.

### `clear_tp_tag.mcfunction`
Removes the `eo_tp_cd` tag from all players so they can be teleported again if needed.

## ✅ Expected Behavior

- **Joining in Overworld** → Player is teleported once to Nether.
- **Joining in Nether** → No teleport occurs.
- **Manually traveling to Overworld later** → Player is teleported back to Nether.
- **No infinite teleport loops** while in the Nether.

## 🚫 Removed Files

`load.mcfunction` was deleted to avoid duplicate or looped teleport behavior.

## 💡 Notes

- Always test in a fresh world after datapack updates to clear cached command parsing.
- Line endings: LF is safest for JSON and mcfunction files.
