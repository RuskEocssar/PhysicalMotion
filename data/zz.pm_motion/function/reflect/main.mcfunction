#> zz.pm_motion:reflect/block
# 反射
# @within
#   function zz.pm_motion:**

## 反射
    # スコア
    scoreboard players remove @s pmmS.count 1
    scoreboard players add #entity pmmS.time 1
    # 計算時間の再計算
    scoreboard players operation #pmmH.1 pmmS.time *= #pmmH.2 pmmS.distance
    scoreboard players operation #pmmH.1 pmmS.time /= #entity pmmS.distance
    # 衝突対象
    execute if score #pmmH.ray001 pmmS. matches 1 if score @s pmmS.count matches 1.. run function zz.pm_motion:reflect/block
    execute if score #pmmH.ray001 pmmS. matches 2 if score @s pmmS.count matches 1.. run function zz.pm_motion:reflect/entity