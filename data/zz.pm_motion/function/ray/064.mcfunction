#> zz.pm_motion:ray/064
# 視線上を探査
# @within
#   function zz.pm_motion:**

## 探査
    scoreboard players set #pmmH.ray064 pmmS. 0
    scoreboard players operation #pmmH.2 pmmS.distance = #pmmH.1 pmmS.distance
    # 角8方向に探査点を伸ばしてチェック (手前の1点はスキップ)
    execute if score #pmmH.2 pmmS.distance matches 0..63 run scoreboard players set #pmmH.ray064 pmmS. 1
    execute if score #pmmH.ray064 pmmS. matches 0 positioned ^ ^ ^0.32 if block ^ ^ ^0.32 #zz.pm_motion:through rotated ~180 ~ if block ^ ^ ^0.32 #zz.pm_motion:through if block ^ ^ ^-0.32 #zz.pm_motion:through rotated as 4fe002bb-0-0-0-1 if block ^ ^ ^0.32 #zz.pm_motion:through if block ^ ^ ^-0.32 #zz.pm_motion:through rotated ~180 ~ if block ^ ^ ^0.32 #zz.pm_motion:through if block ^ ^ ^-0.32 #zz.pm_motion:through run scoreboard players set #pmmH.ray064 pmmS. -1
    execute if score #pmmH.ray064 pmmS. matches -1 positioned ^ ^ ^0.32 positioned ~-0.32 ~-0.32 ~-0.32 as @e[tag=!root,dx=0,dy=0,dz=0] positioned ~-0.36 ~-0.36 ~-0.36 if entity @s[dx=0,dy=0,dz=0] run scoreboard players set #pmmH.ray064 pmmS. 1
    # ブロックがあったらさらに細かくチェック
    execute if score #pmmH.ray064 pmmS. matches 0.. run function zz.pm_motion:ray/032
    scoreboard players remove #pmmH.2 pmmS.distance 32
    execute if score #pmmH.2 pmmS.distance matches 1.. if score #pmmH.ray064 pmmS. matches 0.. positioned ^ ^ ^0.32 run function zz.pm_motion:ray/032
    
## ループ
    # パーティクル
    execute unless data storage pm_motion:zz/core data{trail:""} run function zz.pm_motion:ray/trail with storage pm_motion:zz/core data
    # 先に進む
    scoreboard players remove #pmmH.1 pmmS.distance 64
    execute if score #pmmH.1 pmmS.distance matches 1.. positioned ^ ^ ^0.64 run function zz.pm_motion:ray/064