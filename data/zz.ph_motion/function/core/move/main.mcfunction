#> zz.ph_motion:core/move/main
# 移動
# @within
#   function zz.ph_motion:core/**

## 移動
    # 速度の計算
    function zz.ph_motion:core/move/velocity
    # 衝突を判定
    execute rotated as 4fe002bb-0-0-0-1 run function zz.ph_motion:core/ray/start

## ループで実行
    scoreboard players remove #entity phmS.time 1
    execute if score #entity phmS.time matches 1.. at @s run function zz.ph_motion:core/acc/main
    execute if score #entity phmS.time matches 1.. at @s run function zz.ph_motion:core/move/main