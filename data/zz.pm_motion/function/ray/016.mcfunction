#> zz.pm_motion:ray/016
# 視線上を探査
# @within
#   function zz.pm_motion:**

## 探査
    scoreboard players set #pmmH.ray016 pmmS. 1
    # 角8方向に探査点を伸ばしてチェック (手前の1点はスキップ)
    execute positioned ^ ^ ^0.08 if block ^ ^ ^0.08 #zz.pm_motion:through rotated ~180 ~ if block ^ ^ ^0.08 #zz.pm_motion:through if block ^ ^ ^-0.08 #zz.pm_motion:through rotated as 4fe002bb-0-0-0-1 if block ^ ^ ^0.08 #zz.pm_motion:through if block ^ ^ ^-0.08 #zz.pm_motion:through rotated ~180 ~ if block ^ ^ ^0.08 #zz.pm_motion:through if block ^ ^ ^-0.08 #zz.pm_motion:through run scoreboard players set #pmmH.ray016 pmmS. -1
    execute if score #pmmH.ray016 pmmS. matches -1 positioned ^ ^ ^0.08 positioned ~-0.08 ~-0.08 ~-0.08 as @e[type=!#zz.pm_motion:through,tag=!pmmT.through,dx=0,dy=0,dz=0] positioned ~-0.84 ~-0.84 ~-0.84 if entity @s[dx=0,dy=0,dz=0] run scoreboard players set #pmmH.ray016 pmmS. 2
    # さらに細かくチェック
    execute if score #pmmH.ray016 pmmS. matches 0.. run function zz.pm_motion:ray/008
    scoreboard players remove #pmmH.1 pmmS.distance 8
    execute if score #pmmH.1 pmmS.distance matches 1.. if score #pmmH.ray016 pmmS. matches 0.. positioned ^ ^ ^0.08 run function zz.pm_motion:ray/008
    scoreboard players add #pmmH.1 pmmS.distance 8