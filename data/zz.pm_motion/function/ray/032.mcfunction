#> zz.pm_motion:ray/032
# 視線上を探査
# @within
#   function zz.pm_motion:**

## 探査
    scoreboard players set #pmmH.ray032 pmmS. 1
    # 角8方向に探査点を伸ばしてチェック
    execute if data storage pm_motion:zz data{block:false} run scoreboard players set #pmmH.ray032 pmmS. -1
    execute unless data storage pm_motion:zz data{block:false} positioned ^ ^ ^0.16 if block ~0.16 ~0.16 ~0.16 #zz.pm_motion:through if block ~0.16 ~0.16 ~-0.16 #zz.pm_motion:through if block ~0.16 ~-0.16 ~0.16 #zz.pm_motion:through if block ~0.16 ~-0.16 ~-0.16 #zz.pm_motion:through if block ~-0.16 ~0.16 ~0.16 #zz.pm_motion:through if block ~0.16 ~0.16 ~-0.16 #zz.pm_motion:through if block ~-0.16 ~-0.16 ~0.16 #zz.pm_motion:through if block ~-0.16 ~-0.16 ~-0.16 #zz.pm_motion:through run scoreboard players set #pmmH.ray032 pmmS. -1
    execute if score #pmmH.ray032 pmmS. matches -1 unless data storage pm_motion:zz data{entity:false} positioned ^ ^ ^0.16 positioned ~-0.16 ~-0.16 ~-0.16 as @e[type=!#zz.pm_motion:through,tag=!pm_through,dx=0,dy=0,dz=0] positioned ~-0.68 ~-0.68 ~-0.68 if entity @s[dx=0,dy=0,dz=0] positioned ~0.34 ~0.34 ~0.34 positioned ^ ^ ^-0.66 unless entity @s[dx=0,dy=0,dz=0] run function zz.pm_motion:ray/entity/032
    execute if data storage pm_motion:zz data{size:5} if score #pmmH.ray032 pmmS. matches 1 run function zz.pm_motion:ray/ray_point
    # さらに細かくチェック
    execute if score #pmmH.ray032 pmmS. matches 1 run function zz.pm_motion:ray/016
    scoreboard players remove #pmmH.1 pmmS.distance 16
    execute if score #pmmH.1 pmmS.distance matches 1.. if score #pmmH.ray032 pmmS. matches 1 positioned ^ ^ ^0.16 run function zz.pm_motion:ray/016
    scoreboard players add #pmmH.1 pmmS.distance 16