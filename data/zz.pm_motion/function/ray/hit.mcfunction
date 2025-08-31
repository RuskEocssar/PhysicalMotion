#> zz.pm_motion:ray/hit
# 視線上を探査
# @within
#   function zz.pm_motion:**

## 探査
    # 移動
    execute if data storage pm_motion:zz/core data{rotate:true} run tp @s ~ ~ ~ ~ ~
    execute if data storage pm_motion:zz/core data{rotate:false} run tp @s ~ ~ ~
    # 衝突の検知
    # execute if score #pmmH.ray001 pmmS. matches 1 unless data storage pm_motion:zz/core data.events{hit_block:""} run function zz.pm_motion:ray/hit_block with storage pm_motion:zz/core data.events
    # execute if score #pmmH.ray001 pmmS. matches 2 unless data storage pm_motion:zz/core data.events{hit_entity:""} run function zz.pm_motion:ray/hit_entity with storage pm_motion:zz/core data.events
    # execute if score #pmmH.ray001 pmmS. matches 1..2 unless data storage pm_motion:zz/core data.events{hit_every:""} run function zz.pm_motion:ray/hit_every with storage pm_motion:zz/core data.events
    # 反射
    execute if score #pmmH.ray001 pmmS. matches 1..2 if score @s pmmS.count matches 0 unless data storage pm_motion:zz/core data.events{hit_last:""} run function zz.pm_motion:ray/hit_last with storage pm_motion:zz/core data.events
    execute if score #pmmH.ray001 pmmS. matches 1..2 if score @s pmmS.count matches 1.. run function zz.pm_motion:reflect/main
    # 探査の停止
    scoreboard players set #pmmH.ray128 pmmS. -1
    scoreboard players set #pmmH.ray064 pmmS. -1
    scoreboard players set #pmmH.ray032 pmmS. -1
    scoreboard players set #pmmH.ray016 pmmS. -1
    scoreboard players set #pmmH.ray008 pmmS. -1
    scoreboard players set #pmmH.ray004 pmmS. -1
    scoreboard players set #pmmH.ray002 pmmS. -1
    scoreboard players set #pmmH.ray001 pmmS. -1
    scoreboard players set #pmmH.1 pmmS.distance -65
    # 後処理
    tag @e[tag=pmmT.hitted] remove pmmT.hitted