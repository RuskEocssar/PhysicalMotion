#> zz.pm_motion:ray/002
# 視線上を探査
# @within
#   function zz.pm_motion:**

## 探査
    scoreboard players set #pmmH.ray002 pmmS. 0
    # 角8方向に探査点を伸ばしてチェック (手前の1点はスキップ)
    execute if score #pmmH.2 pmmS.distance matches 0..1 run scoreboard players set #pmmH.ray002 pmmS. 1
    execute if score #pmmH.ray002 pmmS. matches 0 positioned ^ ^ ^0.01 if block ^ ^ ^0.01 #zz.pm_motion:through rotated ~180 ~ if block ^ ^ ^0.01 #zz.pm_motion:through if block ^ ^ ^-0.01 #zz.pm_motion:through rotated as 4fe001bb-0-0-0-1 if block ^ ^ ^0.01 #zz.pm_motion:through if block ^ ^ ^-0.01 #zz.pm_motion:through rotated ~180 ~ if block ^ ^ ^0.01 #zz.pm_motion:through if block ^ ^ ^-0.01 #zz.pm_motion:through run scoreboard players set #pmmH.ray002 pmmS. -1
    execute if score #pmmH.ray002 pmmS. matches -1 positioned ^ ^ ^0.01 positioned ~-0.01 ~-0.01 ~-0.01 as @e[tag=!root,dx=0,dy=0,dz=0] positioned ~-0.98 ~-0.98 ~-0.98 if entity @s[dx=0,dy=0,dz=0] run scoreboard players set #pmmH.ray002 pmmS. 1
    # ブロックがあったらさらに細かくチェック
    execute if score #pmmH.ray002 pmmS. matches 0.. run function zz.pm_motion:ray/001
    scoreboard players remove #pmmH.2 pmmS.distance 1
    execute if score #pmmH.2 pmmS.distance matches 1.. if score #pmmH.ray002 pmmS. matches 0.. positioned ^ ^ ^0.01 run function zz.pm_motion:ray/001