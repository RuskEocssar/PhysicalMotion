#> zz.pm_motion:move/hit
# 視線上を探査
# @within
#   function zz.pm_motion:**

## 探査
    # 反射
    execute if score @s pmmS.count matches 1.. if score #pmmH.root pmmS. matches 1.. run function zz.pm_motion:reflect/main
    # イベントの実行
    execute if score #pmmH.root pmmS. matches 1 unless data storage pm_motion:zz data.events{hit_block:""} run function zz.pm_motion:ray/macro/hit_block with storage pm_motion:zz data.events
    execute if score #pmmH.root pmmS. matches 2 unless data storage pm_motion:zz data.events{hit_entity:""} run function zz.pm_motion:ray/macro/hit_entity with storage pm_motion:zz data.events
    execute if score #pmmH.root pmmS. matches 1..2 unless data storage pm_motion:zz data.events{hit_every:""} run function zz.pm_motion:ray/macro/hit_every with storage pm_motion:zz data.events
    execute if score #pmmH.root pmmS. matches 1..2 if score @s pmmS.count matches 0 run function zz.pm_motion:move/hit_last
    # 後処理
    execute positioned ~-0.5 ~-0.5 ~-0.5 run tag @e[tag=pmmT.hitted,dx=0,dy=0,dz=0] remove pmmT.hitted