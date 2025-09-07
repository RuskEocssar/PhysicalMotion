#> zz.pm_motion:ray/start
# 視線上を探査
# @within
#   function zz.pm_motion:**

## 衝突を判定
    # 探査を開始
    function zz.pm_motion:ray/064
    # 衝突が起きなかった場合
    execute if score #pmmH.root pmmS. matches 0 store result storage pm_motion:zz _.distance float 0.01 run scoreboard players get #entity pmmS.distance
    execute if score #pmmH.root pmmS. matches 0 run function zz.pm_motion:ray/macro/end_point with storage pm_motion:zz _