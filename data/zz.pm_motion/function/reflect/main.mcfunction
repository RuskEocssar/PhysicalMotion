#> zz.pm_motion:reflect/block
# 反射
# @within
#   function zz.pm_motion:**

## 反射
    # スコア
    scoreboard players remove @s pmmS.count 1
    # 衝突対象
    execute if score #pmmH.ray001 pmmS. matches 1 run function zz.pm_motion:reflect/block
    execute if score #pmmH.ray001 pmmS. matches 2 run function zz.pm_motion:reflect/entity