#> pm_motion:motion
# エンティティにモーションを付与する (プレイヤー以外)
# 実行時の向きが方向となる
# @public

## 入力の取得
    data modify storage pm_motion:zz in set value {\
        gravity:9.8f,  velocity:20f,\
        c_drag:0.4f,    c_ldrag:1.6f,       c_reflect:0.8f, c_friction:0.7f,\
        max_time:200,   max_distance:150,   max_reflect:5,  min_velocity:0.001f,    time_scale:75,\
        rotate:true, size:0, kill:"none", entity:true, block:true,\
        events:{trail:"",hit_every:"",hit_entity:"",hit_block:"",hit_last:"",last:""},\
    }
    data modify storage pm_motion:zz in merge from storage pm_motion: in

## データを設定
    # パラメータの保存
    data modify entity @s data.pmm set from storage pm_motion:zz in
    # 初速
    execute store result score #pmmH.1 pmmS.x.1 run data get storage pm_motion:zz in.velocity 100
    execute positioned 0. 0. 0. run tp 4fe002bb-0-0-0-1 ^ ^ ^1
    data modify storage pm_motion:zz _.pos set from entity 4fe002bb-0-0-0-1 Pos
    execute store result score @s pmmS.x.1 run data get storage pm_motion:zz _.pos[0] 1000
    execute store result score @s pmmS.y.1 run data get storage pm_motion:zz _.pos[1] 1000
    execute store result score @s pmmS.z.1 run data get storage pm_motion:zz _.pos[2] 1000
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