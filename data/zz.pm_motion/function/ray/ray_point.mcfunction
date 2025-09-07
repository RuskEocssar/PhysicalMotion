#> zz.pm_motion:ray/ray_point
# 視線上を探査
# @within
#   function zz.pm_motion:**

## 探査
    # ヒットの方向を取得する
    execute if score @s pmmS.x.1 matches 1.. if block ~ ~ ~ #zz.pm_motion:through unless block ~0.5 ~ ~ #zz.pm_motion:through store success score #pmmH.root pmmS. run data modify storage pm_motion:zz _.hit.x+ set value 1b
    execute if score @s pmmS.x.1 matches ..-1 if block ~ ~ ~ #zz.pm_motion:through unless block ~-0.5 ~ ~ #zz.pm_motion:through store success score #pmmH.root pmmS. run data modify storage pm_motion:zz _.hit.x- set value 1b
    execute if score @s pmmS.y.1 matches 1.. if block ~ ~ ~ #zz.pm_motion:through unless block ~ ~0.5 ~ #zz.pm_motion:through store success score #pmmH.root pmmS. run data modify storage pm_motion:zz _.hit.y+ set value 1b
    execute if score @s pmmS.y.1 matches ..-1 if block ~ ~ ~ #zz.pm_motion:through unless block ~ ~-0.5 ~ #zz.pm_motion:through store success score #pmmH.root pmmS. run data modify storage pm_motion:zz _.hit.y- set value 1b
    execute if score @s pmmS.z.1 matches 1.. if block ~ ~ ~ #zz.pm_motion:through unless block ~ ~ ~0.5 #zz.pm_motion:through store success score #pmmH.root pmmS. run data modify storage pm_motion:zz _.hit.z+ set value 1b
    execute if score @s pmmS.z.1 matches ..-1 if block ~ ~ ~ #zz.pm_motion:through unless block ~ ~ ~-0.5 #zz.pm_motion:through store success score #pmmH.root pmmS. run data modify storage pm_motion:zz _.hit.z- set value 1b
    # 探査を終了しない
    execute if score #pmmH.root pmmS. matches 0 run return fail
    # 移動
    execute if data storage pm_motion:zz data{rotate:true} run tp @s ~ ~ ~ ~ ~
    execute if data storage pm_motion:zz data{rotate:false} run tp @s ~ ~ ~
    # 計算時間の再計算
    scoreboard players operation #entity pmmS.time *= #pmmH.1 pmmS.distance
    scoreboard players operation #entity pmmS.time /= #entity pmmS.distance
    scoreboard players operation #pmmH.1 pmmS.time -= #entity pmmS.time
    execute if score #pmmH.1 pmmS.time matches ..-1 run scoreboard players set #entity pmmS.time 0
    scoreboard players operation #pmmH.2 pmmS.time = #pmmH.1 pmmS.time
    # 移動距離の減算
    scoreboard players operation @s pmmS.distance += #pmmH.1 pmmS.distance
    scoreboard players operation @s pmmS.distance -= #entity pmmS.distance
    execute if score @s pmmS.distance matches ..0 run scoreboard players set @s pmmS.time 0
    # 探査の停止
    scoreboard players set #pmmH.ray064 pmmS. -2
    scoreboard players set #pmmH.ray032 pmmS. -2
    scoreboard players set #pmmH.ray016 pmmS. -2
    scoreboard players set #pmmH.ray008 pmmS. -2
    scoreboard players set #pmmH.ray004 pmmS. -2
    scoreboard players set #pmmH.ray002 pmmS. -2
    scoreboard players set #pmmH.1 pmmS.distance -129