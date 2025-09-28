# EmptyOverworld Datapack

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
