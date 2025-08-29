#> zz.ph_motion:core/ray/008
# 視線上を探査
# @within
#   function zz.ph_motion:core/**

## 探査
    scoreboard players set #phmH.ray008 phmS. 0
    # 角8方向に探査点を伸ばしてチェック (手前の1点はスキップ)
    execute if score #phmH.2 phmS.distance matches 0..7 run scoreboard players set #phmH.ray008 phmS. 1
    execute if score #phmH.ray008 phmS. matches 0 positioned ^ ^ ^0.04 if block ^ ^ ^0.04 #zz.ph_motion:through rotated ~180 ~ if block ^ ^ ^0.04 #zz.ph_motion:through if block ^ ^ ^-0.04 #zz.ph_motion:through rotated as 4fe002bb-0-0-0-1 if block ^ ^ ^0.04 #zz.ph_motion:through if block ^ ^ ^-0.04 #zz.ph_motion:through rotated ~180 ~ if block ^ ^ ^0.04 #zz.ph_motion:through if block ^ ^ ^-0.04 #zz.ph_motion:through run scoreboard players set #phmH.ray008 phmS. -1
    execute if score #phmH.ray008 phmS. matches -1 positioned ^ ^ ^0.04 positioned ~-0.04 ~-0.04 ~-0.04 as @e[tag=!root,dx=0,dy=0,dz=0] positioned ~-0.92 ~-0.92 ~-0.92 if entity @s[dx=0,dy=0,dz=0] run scoreboard players set #phmH.ray008 phmS. 1
    # ブロックがあったらさらに細かくチェック
    execute if score #phmH.ray008 phmS. matches 0.. run function zz.ph_motion:core/ray/004
    scoreboard players remove #phmH.2 phmS.distance 4
    execute if score #phmH.2 phmS.distance matches 1.. if score #phmH.ray008 phmS. matches 0.. positioned ^ ^ ^0.04 run function zz.ph_motion:core/ray/004