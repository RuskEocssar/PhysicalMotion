#> zz.pm_motion:move/hit
# 視線上を探査
# @within
#   function zz.pm_motion:**

## 探査
    # イベントの実行
    execute if data storage pm_motion:zz _.hit{x+:1b} positioned ~0.5 ~ ~ align xyz positioned ~0.5 ~0.5 ~0.5 run function zz.pm_motion:ray/macro/hit_block with storage pm_motion:zz data.events
    execute if data storage pm_motion:zz _.hit{x-:1b} positioned ~-0.5 ~ ~ align xyz positioned ~0.5 ~0.5 ~0.5 run function zz.pm_motion:ray/macro/hit_block with storage pm_motion:zz data.events
    execute if data storage pm_motion:zz _.hit{y+:1b} positioned ~ ~0.5 ~ align xyz positioned ~0.5 ~0.5 ~0.5 run function zz.pm_motion:ray/macro/hit_block with storage pm_motion:zz data.events
    execute if data storage pm_motion:zz _.hit{y-:1b} positioned ~ ~-0.5 ~ align xyz positioned ~0.5 ~0.5 ~0.5 run function zz.pm_motion:ray/macro/hit_block with storage pm_motion:zz data.events
    execute if data storage pm_motion:zz _.hit{z+:1b} positioned ~ ~ ~0.5 align xyz positioned ~0.5 ~0.5 ~0.5 run function zz.pm_motion:ray/macro/hit_block with storage pm_motion:zz data.events
    execute if data storage pm_motion:zz _.hit{z-:1b} positioned ~ ~ ~-0.5 align xyz positioned ~0.5 ~0.5 ~0.5 run function zz.pm_motion:ray/macro/hit_block with storage pm_motion:zz data.events
    execute if data storage pm_motion:zz _.hit{entity:1b} run function zz.pm_motion:ray/macro/hit_entity with storage pm_motion:zz data.events
    execute unless data storage pm_motion:zz data.events{hit_every:""} run function zz.pm_motion:ray/macro/hit_every with storage pm_motion:zz data.events
    execute if score @s pmmS.count matches 0 run function zz.pm_motion:move/hit_last
    # 反射
    execute if score @s pmmS.count matches 1.. run function zz.pm_motion:reflect/main
    # 後処理
    tag @e[tag=entity.hitted] remove entity.hitted