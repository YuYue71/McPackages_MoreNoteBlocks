# 依賴模組: handle_tune.mcfunction 初始呼叫，及自身遞迴呼叫
# 責任: 以 0.25 格為單位推進視線座標，偵測碰撞並觸發聽覺反饋

# [邊界條件 1: 命中目標 Target Hit]
# 若當前射線座標觸碰 note_block，強制該座標半徑內的 Marker 播放音效
execute if block ~ ~ ~ note_block as @e[type=marker,tag=custom_note,distance=..1,limit=1,sort=nearest] run function more_note_blocks:core/play_state_sound
# 觸發發聲後，立即終止當前射線遞迴
execute if block ~ ~ ~ note_block run return 1

# [邊界條件 2: 物理阻擋 Physical Block]
# 若射線撞上非空氣、非結構空位等實體方塊 (如牆壁)，代表視線被遮擋，終止遞迴
execute unless block ~ ~ ~ air unless block ~ ~ ~ structure_void unless block ~ ~ ~ water run return 1

# [內部轉換: 遞迴推進 Recursive Advancement]
# 檢查射線當前座標與施放者 (@s) 的距離。若小於 5 格 (原生最大互動距離)，則向前推進 0.25 格並重複掃描
execute if entity @s[distance=..5] positioned ^ ^ ^0.25 run function more_note_blocks:core/raycast_step