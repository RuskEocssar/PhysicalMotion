#> zz.pm_motion:env/main
# 加速度を追加
# @within
#   function zz.pm_motion:**

## 加速度を追加
    data modify storage pm_motion:zz _.env set from storage pm_motion:zz _.additional[-1]
    data remove storage pm_motion:zz _.additional[-1]
    execute if data storage pm_motion:zz _.env{type:"acceleration"}
    execute if data storage pm_motion:zz _.env{type:"spring"}
    execute if data storage pm_motion:zz _.env{type:"string"}

## ループで実行
    execute if data storage pm_motion:zz _.additioanl[-1] run function zz.pm_motion:move/main