# Responsibility: 提取音階盒的 note 屬性，注入對應的 Pitch Float (音高浮點數) 並觸發發聲巨集

# 提取 Marker 身上的 sound_id 字串至全域儲存區
data modify storage more_note_blocks:temp macro.sound set from entity @s data.sound

# 空間拓撲映射：25 階音高狀態檢查 (State Inspection)
execute if block ~ ~ ~ note_block[note=0] run data modify storage more_note_blocks:temp macro.pitch set value 0.5f
execute if block ~ ~ ~ note_block[note=1] run data modify storage more_note_blocks:temp macro.pitch set value 0.53f
execute if block ~ ~ ~ note_block[note=2] run data modify storage more_note_blocks:temp macro.pitch set value 0.56f
execute if block ~ ~ ~ note_block[note=3] run data modify storage more_note_blocks:temp macro.pitch set value 0.59f
execute if block ~ ~ ~ note_block[note=4] run data modify storage more_note_blocks:temp macro.pitch set value 0.63f
execute if block ~ ~ ~ note_block[note=5] run data modify storage more_note_blocks:temp macro.pitch set value 0.67f
execute if block ~ ~ ~ note_block[note=6] run data modify storage more_note_blocks:temp macro.pitch set value 0.71f
execute if block ~ ~ ~ note_block[note=7] run data modify storage more_note_blocks:temp macro.pitch set value 0.75f
execute if block ~ ~ ~ note_block[note=8] run data modify storage more_note_blocks:temp macro.pitch set value 0.79f
execute if block ~ ~ ~ note_block[note=9] run data modify storage more_note_blocks:temp macro.pitch set value 0.84f
execute if block ~ ~ ~ note_block[note=10] run data modify storage more_note_blocks:temp macro.pitch set value 0.89f
execute if block ~ ~ ~ note_block[note=11] run data modify storage more_note_blocks:temp macro.pitch set value 0.94f
execute if block ~ ~ ~ note_block[note=12] run data modify storage more_note_blocks:temp macro.pitch set value 1.0f
execute if block ~ ~ ~ note_block[note=13] run data modify storage more_note_blocks:temp macro.pitch set value 1.06f
execute if block ~ ~ ~ note_block[note=14] run data modify storage more_note_blocks:temp macro.pitch set value 1.12f
execute if block ~ ~ ~ note_block[note=15] run data modify storage more_note_blocks:temp macro.pitch set value 1.19f
execute if block ~ ~ ~ note_block[note=16] run data modify storage more_note_blocks:temp macro.pitch set value 1.26f
execute if block ~ ~ ~ note_block[note=17] run data modify storage more_note_blocks:temp macro.pitch set value 1.33f
execute if block ~ ~ ~ note_block[note=18] run data modify storage more_note_blocks:temp macro.pitch set value 1.41f
execute if block ~ ~ ~ note_block[note=19] run data modify storage more_note_blocks:temp macro.pitch set value 1.50f
execute if block ~ ~ ~ note_block[note=20] run data modify storage more_note_blocks:temp macro.pitch set value 1.59f
execute if block ~ ~ ~ note_block[note=21] run data modify storage more_note_blocks:temp macro.pitch set value 1.68f
execute if block ~ ~ ~ note_block[note=22] run data modify storage more_note_blocks:temp macro.pitch set value 1.78f
execute if block ~ ~ ~ note_block[note=23] run data modify storage more_note_blocks:temp macro.pitch set value 1.89f
execute if block ~ ~ ~ note_block[note=24] run data modify storage more_note_blocks:temp macro.pitch set value 2.0f

# 攜帶組合完成的變數物件，呼叫巨集播放
function more_note_blocks:core/macro_play with storage more_note_blocks:temp macro