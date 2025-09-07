#> zz.pm_motion:rotate/main
# エンティティの移動方向を実行時の向きに回す
# @within
#   function zz.pm_motion:**

## データを設定
    # 向き
    data modify storage pm_motion:zz _.pos set value [0d,0d,0d]
    execute store result storage pm_motion:zz _.pos[0] double 0.01 run scoreboard players get #pmmH.2 pmmS.x.1
    execute store result storage pm_motion:zz _.pos[1] double 0.01 run scoreboard players get #pmmH.2 pmmS.y.1
    execute store result storage pm_motion:zz _.pos[2] double 0.01 run scoreboard players get #pmmH.2 pmmS.z.1
    data modify entity @s Pos set from storage pm_motion:zz _.pos
    # 正規化
    execute positioned 0. 0. 0. facing entity @s feet run tp @s ^ ^ ^1 ~ ~
    data modify storage pm_motion:zz _.pos set from entity @s Pos
    execute store result score #pmmH.2 pmmS.x.2 run data get storage pm_motion:zz _.pos[0] 100
    execute store result score #pmmH.2 pmmS.y.2 run data get storage pm_motion:zz _.pos[1] 100
    execute store result score #pmmH.2 pmmS.z.2 run data get storage pm_motion:zz _.pos[2] 100
    # 内積の計算
    scoreboard players operation #pmmH.2 pmmS.x.2 *= #pmmH.2 pmmS.x.1
    scoreboard players operation #pmmH.2 pmmS.y.2 *= #pmmH.2 pmmS.y.1
    scoreboard players operation #pmmH.2 pmmS.z.2 *= #pmmH.2 pmmS.z.1
    scoreboard players operation #pmmH.2 pmmS.x.2 += #pmmH.2 pmmS.y.2
    scoreboard players operation #pmmH.2 pmmS.x.2 += #pmmH.2 pmmS.z.2
    scoreboard players operation #pmmH.2 pmmS.x.2 /= #c100 _
    # 向きを回転させる
    execute positioned 0. 0. 0. run tp @s ^ ^ ^1 ~ ~
    data modify storage pm_motion:zz _.pos set from entity @s Pos