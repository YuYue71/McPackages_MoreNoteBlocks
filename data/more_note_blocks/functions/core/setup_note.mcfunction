# Dependency: more_note_blocks:core/abort_deploy
# Responsibility: 執行空間碰撞檢測 (Collision Check) 並安全實例化組件

# [Deployment] 驗證通過，執行部署與狀態突變
setblock ~ ~ ~ note_block
fill ~ ~1 ~ ~ ~1 ~ structure_void replace air
tag @s remove init_custom_note
tag @s add custom_note