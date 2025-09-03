#> pm_motion:motion
# エンティティにモーションを付与する (プレイヤー以外)
# 実行時の向きが方向となる
# @public

## 入力の取得
    data modify storage pm_motion:zz in set from storage pm_motion: in_default
    data modify storage pm_motion:zz in merge from storage pm_motion: in

## idを設定
    execute unless score @s pmmS.id matches 1.. run function zz.pm_motion:id

## データを設定
    # パラメータの保存
    data modify entity @s data.pmm set from storage pm_motion:zz in
    # 初速
    execute store result score #pmmH.1 pmmS.x.1 run data get storage pm_motion:zz in.velocity 100
    execute positioned 0. 0. 0. run tp 4fe002bb-0-0-0-1 ^ ^ ^1
    execute store result score @s pmmS.x.1 run data get entity 4fe002bb-0-0-0-1 Pos[0] 1000
    execute store result score @s pmmS.y.1 run data get entity 4fe002bb-0-0-0-1 Pos[1] 1000
    execute store result score @s pmmS.z.1 run data get entity 4fe002bb-0-0-0-1 Pos[2] 1000
    scoreboard players operation @s pmmS.x.1 *= #pmmH.1 pmmS.x.1
    scoreboard players operation @s pmmS.y.1 *= #pmmH.1 pmmS.x.1
    scoreboard players operation @s pmmS.z.1 *= #pmmH.1 pmmS.x.1
    scoreboard players operation @s pmmS.x.1 /= #c1000 _
    scoreboard players operation @s pmmS.y.1 /= #c1000 _
    scoreboard players operation @s pmmS.z.1 /= #c1000 _
    # その他
    execute store result score @s pmmS.time run data get storage pm_motion:zz in.max_time
    execute store result score @s pmmS.distance run data get storage pm_motion:zz in.max_distance 100
    execute store result score @s pmmS.count run data get storage pm_motion:zz in.max_reflect

## 常時実行を開始
    tag @s add pmmT.motion
    schedule function zz.pm_motion:tick 1t