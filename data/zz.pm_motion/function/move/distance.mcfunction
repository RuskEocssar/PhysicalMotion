#> zz.pm_motion:move/distance
# 移動距離の計算
# @within
#   function zz.pm_motion:**

## 移動距離の計算
    # 向き
    data modify storage pm_motion:zz _,pos set value [0d,0d,0d]
    execute store result storage pm_motion:zz _.pos[0] double 0.01 run scoreboard players operation #entity pmmS.distance = @s pmmS.x.1
    execute store result storage pm_motion:zz _.pos[1] double 0.01 run scoreboard players operation #pmmH.2 pmmS.y.1 = @s pmmS.y.1
    execute store result storage pm_motion:zz _.pos[2] double 0.01 run scoreboard players operation #pmmH.2 pmmS.z.1 = @s pmmS.z.1
    data modify entity 4fe002bb-0-0-0-1 Pos set from storage pm_motion:zz _.pos
    # 正規化
    execute as 4fe002bb-0-0-0-1 positioned 0. 0. 0. facing entity @s feet run tp @s ^ ^ ^1 ~ ~
    data modify storage pm_motion:zz _.pos set from entity 4fe002bb-0-0-0-1 Pos
    execute store result score #pmmH.2 pmmS.x.2 run data get storage pm_motion:zz _.pos[0] 100
    execute store result score #pmmH.2 pmmS.y.2 run data get storage pm_motion:zz _.pos[1] 100
    execute store result score #pmmH.2 pmmS.z.2 run data get storage pm_motion:zz _.pos[2] 100
    # 内積の計算
    scoreboard players operation #entity pmmS.distance *= #pmmH.2 pmmS.x.2
    scoreboard players operation #pmmH.2 pmmS.y.2 *= #pmmH.2 pmmS.y.2
    scoreboard players operation #pmmH.2 pmmS.z.2 *= #pmmH.2 pmmS.z.2
    scoreboard players operation #entity pmmS.distance += #pmmH.2 pmmS.y.2
    scoreboard players operation #entity pmmS.distance += #pmmH.2 pmmS.z.2
    scoreboard players operation #entity pmmS.distance /= #c100 _
    scoreboard players operation #entity pmmS.distance *= #entity pmmS.time
    scoreboard players operation #entity pmmS.distance /= #c1000 _