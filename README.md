# MoreNoteBlocks

![Version](https://img.shields.io/badge/version-v1.0.0-blue)
![License](https://img.shields.io/badge/license-MIT-green)
![Tech](https://img.shields.io/badge/stack-Minecraft_Datapack-lightgrey)
![Minecraft](https://img.shields.io/badge/Minecraft-1.20.2_--_1.20.4-orange)

[中文](#中文) | [English](#english)

---

## 中文

### 目錄
- [關於](#關於)
- [功能](#功能)
- [安裝](#安裝)
- [使用方式](#使用方式)
- [授權](#授權)

### 關於
透過資料包巨幅擴展原味音階盒，新增近 500 種自訂音效。本專案為純淨相容原版生存的資料包，不需要安裝任何額外的資源包，藉由自訂的 NBT 生怪蛋與底層實體路由，讓玩家能輕鬆取得並觸發包含環境底噪、生物咆哮與魔法科技在內的各種原生音效。

### 功能
- 收錄近 500 種原生 Minecraft 音效，並系統化分類。
- 內建預載 NBT 工作站，可一鍵生成分類箱子以取得生怪蛋。
- 完美紅石同步，保留邊緣觸發邏輯與右鍵調音功能。
- 極致底層最佳化，使用 Marker 實體路由並具備自動資源回收機制。

### 安裝
```bash
# 1. 於 Releases 下載最新版資料包 (v1.0.0):
# [https://github.com/YuYue71/McPackages_MoreNoteBlocks/releases/download/v1.0.0/MoreNoteBlocks.zip](https://github.com/YuYue71/McPackages_MoreNoteBlocks/releases/download/v1.0.0/MoreNoteBlocks.zip)

# 2. 將下載的 .zip 檔案放入世界的 datapacks 資料夾中
# 路徑範例: .minecraft/saves/<你的世界名稱>/datapacks/

# 3. 進入遊戲並執行重新載入指令
/reload

```

### 使用方式

```bash
# 取得工作站與音效蛋
/function more_note_blocks:summon_station

# 1. 對準任意方塊上方，手持取得的生怪蛋點擊右鍵以放置自訂音階盒。
# 2. 接入紅石訊號即可觸發音效。
# 3. 對音階盒點擊右鍵可變更音調。
# 4. 直接破壞方塊即可連帶清除底層標記實體。

```

### 授權

本專案採用 MIT 授權，詳見 [LICENSE](https://www.google.com/search?q=./LICENSE)。
GitHub 專案庫：https://github.com/YuYue71/McPackages_MoreNoteBlocks

---

## English

### Table of Contents

* [About](https://www.google.com/search?q=%23about)
* [Features](https://www.google.com/search?q=%23features)
* [Installation](https://www.google.com/search?q=%23installation)
* [Usage](https://www.google.com/search?q=%23usage)
* [License](https://www.google.com/search?q=%23license)

### About

A Minecraft datapack expanding the note block system with hundreds of vanilla sounds. Fully compatible with vanilla survival mechanics and requiring no additional resource packs, this project uses custom NBT spawn eggs and underlying entity routing to let players easily place note blocks that trigger ambient noises, entity roars, and magical tech sounds.

### Features

* Access nearly 500 native Minecraft sounds, comprehensively categorized.
* Built-in NBT tool station to instantly summon categorized chests for obtaining spawn eggs.
* Perfect redstone parity retaining standard edge-trigger logic and right-click tuning.
* Architectural optimization utilizing Marker entity routing with automated garbage collection.

### Installation

```bash
# 1. Download the latest datapack from Releases (v1.0.0):
# [https://github.com/YuYue71/McPackages_MoreNoteBlocks/releases/download/v1.0.0/MoreNoteBlocks.zip](https://github.com/YuYue71/McPackages_MoreNoteBlocks/releases/download/v1.0.0/MoreNoteBlocks.zip)

# 2. Place the downloaded .zip file into your world's datapacks folder
# Path: .minecraft/saves/<YourWorldName>/datapacks/

# 3. Join your world and execute the reload command
/reload

```

### Usage

```bash
# Summon the tool station to obtain sound eggs
/function more_note_blocks:summon_station

# 1. Right-click on top of any block with a spawn egg to deploy the custom note block.
# 2. Power the block with redstone to play the sound.
# 3. Right-click the block to tune the pitch.
# 4. Break the block to automatically clear the underlying marker entity.

```

### License

This project is licensed under the MIT License — see [LICENSE](https://www.google.com/search?q=./LICENSE).
GitHub Repository: https://github.com/YuYue71/McPackages_MoreNoteBlocks