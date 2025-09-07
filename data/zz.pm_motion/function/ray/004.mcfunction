#> zz.pm_motion:ray/004
# 視線上を探査
# @within
#   function zz.pm_motion:**

## 探査
    scoreboard players set #pmmH.ray004 pmmS. 1
    # 角8方向に探査点を伸ばしてチェック
    execute positioned ^ ^ ^0.02 if block ~0.02 ~0.02 ~0.02 #zz.pm_motion:through if block ~0.02 ~0.02 ~-0.02 #zz.pm_motion:through if block ~0.02 ~-0.02 ~0.02 #zz.pm_motion:through if block ~0.02 ~-0.02 ~-0.02 #zz.pm_motion:through if block ~-0.02 ~0.02 ~0.02 #zz.pm_motion:through if block ~0.02 ~0.02 ~-0.02 #zz.pm_motion:through if block ~-0.02 ~-0.02 ~0.02 #zz.pm_motion:through if block ~-0.02 ~-0.02 ~-0.02 #zz.pm_motion:through run scoreboard players set #pmmH.ray004 pmmS. -1
    execute if score #pmmH.ray004 pmmS. matches -1 positioned ^ ^ ^0.02 positioned ~-0.02 ~-0.02 ~-0.02 as @e[type=!#zz.pm_motion:through,dx=0,dy=0,dz=0] positioned ~-0.96 ~-0.96 ~-0.96 if entity @s[dx=0,dy=0,dz=0] positioned ~0.48 ~0.48 ~0.48 positioned ^ ^ ^-0.52 unless entity @s[dx=0,dy=0,dz=0] run function zz.pm_motion:ray/entity/004
    execute if data storage pm_motion:zz data{size:2} if score #pmmH.ray004 pmmS. matches 1 run function zz.pm_motion:ray/ray_point
    # さらに細かくチェック
    execute if score #pmmH.ray004 pmmS. matches 1 run function zz.pm_motion:ray/002
    scoreboard players remove #pmmH.1 pmmS.distance 2
    execute if score #pmmH.1 pmmS.distance matches 1.. if score #pmmH.ray004 pmmS. matches 1 positioned ^ ^ ^0.02 run function zz.pm_motion:ray/002
    scoreboard players add #pmmH.1 pmmS.distance 2