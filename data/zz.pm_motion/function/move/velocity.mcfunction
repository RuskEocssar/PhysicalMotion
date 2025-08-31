#> zz.pm_motion:move/tick
# 速度の計算
# @within
#   function zz.pm_motion:**

## 速度の計算
    # 加速度を加算
    scoreboard players operation #entity pmmS.x.2 *= #pmmH.1 pmmS.time
    scoreboard players operation #entity pmmS.y.2 *= #pmmH.1 pmmS.time
    scoreboard players operation #entity pmmS.z.2 *= #pmmH.1 pmmS.time
    scoreboard players operation #entity pmmS.x.2 /= #c1000 _
    scoreboard players operation #entity pmmS.y.2 /= #c1000 _
    scoreboard players operation #entity pmmS.z.2 /= #c1000 _
    # 速度に加算
    execute store result entity 4fe002bb-0-0-0-1 Pos[0] double 0.01 store result score #entity pmmS.distance run scoreboard players operation @s pmmS.x.1 += #entity pmmS.x.2
    execute store result entity 4fe002bb-0-0-0-1 Pos[1] double 0.01 store result score #pmmH.2 pmmS.y.1 run scoreboard players operation @s pmmS.y.1 += #entity pmmS.y.2
    execute store result entity 4fe002bb-0-0-0-1 Pos[2] double 0.01 store result score #pmmH.2 pmmS.z.1 run scoreboard players operation @s pmmS.z.1 += #entity pmmS.z.2
    # 正規化
    execute as 4fe002bb-0-0-0-1 positioned 0. 0. 0. facing entity @s feet run tp @s ^ ^ ^1 ~ ~
    execute store result score #pmmH.2 pmmS.x.2 run data get entity 4fe002bb-0-0-0-1 Pos[0] 100
    execute store result score #pmmH.2 pmmS.y.2 run data get entity 4fe002bb-0-0-0-1 Pos[1] 100
    execute store result score #pmmH.2 pmmS.z.2 run data get entity 4fe002bb-0-0-0-1 Pos[2] 100
    # 計算
    execute if score #entity pmmS.distance matches ..-1 run scoreboard players operation #entity pmmS.distance *= #c-1 _
    execute if score #pmmH.2 pmmS.y.1 matches ..-1 run scoreboard players operation #pmmH.2 pmmS.y.1 *= #c-1 _
    execute if score #pmmH.2 pmmS.z.1 matches ..-1 run scoreboard players operation #pmmH.2 pmmS.z.1 *= #c-1 _
    execute if score #pmmH.2 pmmS.x.2 matches ..-1 run scoreboard players operation #pmmH.2 pmmS.x.2 *= #c-1 _
    execute if score #pmmH.2 pmmS.y.2 matches ..-1 run scoreboard players operation #pmmH.2 pmmS.y.2 *= #c-1 _
    execute if score #pmmH.2 pmmS.z.2 matches ..-1 run scoreboard players operation #pmmH.2 pmmS.z.2 *= #c-1 _
    scoreboard players operation #entity pmmS.distance > #pmmH.2 pmmS.y.1
    scoreboard players operation #entity pmmS.distance > #pmmH.2 pmmS.z.1
    scoreboard players operation #pmmH.2 pmmS.x.2 > #pmmH.2 pmmS.y.2
    scoreboard players operation #pmmH.2 pmmS.x.2 > #pmmH.2 pmmS.z.2
    scoreboard players operation #entity pmmS.distance *= #c100 _
    scoreboard players operation #entity pmmS.distance /= #pmmH.2 pmmS.x.2
    scoreboard players operation #entity pmmS.distance *= #pmmH.1 pmmS.time
    scoreboard players operation #entity pmmS.distance /= #c1000 _