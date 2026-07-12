# 依賴模組: tick.mcfunction 高頻呼叫
# 責任: 終止實體生命週期，並清除懸空的結構空位防堵環境污染

# [邊界條件 1: 音階盒消失 Note Block Vanish]
fill ~ ~1 ~ ~ ~1 ~ air replace structure_void
# 終止標記實體
kill @s