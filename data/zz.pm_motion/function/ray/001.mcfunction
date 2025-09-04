#> zz.pm_motion:ray/001
# 視線上を探査
# @within
#   function zz.pm_motion:**

## 探査
    scoreboard players set #pmmH.root pmmS. 0
    # 角8方向に探査点を伸ばしてチェック (手前の1点はスキップ)
    execute if score @s pmmS.x.1 matches 1.. if block ~ ~ ~ #zz.pm_motion:through unless block ~0.5 ~ ~ #zz.pm_motion:through store success score #pmmH.root pmmS. run data modify storage pm_motion:zz _.hit.x+ set value 1b
    execute if score @s pmmS.x.1 matches ..-1 if block ~ ~ ~ #zz.pm_motion:through unless block ~-0.5 ~ ~ #zz.pm_motion:through store success score #pmmH.root pmmS. run data modify storage pm_motion:zz _.hit.x- set value 1b
    execute if score @s pmmS.y.1 matches 1.. if block ~ ~ ~ #zz.pm_motion:through unless block ~ ~0.5 ~ #zz.pm_motion:through store success score #pmmH.root pmmS. run data modify storage pm_motion:zz _.hit.y+ set value 1b
    execute if score @s pmmS.y.1 matches ..-1 if block ~ ~ ~ #zz.pm_motion:through unless block ~ ~-0.5 ~ #zz.pm_motion:through store success score #pmmH.root pmmS. run data modify storage pm_motion:zz _.hit.y- set value 1b
    execute if score @s pmmS.z.1 matches 1.. if block ~ ~ ~ #zz.pm_motion:through unless block ~ ~ ~0.5 #zz.pm_motion:through store success score #pmmH.root pmmS. run data modify storage pm_motion:zz _.hit.z+ set value 1b
    execute if score @s pmmS.z.1 matches ..-1 if block ~ ~ ~ #zz.pm_motion:through unless block ~ ~ ~-0.5 #zz.pm_motion:through store success score #pmmH.root pmmS. run data modify storage pm_motion:zz _.hit.z- set value 1b
    execute if block ~ ~ ~ #zz.pm_motion:through run data modify storage pm_motion:zz _.hit.here set value 1b
    execute store result storage pm_motion:zz _.hit.pos[0] int 1 run scoreboard players get @s pmmS.x.1
    execute store result storage pm_motion:zz _.hit.pos[1] int 1 run scoreboard players get @s pmmS.y.1
    execute store result storage pm_motion:zz _.hit.pos[2] int 1 run scoreboard players get @s pmmS.z.1
    execute if score #pmmH.root pmmS. matches 0 positioned ^ ^ ^0.005 positioned ~-0.005 ~-0.005 ~-0.005 as @e[type=!#zz.pm_motion:through,tag=!pmmT.through,dx=0,dy=0,dz=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0,dy=0,dz=0] run function zz.pm_motion:ray/hitted_entity
    # 探査の停止
    execute if score #pmmH.root pmmS. matches 1.. run function zz.pm_motion:ray/ray_point