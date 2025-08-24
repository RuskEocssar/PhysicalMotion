#> ph_motion:motion
# エンティティにモーションを付与する (プレイヤー以外)
# 実行時の向きが方向となる
# @public

## 入力の取得
    data modify storage ph_motion:zz/core in set from storage ph_motion: in_default
    data modify storage ph_motion:zz/core in merge from storage ph_motion: in

## データを設定
    # パラメータの保存
    data modify entity @s data.phm set from storage ph_motion:zz/core in
    # 初速
    execute store result score #phmH.1 phmS.x.1 run data get storage ph_motion:zz/core in.velocity 100
    execute positioned 0. 0. 0. run tp 4fe002bb-0-0-0-1 ^ ^ ^1
    execute store result score @s phmS.x.1 run data get entity 4fe002bb-0-0-0-1 Pos[0] 1000
    execute store result score @s phmS.y.1 run data get entity 4fe002bb-0-0-0-1 Pos[1] 1000
    execute store result score @s phmS.z.1 run data get entity 4fe002bb-0-0-0-1 Pos[2] 1000
    scoreboard players operation @s phmS.x.1 *= #phmH.1 phmS.x.1
    scoreboard players operation @s phmS.y.1 *= #phmH.1 phmS.x.1
    scoreboard players operation @s phmS.z.1 *= #phmH.1 phmS.x.1
    scoreboard players operation @s phmS.x.1 /= #c1000 _
    scoreboard players operation @s phmS.y.1 /= #c1000 _
    scoreboard players operation @s phmS.z.1 /= #c1000 _
    # その他
    execute store result score @s phmS.time run data get storage ph_motion:zz/core in.max_time
    execute store result score @s phmS.distance run data get storage ph_motion:zz/core in.max_distance 100
    execute store result score @s phmS.count run data get storage ph_motion:zz/core in.max_reflect

## 常時実行を開始
    tag @s add phmT.motion
    schedule function zz.ph_motion:core/tick 1t