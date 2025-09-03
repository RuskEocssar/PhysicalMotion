#> zz.pm_motion:move/main
# 移動
# @within
#   function zz.pm_motion:**

## 移動
    # 移動距離の計算
    function zz.pm_motion:move/distance
    # 衝突を判定
    scoreboard players operation #pmmH.1 pmmS.distance = #entity pmmS.distance
    execute rotated as 4fe002bb-0-0-0-1 run function zz.pm_motion:ray/start
    # 加速度を加算
    function zz.pm_motion:move/acceleration
    # 速度の計算
    function zz.pm_motion:move/velocity

## ループで実行
    execute if score #pmmH.1 pmmS.time matches 1.. at @s run function zz.pm_motion:move/main