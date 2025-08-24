#> zz.ph_motion:core/tick
# 定義/初期設定
# @within
#   function ph_motion:**
#   function zz.ph_motion:core/**

## エンティティごとに実行
    execute as @e[tag=phmT.motion] run function zz.ph_motion:core/tick_entity

## 常時実行
    execute if entity @e[tag=phmT.motion,limit=1] run schedule function zz.ph_motion:core/tick 1t