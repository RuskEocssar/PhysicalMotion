#> zz.ph_motion:core/reflect/block
# 反射
# @within
#   function zz.ph_motion:core/**

## 反射
    # スコア
    scoreboard players remove @s phmS.count 1
    scoreboard players add #entity phmS.time 1
    # 計算時間の再計算
    scoreboard players operation #phmH.1 phmS.time *= #phmH.2 phmS.distance
    scoreboard players operation #phmH.1 phmS.time /= #entity phmS.distance
    # 衝突対象
    execute if score #phmH.ray001 phmS. matches 1 if score @s phmS.count matches 1.. run function zz.ph_motion:core/reflect/block
    execute if score #phmH.ray001 phmS. matches 2 if score @s phmS.count matches 1.. run function zz.ph_motion:core/reflect/entity