# 依賴模組: 無 (由 Event Loop 每遊戲刻自動執行)
# 責任: 執行高頻事件分發 (Event Routing)，橋接紅石狀態與玩家交互

# [階段 1] 實例化攔截 (Instantiation Intercept)
# 對齊網格座標 (align xyz) 確保方塊放置精準度
execute as @e[type=marker,tag=init_custom_note] at @s align xyz run function more_note_blocks:core/setup_note

# [階段 2] 破壞邏輯與資源回收 (Destruction & GC)
# 驗證 Marker 腳下是否仍存在音階盒，若否則觸發 GC 路由
execute as @e[type=marker,tag=custom_note] at @s unless block ~ ~ ~ note_block run function more_note_blocks:core/destroy_note

# [階段 3] 紅石邊緣觸發 (Redstone Edge Trigger)
# 透過 is_powered 標籤與 powered=true 狀態建立 Rising Edge (上升緣) 偵測，避免連續播放
execute as @e[type=marker,tag=custom_note] at @s if block ~ ~ ~ note_block[powered=true] unless entity @s[tag=is_powered] run function more_note_blocks:core/play_state_sound
execute as @e[type=marker,tag=custom_note] at @s if block ~ ~ ~ note_block[powered=true] run tag @s add is_powered
execute as @e[type=marker,tag=custom_note] at @s if block ~ ~ ~ note_block[powered=false] run tag @s remove is_powered

# [階段 4] 調音事件擷取 (Tuning Capture)    
# 攔截分數 > 0 的玩家，導入 Raycast (射線追蹤) 路由
execute as @a[scores={tune_note=1..}] at @s run function more_note_blocks:core/handle_tune

# [階段 5] 清理懸空結構空位 (Cleanup Structure Void)
execute as @e[type=marker,tag=custom_note] at @s if block ~ ~1 ~ air run setblock ~ ~1 ~ structure_void