say zz.pm_motion:ray/hit_point
# 視線上を探査
# @within
#   function zz.pm_motion:**

## 探査
    # 移動
    execute if data storage pm_motion:zz data{rotate:true} run tp @s ~ ~ ~ ~ ~
    execute if data storage pm_motion:zz data{rotate:false} run tp @s ~ ~ ~
    # 計算時間の再計算
    scoreboard players operation #pmmH.1 pmmS.time *= #pmmH.1 pmmS.distance
    scoreboard players operation #pmmH.1 pmmS.time /= #entity pmmS.distance
    scoreboard players operation #entity pmmS.time -= #pmmH.1 pmmS.time
    # 衝突の検知
    execute if score #pmmH.ray001 pmmS. matches 1 unless data storage pm_motion:zz data.events{hit_block:""} run function zz.pm_motion:ray/macro/hit_block with storage pm_motion:zz data.events
    # execute if score #pmmH.ray001 pmmS. matches 2 unless data storage pm_motion:zz data.events{hit_entity:""} run function zz.pm_motion:ray/macro/hit_entity with storage pm_motion:zz data.events
    # execute if score #pmmH.ray001 pmmS. matches 1..2 unless data storage pm_motion:zz data.events{hit_every:""} run function zz.pm_motion:ray/macro/hit_every with storage pm_motion:zz data.events
    # execute if score #pmmH.ray001 pmmS. matches 1..2 if score @s pmmS.count matches 0 unless data storage pm_motion:zz data.events{hit_last:""} run function zz.pm_motion:ray/macro/hit_last with storage pm_motion:zz data.events
    # 反射
    # execute if score #pmmH.ray001 pmmS. matches 1..2 if score @s pmmS.count matches 1.. run function zz.pm_motion:reflect/main
    # 探査の停止
    scoreboard players set #pmmH.ray064 pmmS. -2
    scoreboard players set #pmmH.ray032 pmmS. -2
    scoreboard players set #pmmH.ray016 pmmS. -2
    scoreboard players set #pmmH.ray008 pmmS. -2
    scoreboard players set #pmmH.ray004 pmmS. -2
    scoreboard players set #pmmH.ray002 pmmS. -2
    scoreboard players set #pmmH.ray001 pmmS. -2
    scoreboard players set #pmmH.1 pmmS.distance -129
    # 後処理
    execute positioned ~-0.5 ~-0.5 ~-0.5 run tag @e[tag=pmmT.hitted,dx=0,dy=0,dz=0] remove pmmT.hitted
