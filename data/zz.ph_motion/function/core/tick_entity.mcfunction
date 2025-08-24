#> zz.ph_motion:core/tick_entity
# 定義/初期設定
# #phmH.1->定数 #phmH.3->計算用 #phmH.1/time->イテレーション時間
# #entity/1->加速度 #entity/2->再計算加速度 #entity/time->イテレーション回数
# @within
#   function zz.ph_motion:core/**

## データを取得する
    data modify storage ph_motion:zz/core data set from entity @s data.phm
    execute store result score #phmH.1 phmS.1 run data get storage ph_motion:zz/core data.c_reflect 1000
    execute store result score #phmH.1 phmS.2 run data get storage ph_motion:zz/core data.c_friction 1000
    execute store result score #phmH.1 phmS.3 run data get storage ph_motion:zz/core data.min_velocity 100
    # リセット (加速度)
    scoreboard players set #entity phmS.x.1 0
    scoreboard players set #entity phmS.z.1 0
    # リセット (加速度 再計算分)
    scoreboard players set #entity phmS.x.2 0
    scoreboard players set #entity phmS.y.2 0
    scoreboard players set #entity phmS.z.2 0

## 初期加速度を計算
    # 重力加速度
    execute store result score #entity phmS.y.1 run data get storage ph_motion:zz/core data.gravity -100
    # 計算
    function zz.ph_motion:core/acc/main
    # イテレーション回数を計算
    scoreboard players operation #entity phmS.time = #entity phmS.x.2
    scoreboard players operation #phmH.2 phmS.y.1 = #entity phmS.y.2
    scoreboard players operation #phmH.2 phmS.z.1 = #entity phmS.z.2
    scoreboard players operation #entity phmS.time *= #entity phmS.x.2
    scoreboard players operation #phmH.2 phmS.y.1 *= #entity phmS.y.2
    scoreboard players operation #phmH.2 phmS.z.1 *= #entity phmS.z.2
    scoreboard players operation #entity phmS.time += #phmH.2 phmS.y.1
    scoreboard players operation #entity phmS.time += #phmH.2 phmS.z.1
    scoreboard players operation #entity phmS.time /= #c1000000 _
    execute if score #entity phmS.time matches ..0 run scoreboard players set #entity phmS.time 1
    # 積分時間の逆数
    scoreboard players set #phmH.1 phmS.time 20
    scoreboard players operation #phmH.1 phmS.time *= #entity phmS.time
    
## 移動を実行
    scoreboard players set #entity phmS. 0
    function zz.ph_motion:core/ray/main

## 終了
    # 時間
    scoreboard players remove @s phmS.time 1
    execute if score @s phmS.time matches ..0 run scoreboard players set #entity phmS. 3
    # 条件を満たした場合
    execute if score #entity phmS. matches 1.. run function zz.ph_motion:core/end