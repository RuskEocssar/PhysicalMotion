#> zz.pm_motion:ray/start
# 視線上を探査
# @within
#   function zz.pm_motion:**

## 衝突を判定
    # 前処理
    tag @s add root
    scoreboard players operation #pmmH.1 pmmS.distance = #entity pmmS.distance
    execute positioned 0.0 0.0 0.0 positioned ^ ^ ^2 positioned 0.0 ~ ~ positioned ^ ^ ^-1 facing 0.0 0.0 0.0 positioned as @s run tp 4fe002bb-0-0-0-1 ~ ~ ~ ~ ~
    # 探査を開始
    function zz.pm_motion:ray/064
    # 後処理
    tag @s remove root