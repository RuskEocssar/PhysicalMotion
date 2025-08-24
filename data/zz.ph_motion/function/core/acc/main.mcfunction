#> zz.ph_motion:core/acc/main
# 加速度の計算
# @within
#   function zz.ph_motion:core/**

## 加速度
    # 粘性抵抗 (速度に比例した抵抗)
    execute store result score #phmH.1 phmS.4 run data get storage ph_motion:zz/core data.c_drag 1000
    execute at @s if block ~ ~ ~ #zz.ph_motion:liquid store result score #phmH.1 phmS.4 run data get storage ph_motion:zz/core data.c_ldrag 1000
    execute unless score #phmH.1 phmS.4 matches 0 run function zz.ph_motion:core/drag
    # そのほかの入力条件
    execute if data storage ph_motion:zz/core data.additional[0] run function zz.ph_motion:core/env/main
    # 加算
    scoreboard players operation #entity phmS.x.2 += #entity phmS.x.1
    scoreboard players operation #entity phmS.y.2 += #entity phmS.y.1
    scoreboard players operation #entity phmS.z.2 += #entity phmS.z.1