#> pm_motion:add
# 速度を加算する
# 実行時の向きが方向となる
# @public

## 入力の取得
    data modify storage pm_motion:zz in set value {velocity:0.5f}
    data modify storage pm_motion:zz in merge from storage pm_motion: in

## データを設定
    # 初速
    execute store result score #pmmH.1 pmmS.x.1 run data get storage pm_motion:zz in.velocity 100
    execute positioned 0. 0. 0. run tp 4fe002bb-0-0-0-1 ^ ^ ^1
    data modify storage pm_motion:zz _.pos set from entity 4fe002bb-0-0-0-1 Pos
    execute store result score #pmmH.2 pmmS.x.1 run data get storage pm_motion:zz _.pos[0] 1000
    execute store result score #pmmH.2 pmmS.y.1 run data get storage pm_motion:zz _.pos[1] 1000
    execute store result score #pmmH.2 pmmS.z.1 run data get storage pm_motion:zz _.pos[2] 1000
    scoreboard players operation #pmmH.2 pmmS.x.1 *= #pmmH.1 pmmS.x.1
    scoreboard players operation #pmmH.2 pmmS.y.1 *= #pmmH.1 pmmS.x.1
    scoreboard players operation #pmmH.2 pmmS.z.1 *= #pmmH.1 pmmS.x.1
    scoreboard players operation #pmmH.2 pmmS.x.1 /= #c1000 _
    scoreboard players operation #pmmH.2 pmmS.y.1 /= #c1000 _
    scoreboard players operation #pmmH.2 pmmS.z.1 /= #c1000 _
    scoreboard players operation @s pmmS.x.1 += #pmmH.2 pmmS.x.1
    scoreboard players operation @s pmmS.y.1 += #pmmH.2 pmmS.y.1
    scoreboard players operation @s pmmS.z.1 += #pmmH.2 pmmS.z.1