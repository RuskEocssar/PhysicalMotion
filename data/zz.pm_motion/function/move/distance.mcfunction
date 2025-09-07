#> zz.pm_motion:move/distance
# 移動距離の計算
# @within
#   function zz.pm_motion:**

## 移動距離の計算
    # 向き
    data modify storage pm_motion:zz _.pos set value [0d,0d,0d]
    execute store result storage pm_motion:zz _.pos[0] double 0.01 run scoreboard players get #entity pmmS.distance
    execute store result storage pm_motion:zz _.pos[1] double 0.01 run scoreboard players get #pmmH.2 pmmS.y.1
    execute store result storage pm_motion:zz _.pos[2] double 0.01 run scoreboard players get #pmmH.2 pmmS.z.1
    data modify entity @s Pos set from storage pm_motion:zz _.pos
    # 正規化
    execute as @s positioned 0. 0. 0. facing entity @s feet run tp @s ^ ^ ^1 ~ ~
    data modify storage pm_motion:zz _.pos set from entity @s Pos
    execute store result score #pmmH.2 pmmS.x.2 run data get storage pm_motion:zz _.pos[0] 100
    execute store result score #pmmH.2 pmmS.y.2 run data get storage pm_motion:zz _.pos[1] 100
    execute store result score #pmmH.2 pmmS.z.2 run data get storage pm_motion:zz _.pos[2] 100
    # 内積の計算
    scoreboard players operation #entity pmmS.distance *= #pmmH.2 pmmS.x.2
    scoreboard players operation #pmmH.2 pmmS.y.1 *= #pmmH.2 pmmS.y.2
    scoreboard players operation #pmmH.2 pmmS.z.1 *= #pmmH.2 pmmS.z.2
    scoreboard players operation #entity pmmS.distance += #pmmH.2 pmmS.y.1
    scoreboard players operation #entity pmmS.distance += #pmmH.2 pmmS.z.1
    execute unless score #entity pmmS.distance matches 0..9999999 run scoreboard players set #entity pmmS.distance 10000000
    scoreboard players operation #entity pmmS.distance /= #c100 _
    scoreboard players operation #entity pmmS.distance *= #entity pmmS.time
    scoreboard players operation #entity pmmS.distance /= #c1000 _