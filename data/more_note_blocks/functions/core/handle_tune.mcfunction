# 依賴模組: tick.mcfunction 內的高頻偵測 (scores={tune_note=1..})
# 責任: 初始化射線起點，清除統計分數，啟動遞迴尋標邏輯

# 變數狀態: 立即重置玩家的統計分數以防止重複觸發
scoreboard players set @s tune_note 0

# 將指令執行座標 (Execution Position) 綁定至玩家眼部 (anchored eyes)
# 啟動第一層遞迴掃描
execute at @s anchored eyes positioned ^ ^ ^ run function more_note_blocks:core/raycast_step