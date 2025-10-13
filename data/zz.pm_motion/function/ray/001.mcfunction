#> zz.pm_motion:ray/001
# 視線上を探査
# @within
#   function zz.pm_motion:**

## 探査
    scoreboard players set #pmmH.ray001 pmmS. 1
    # 角8方向に探査点を伸ばしてチェック
    execute if data storage pm_motion:zz data{block:false} run scoreboard players set #pmmH.ray001 pmmS. -1
    execute unless data storage pm_motion:zz data{block:false} positioned ^ ^ ^0.005 if block ~0.005 ~0.005 ~0.005 #zz.pm_motion:through if block ~0.005 ~0.005 ~-0.005 #zz.pm_motion:through if block ~0.005 ~-0.005 ~0.005 #zz.pm_motion:through if block ~0.005 ~-0.005 ~-0.005 #zz.pm_motion:through if block ~-0.005 ~0.005 ~0.005 #zz.pm_motion:through if block ~0.005 ~0.005 ~-0.005 #zz.pm_motion:through if block ~-0.005 ~-0.005 ~0.005 #zz.pm_motion:through if block ~-0.005 ~-0.005 ~-0.005 #zz.pm_motion:through run scoreboard players set #pmmH.ray001 pmmS. -1
    execute if score #pmmH.ray001 pmmS. matches -1 unless data storage pm_motion:zz data{entity:false} positioned ^ ^ ^0.005 positioned ~-0.005 ~-0.005 ~-0.005 as @e[type=!#zz.pm_motion:through,tag=!pm_through,dx=0,dy=0,dz=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0,dy=0,dz=0] positioned ~0.495 ~0.495 ~0.495 positioned ^ ^ ^-0.505 unless entity @s[dx=0,dy=0,dz=0] run function zz.pm_motion:ray/entity/001
    # 判定
    execute if score #pmmH.ray001 pmmS. matches 1 run function zz.pm_motion:ray/ray_point