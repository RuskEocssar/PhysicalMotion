#> zz.pm_motion:ray/064
# 視線上を探査
# @within
#   function zz.pm_motion:**

## 探査
    scoreboard players set #pmmH.ray064 pmmS. 1
    # 角8方向に探査点を伸ばしてチェック
    execute positioned ^ ^ ^0.32 if block ~0.32 ~0.32 ~0.32 #zz.pm_motion:through if block ~0.32 ~0.32 ~-0.32 #zz.pm_motion:through if block ~0.32 ~-0.32 ~0.32 #zz.pm_motion:through if block ~0.32 ~-0.32 ~-0.32 #zz.pm_motion:through if block ~-0.32 ~0.32 ~0.32 #zz.pm_motion:through if block ~0.32 ~0.32 ~-0.32 #zz.pm_motion:through if block ~-0.32 ~-0.32 ~0.32 #zz.pm_motion:through if block ~-0.32 ~-0.32 ~-0.32 #zz.pm_motion:through run scoreboard players set #pmmH.ray064 pmmS. -1
    execute if score #pmmH.ray064 pmmS. matches -1 positioned ^ ^ ^0.32 positioned ~-0.32 ~-0.32 ~-0.32 as @e[type=!#zz.pm_motion:through,dx=0,dy=0,dz=0] positioned ~-0.36 ~-0.36 ~-0.36 if entity @s[dx=0,dy=0,dz=0] positioned ~0.18 ~0.18 ~0.18 positioned ^ ^ ^-0.82 unless entity @s[dx=0,dy=0,dz=0] run function zz.pm_motion:ray/entity/064
    execute if data storage pm_motion:zz data{size:6} if score #pmmH.ray064 pmmS. matches 1 run function zz.pm_motion:ray/ray_point
    # さらに細かくチェック
    execute if score #pmmH.ray064 pmmS. matches 1 run function zz.pm_motion:ray/032
    scoreboard players remove #pmmH.1 pmmS.distance 32
    execute if score #pmmH.1 pmmS.distance matches 1.. if score #pmmH.ray064 pmmS. matches 1 positioned ^ ^ ^0.32 run function zz.pm_motion:ray/032
    scoreboard players add #pmmH.1 pmmS.distance 32
    
## ループ
    # パーティクル
    execute unless data storage pm_motion:zz data.events{trail:""} run function zz.pm_motion:ray/macro/trail with storage pm_motion:zz data.events
    # 先に進む
    scoreboard players remove #pmmH.1 pmmS.distance 64
    execute if score #pmmH.1 pmmS.distance matches 1.. positioned ^ ^ ^0.64 run function zz.pm_motion:ray/064