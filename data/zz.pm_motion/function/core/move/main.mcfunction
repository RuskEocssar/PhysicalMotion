#> zz.pm_motion:move/main
# 移動
# @within
#   function zz.pm_motion:**

## 移動
    # 衝突を判定
    execute rotated as 4fe002bb-0-0-0-1 run function zz.pm_motion:ray/start
    # 加速度を加算
    function zz.pm_motion:acc/main
    # 速度の計算
    function zz.pm_motion:move/velocity

## ループで実行
    scoreboard players remove #entity pmmS.time 1
    execute if score #entity pmmS.time matches 1.. at @s run function zz.pm_motion:move/main