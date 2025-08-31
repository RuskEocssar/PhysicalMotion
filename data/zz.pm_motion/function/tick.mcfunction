#> zz.pm_motion:tick
# 定義/初期設定
# @within
#   function pm_motion:**
#   function zz.pm_motion:**

## エンティティごとに実行
    execute as @e[tag=pmmT.motion] run function zz.pm_motion:tick_entity

## 常時実行
    execute if entity @e[tag=pmmT.motion,limit=1] run schedule function zz.pm_motion:tick 1t