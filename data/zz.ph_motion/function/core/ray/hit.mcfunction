#> zz.ph_motion:core/ray/hit
# 視線上を探査
# @within
#   function zz.ph_motion:core/**

## 探査
    # 移動
    execute if data storage ph_motion:zz/core data{rotate:true} run tp @s ~ ~ ~ ~ ~
    execute if data storage ph_motion:zz/core data{rotate:false} run tp @s ~ ~ ~
    # 衝突の検知
    # execute if score #phmH.ray001 phmS. matches 1 unless data storage ph_motion:zz/core data.events{hit_block:""} run function zz.ph_motion:core/ray/hit_block with storage ph_motion:zz/core data.events
    # execute if score #phmH.ray001 phmS. matches 2 unless data storage ph_motion:zz/core data.events{hit_entity:""} run function zz.ph_motion:core/ray/hit_entity with storage ph_motion:zz/core data.events
    # execute if score #phmH.ray001 phmS. matches 1..2 unless data storage ph_motion:zz/core data.events{hit_every:""} run function zz.ph_motion:core/ray/hit_every with storage ph_motion:zz/core data.events
    # 反射
    execute if score #phmH.ray001 phmS. matches 1..2 if score @s phmS.count matches 0 unless data storage ph_motion:zz/core data.events{hit_last:""} run function zz.ph_motion:core/ray/hit_last with storage ph_motion:zz/core data.events
    execute if score #phmH.ray001 phmS. matches 1..2 if score @s phmS.count matches 1.. run function zz.ph_motion:core/reflect/main
    # 探査の停止
    scoreboard players set #phmH.ray128 phmS. -1
    scoreboard players set #phmH.ray064 phmS. -1
    scoreboard players set #phmH.ray032 phmS. -1
    scoreboard players set #phmH.ray016 phmS. -1
    scoreboard players set #phmH.ray008 phmS. -1
    scoreboard players set #phmH.ray004 phmS. -1
    scoreboard players set #phmH.ray002 phmS. -1
    scoreboard players set #phmH.ray001 phmS. -1
    scoreboard players set #phmH.1 phmS.distance -65
    # 後処理
    tag @e[tag=phmT.hitted] remove phmT.hitted