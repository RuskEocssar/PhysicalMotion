#> zz.ph_motion:core/ray/start
# 視線上を探査
# @within
#   function zz.ph_motion:core/**

## 衝突を判定
    # 前処理
    tag @s add root
    scoreboard players operation #phmH.1 phmS.distance = #entity phmS.distance
    execute positioned 0.0 0.0 0.0 positioned ^ ^ ^2 positioned 0.0 ~ ~ positioned ^ ^ ^-1 facing 0.0 0.0 0.0 positioned as @s run tp 4fe002bb-0-0-0-1 ~ ~ ~ ~ ~
    # 探査を開始
    function zz.ph_motion:core/ray/064
    # 後処理
    tag @s remove root