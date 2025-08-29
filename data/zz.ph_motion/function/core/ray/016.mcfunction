#> zz.ph_motion:core/ray/016
# 視線上を探査
# @within
#   function zz.ph_motion:core/**

## 探査
    scoreboard players set #phmH.ray016 phmS. 0
    # 角8方向に探査点を伸ばしてチェック (手前の1点はスキップ)
    execute if score #phmH.2 phmS.distance matches 0..15 run scoreboard players set #phmH.ray016 phmS. 1
    execute if score #phmH.ray016 phmS. matches 0 positioned ^ ^ ^0.08 if block ^ ^ ^0.08 #zz.ph_motion:through rotated ~180 ~ if block ^ ^ ^0.08 #zz.ph_motion:through if block ^ ^ ^-0.08 #zz.ph_motion:through rotated as 4fe002bb-0-0-0-1 if block ^ ^ ^0.08 #zz.ph_motion:through if block ^ ^ ^-0.08 #zz.ph_motion:through rotated ~180 ~ if block ^ ^ ^0.08 #zz.ph_motion:through if block ^ ^ ^-0.08 #zz.ph_motion:through run scoreboard players set #phmH.ray016 phmS. -1
    execute if score #phmH.ray016 phmS. matches -1 positioned ^ ^ ^0.08 positioned ~-0.08 ~-0.08 ~-0.08 as @e[tag=!root,dx=0,dy=0,dz=0] positioned ~-0.84 ~-0.84 ~-0.84 if entity @s[dx=0,dy=0,dz=0] run scoreboard players set #phmH.ray016 phmS. 1
    # ブロックがあったらさらに細かくチェック
    execute if score #phmH.ray016 phmS. matches 0.. run function zz.ph_motion:core/ray/008
    scoreboard players remove #phmH.2 phmS.distance 8
    execute if score #phmH.2 phmS.distance matches 1.. if score #phmH.ray016 phmS. matches 0.. positioned ^ ^ ^0.08 run function zz.ph_motion:core/ray/008