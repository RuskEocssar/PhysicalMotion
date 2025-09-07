#> zz.pm_motion:ray/008
# 視線上を探査
# @within
#   function zz.pm_motion:**

## 探査
    scoreboard players set #pmmH.ray008 pmmS. 1
    # 角8方向に探査点を伸ばしてチェック
    execute positioned ^ ^ ^0.04 if block ~0.04 ~0.04 ~0.04 #zz.pm_motion:through if block ~0.04 ~0.04 ~-0.04 #zz.pm_motion:through if block ~0.04 ~-0.04 ~0.04 #zz.pm_motion:through if block ~0.04 ~-0.04 ~-0.04 #zz.pm_motion:through if block ~-0.04 ~0.04 ~0.04 #zz.pm_motion:through if block ~0.04 ~0.04 ~-0.04 #zz.pm_motion:through if block ~-0.04 ~-0.04 ~0.04 #zz.pm_motion:through if block ~-0.04 ~-0.04 ~-0.04 #zz.pm_motion:through run scoreboard players set #pmmH.ray008 pmmS. -1
    execute if score #pmmH.ray008 pmmS. matches -1 positioned ^ ^ ^0.04 positioned ~-0.04 ~-0.04 ~-0.04 as @e[type=!#zz.pm_motion:through,tag=!pmmT.through,dx=0,dy=0,dz=0] positioned ~-0.92 ~-0.92 ~-0.92 if entity @s[dx=0,dy=0,dz=0] run function zz.pm_motion:ray/entity/008
    execute if data storage pm_motion:zz data{size:3} if score #pmmH.ray008 pmmS. matches 1 run function zz.pm_motion:ray/ray_point
    # さらに細かくチェック
    execute if score #pmmH.ray008 pmmS. matches 1 run function zz.pm_motion:ray/004
    scoreboard players remove #pmmH.1 pmmS.distance 4
    execute if score #pmmH.1 pmmS.distance matches 1.. if score #pmmH.ray008 pmmS. matches 1 positioned ^ ^ ^0.04 run function zz.pm_motion:ray/004
    scoreboard players add #pmmH.1 pmmS.distance 4