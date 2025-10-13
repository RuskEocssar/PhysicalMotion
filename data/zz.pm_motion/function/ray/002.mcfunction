#> zz.pm_motion:ray/002
# 視線上を探査
# @within
#   function zz.pm_motion:**

## 探査
    scoreboard players set #pmmH.ray002 pmmS. 1
    # 角8方向に探査点を伸ばしてチェック
    execute if data storage pm_motion:zz data{block:false} run scoreboard players set #pmmH.ray002 pmmS. -1
    execute unless data storage pm_motion:zz data{block:false} positioned ^ ^ ^0.01 if block ~0.01 ~0.01 ~0.01 #zz.pm_motion:through if block ~0.01 ~0.01 ~-0.01 #zz.pm_motion:through if block ~0.01 ~-0.01 ~0.01 #zz.pm_motion:through if block ~0.01 ~-0.01 ~-0.01 #zz.pm_motion:through if block ~-0.01 ~0.01 ~0.01 #zz.pm_motion:through if block ~0.01 ~0.01 ~-0.01 #zz.pm_motion:through if block ~-0.01 ~-0.01 ~0.01 #zz.pm_motion:through if block ~-0.01 ~-0.01 ~-0.01 #zz.pm_motion:through run scoreboard players set #pmmH.ray002 pmmS. -1
    execute if score #pmmH.ray002 pmmS. matches -1 unless data storage pm_motion:zz data{entity:false} positioned ^ ^ ^0.01 positioned ~-0.01 ~-0.01 ~-0.01 as @e[type=!#zz.pm_motion:through,tag=!pm_through,dx=0,dy=0,dz=0] positioned ~-0.98 ~-0.98 ~-0.98 if entity @s[dx=0,dy=0,dz=0] positioned ~0.49 ~0.49 ~0.49 positioned ^ ^ ^-0.51 unless entity @s[dx=0,dy=0,dz=0] run function zz.pm_motion:ray/entity/002
    execute if data storage pm_motion:zz data{size:1} if score #pmmH.ray002 pmmS. matches 1 run function zz.pm_motion:ray/ray_point
    # さらに細かくチェック
    execute if score #pmmH.ray002 pmmS. matches 1 run function zz.pm_motion:ray/001
    scoreboard players remove #pmmH.1 pmmS.distance 1
    execute if score #pmmH.1 pmmS.distance matches 1.. if score #pmmH.ray002 pmmS. matches 1 positioned ^ ^ ^0.01 run function zz.pm_motion:ray/001
    scoreboard players add #pmmH.1 pmmS.distance 1