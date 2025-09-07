#> zz.pm_motion:move/hit
# 視線上を探査
# @within
#   function zz.pm_motion:**

## 探査
    # 反射
    scoreboard players operation #pmmH. pmmS.count = @s pmmS.count
    execute if score @s pmmS.count matches 1.. run function zz.pm_motion:reflect/main
    # イベントの実行
    execute unless data storage pm_motion:zz _.hit{x+:0b,x-:0b,y+:0b,y-:0b,z+:0b,z-:0b} run function zz.pm_motion:ray/macro/hit_block with storage pm_motion:zz data.events
    execute if data storage pm_motion:zz _.hit{entity:1b} run function zz.pm_motion:ray/macro/hit_entity with storage pm_motion:zz data.events
    execute unless data storage pm_motion:zz data.events{hit_every:""} run function zz.pm_motion:ray/macro/hit_every with storage pm_motion:zz data.events
    execute if score #pmmH. pmmS.count matches 0 run function zz.pm_motion:move/hit_last
    # 後処理
    tag @e[tag=pmmT.hitted] remove pmmT.hitted