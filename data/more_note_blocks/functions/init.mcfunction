# /reload 時自動呼叫
# 僅需執行一次，重複執行不會產生副作用
# 註冊用於攔截玩家右鍵調音事件的 Statistic Scoreboard (統計計分板)

scoreboard objectives add tune_note minecraft.custom:minecraft.tune_noteblock
tellraw @p {"text":"[MoreNoteBlocks] ","color":"aqua","bold":true,"extra":[{"text":"資料包成功載入","color":"green","bold":true,"italic":false}]}
tellraw @p {"text":"[MoreNoteBlocks] ","color":"aqua","bold":true,"extra":[{"text":"請使用 [/function more_note_blocks:summon_station] 以部署工作站","color":"yellow","bold":false,"italic":false}]}
tellraw @p {"text":"[MoreNoteBlocks] ","color":"aqua","bold":true,"extra":[{"text":"如工作站異常或無法使用, 請使用 [/function more_note_blocks:summon_all_chests] 來呼叫原始倉庫","color":"yellow","bold":false,"italic":false}]}