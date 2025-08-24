#> zz.ph_motion:core/ray/main
# 移動
# @within
#   function zz.ph_motion:core/**

## 移動
    # 速度の計算
    function zz.ph_motion:core/ray/velocity
    # 移動

## ループで実行
    scoreboard players remove #entity phmS.time 1
    execute if score #entity phmS.time matches 1.. run function zz.ph_motion:core/ray/iteration
    