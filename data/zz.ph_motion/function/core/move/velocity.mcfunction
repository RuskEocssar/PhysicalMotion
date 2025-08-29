#> zz.ph_motion:core/move/tick
# 速度の計算
# @within
#   function zz.ph_motion:core/**

## 速度の計算
    # 加速度を加算
    scoreboard players operation #entity phmS.x.2 *= #phmH.1 phmS.time
    scoreboard players operation #entity phmS.y.2 *= #phmH.1 phmS.time
    scoreboard players operation #entity phmS.z.2 *= #phmH.1 phmS.time
    scoreboard players operation #entity phmS.x.2 /= #c1000 _
    scoreboard players operation #entity phmS.y.2 /= #c1000 _
    scoreboard players operation #entity phmS.z.2 /= #c1000 _
    # 速度に加算
    execute store result entity 4fe002bb-0-0-0-1 Pos[0] double 0.01 store result score #entity phmS.distance run scoreboard players operation @s phmS.x.1 += #entity phmS.x.2
    execute store result entity 4fe002bb-0-0-0-1 Pos[1] double 0.01 store result score #phmH.2 phmS.y.1 run scoreboard players operation @s phmS.y.1 += #entity phmS.y.2
    execute store result entity 4fe002bb-0-0-0-1 Pos[2] double 0.01 store result score #phmH.2 phmS.z.1 run scoreboard players operation @s phmS.z.1 += #entity phmS.z.2
    # 正規化
    execute as 4fe002bb-0-0-0-1 positioned 0. 0. 0. facing entity @s feet run tp @s ^ ^ ^1 ~ ~
    execute store result score #phmH.2 phmS.x.2 run data get entity 4fe002bb-0-0-0-1 Pos[0] 100
    execute store result score #phmH.2 phmS.y.2 run data get entity 4fe002bb-0-0-0-1 Pos[1] 100
    execute store result score #phmH.2 phmS.z.2 run data get entity 4fe002bb-0-0-0-1 Pos[2] 100
    # 計算
    execute if score #entity phmS.distance matches ..-1 run scoreboard players operation #entity phmS.distance *= #c-1 _
    execute if score #phmH.2 phmS.y.1 matches ..-1 run scoreboard players operation #phmH.2 phmS.y.1 *= #c-1 _
    execute if score #phmH.2 phmS.z.1 matches ..-1 run scoreboard players operation #phmH.2 phmS.z.1 *= #c-1 _
    execute if score #phmH.2 phmS.x.2 matches ..-1 run scoreboard players operation #phmH.2 phmS.x.2 *= #c-1 _
    execute if score #phmH.2 phmS.y.2 matches ..-1 run scoreboard players operation #phmH.2 phmS.y.2 *= #c-1 _
    execute if score #phmH.2 phmS.z.2 matches ..-1 run scoreboard players operation #phmH.2 phmS.z.2 *= #c-1 _
    scoreboard players operation #entity phmS.distance > #phmH.2 phmS.y.1
    scoreboard players operation #entity phmS.distance > #phmH.2 phmS.z.1
    scoreboard players operation #phmH.2 phmS.x.2 > #phmH.2 phmS.y.2
    scoreboard players operation #phmH.2 phmS.x.2 > #phmH.2 phmS.z.2
    scoreboard players operation #entity phmS.distance *= #c100 _
    scoreboard players operation #entity phmS.distance /= #phmH.2 phmS.x.2
    scoreboard players operation #entity phmS.distance *= #phmH.1 phmS.time
    scoreboard players operation #entity phmS.distance /= #c1000 _