#> zz.pm_motion:acc/acceleration
# 加速度の計算
# @within
#   function zz.pm_motion:**

## 加速度
    # 粘性抵抗 (速度に比例した抵抗)
    execute store result score #pmmH.1 pmmS.4 run data get storage pm_motion:zz/core data.c_drag 1000
    execute at @s if block ~ ~ ~ #zz.pm_motion:liquid store result score #pmmH.1 pmmS.4 run data get storage pm_motion:zz/core data.c_ldrag 1000
    execute unless score #pmmH.1 pmmS.4 matches 0 run function zz.pm_motion:drag
    # そのほかの入力条件
    execute if data storage pm_motion:zz/core data.additional[0] run function zz.pm_motion:env/main
    # 加算
    scoreboard players operation #entity pmmS.x.2 += #entity pmmS.x.1
    scoreboard players operation #entity pmmS.y.2 += #entity pmmS.y.1
    scoreboard players operation #entity pmmS.z.2 += #entity pmmS.z.1