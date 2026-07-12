# 依賴模組: 必須透過 play_state_sound.mcfunction 傳入 $(sound) 與 $(pitch) 變數
# 責任: 執行跨域音效廣播與發送視覺粒子

# 變數狀態: 確保來源皆為合法映射範圍，避免無效字串中斷指令
$playsound $(sound) record @a ~ ~ ~ 1.0 $(pitch)
particle note ~0.5 ~1.2 ~0.5