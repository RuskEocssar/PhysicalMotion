#> pm_motion:rotate
# エンティティの移動方向を実行時の向きに回す
# @public

## データを設定
    scoreboard players operation #pmmH.2 pmmS.x.1 = @s pmmS.x.1
    scoreboard players operation #pmmH.2 pmmS.y.1 = @s pmmS.y.1
    scoreboard players operation #pmmH.2 pmmS.z.1 = @s pmmS.z.1
    execute as 4fe002bb-0-0-0-1 run function zz.pm_motion:rotate/main
    execute store result score @s pmmS.x.1 run data get storage pm_motion:zz _.pos[0] 100
    execute store result score @s pmmS.y.1 run data get storage pm_motion:zz _.pos[1] 100
    execute store result score @s pmmS.z.1 run data get storage pm_motion:zz _.pos[2] 100
    # 速度を取得
    scoreboard players operation @s pmmS.x.1 *= #pmmH.2 pmmS.x.2
    scoreboard players operation @s pmmS.y.1 *= #pmmH.2 pmmS.x.2
    scoreboard players operation @s pmmS.z.1 *= #pmmH.2 pmmS.x.2
    scoreboard players operation @s pmmS.x.1 /= #c100 _
    scoreboard players operation @s pmmS.y.1 /= #c100 _
    scoreboard players operation @s pmmS.z.1 /= #c100 _