#> zz.ph_motion:core/ray/064
# 視線上を探査
# @within
#   function zz.ph_motion:core/**

## 探査
    scoreboard players set #phmH.ray064 phmS. 0
    scoreboard players operation #phmH.2 phmS.distance = #phmH.1 phmS.distance
    # 角8方向に探査点を伸ばしてチェック (手前の1点はスキップ)
    execute if score #phmH.2 phmS.distance matches 0..63 run scoreboard players set #phmH.ray064 phmS. 1
    execute if score #phmH.ray064 phmS. matches 0 positioned ^ ^ ^0.32 if block ^ ^ ^0.32 #zz.ph_motion:through rotated ~180 ~ if block ^ ^ ^0.32 #zz.ph_motion:through if block ^ ^ ^-0.32 #zz.ph_motion:through rotated as 4fe002bb-0-0-0-1 if block ^ ^ ^0.32 #zz.ph_motion:through if block ^ ^ ^-0.32 #zz.ph_motion:through rotated ~180 ~ if block ^ ^ ^0.32 #zz.ph_motion:through if block ^ ^ ^-0.32 #zz.ph_motion:through run scoreboard players set #phmH.ray064 phmS. -1
    execute if score #phmH.ray064 phmS. matches -1 positioned ^ ^ ^0.32 positioned ~-0.32 ~-0.32 ~-0.32 as @e[tag=!root,dx=0,dy=0,dz=0] positioned ~-0.36 ~-0.36 ~-0.36 if entity @s[dx=0,dy=0,dz=0] run scoreboard players set #phmH.ray064 phmS. 1
    # ブロックがあったらさらに細かくチェック
    execute if score #phmH.ray064 phmS. matches 0.. run function zz.ph_motion:core/ray/032
    scoreboard players remove #phmH.2 phmS.distance 32
    execute if score #phmH.2 phmS.distance matches 1.. if score #phmH.ray064 phmS. matches 0.. positioned ^ ^ ^0.32 run function zz.ph_motion:core/ray/032
    
## ループ
    # パーティクル
    execute unless data storage ph_motion:zz/core data{trail:""} run function zz.ph_motion:core/ray/trail with storage ph_motion:zz/core data
    # 先に進む
    scoreboard players remove #phmH.1 phmS.distance 64
    execute if score #phmH.1 phmS.distance matches 1.. positioned ^ ^ ^0.64 run function zz.ph_motion:core/ray/064