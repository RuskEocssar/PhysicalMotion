#> zz.pm_motion:tick_entity
# 定義/初期設定
# #pmmH.1->定数 #pmmH.3->計算用 #pmmH.1/time->イテレーション時間
# #entity/1->加速度 #entity/2->再計算加速度 #entity/time->イテレーション回数
# @within
#   function zz.pm_motion:**

## データを取得する
    data modify storage pm_motion:zz data set from entity @s data.pmm
    execute store result score #pmmH.1 pmmS.1 run data get storage pm_motion:zz data.c_reflect 1000
    execute store result score #pmmH.1 pmmS.2 run data get storage pm_motion:zz data.c_friction 1000
    execute store result score #pmmH.1 pmmS.3 run data get storage pm_motion:zz data.min_velocity 100

## 加速度計算用
    # リセット (加速度)
    scoreboard players set #entity pmmS.x.1 0
    execute store result score #entity pmmS.y.1 run data get storage pm_motion:zz data.gravity -100
    scoreboard players set #entity pmmS.z.1 0
    # リセット (加速度 再計算分)
    scoreboard players set #entity pmmS.x.2 0
    scoreboard players set #entity pmmS.y.2 0
    scoreboard players set #entity pmmS.z.2 0

## 移動を実行
    # スコアリセット
    scoreboard players set #entity pmmS. 0
    scoreboard players set #entity pmmS.time 50
    scoreboard players operation #pmmH.1 pmmS.time = #entity pmmS.time
    # 実行
    execute at @s run function zz.pm_motion:move/main

## 終了
    # 時間
    scoreboard players remove @s pmmS.time 1
    execute if score @s pmmS.time matches ..0 run scoreboard players set #entity pmmS. 3
    # 条件を満たした場合
    execute if score #entity pmmS. matches 1.. run function zz.pm_motion:end