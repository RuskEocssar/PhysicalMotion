#> zz.pm_motion:ray/001
# 視線上を探査
# @within
#   function zz.pm_motion:**

## 探査
    scoreboard players set #pmmH.ray001 pmmS. 1
    # 角8方向に探査点を伸ばしてチェック (手前の1点はスキップ)
    execute if score #pmmH.2 pmmS.distance matches 0 run scoreboard players set #pmmH.ray008 pmmS. 0
    execute if score #pmmH.ray008 pmmS. matches 1 positioned ^ ^ ^0.005 if block ^ ^ ^0.005 #zz.pm_motion:through rotated ~180 ~ if block ^ ^ ^0.005 #zz.pm_motion:through if block ^ ^ ^-0.005 #zz.pm_motion:through rotated as 4fe001bb-0-0-0-1 if block ^ ^ ^0.005 #zz.pm_motion:through if block ^ ^ ^-0.005 #zz.pm_motion:through rotated ~180 ~ if block ^ ^ ^0.005 #zz.pm_motion:through if block ^ ^ ^-0.005 #zz.pm_motion:through run scoreboard players set #pmmH.ray001 pmmS. -1
    execute if score #pmmH.ray001 pmmS. matches -1 positioned ^ ^ ^0.005 positioned ~-0.005 ~-0.005 ~-0.005 as @e[tag=!root,dx=0,dy=0,dz=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0,dy=0,dz=0] run function zz.pm_motion:ray/hitted
    # 探査の停止
    execute if score #pmmH.ray001 pmmS. matches 0..2 run function zz.pm_motion:ray/hit