#> zz.pm_motion:ray/hit_point
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
    scoreboard players operation #pmmH.2 pmmS.time = #pmmH.1 pmmS.time
    scoreboard players operation #entity pmmS.time -= #pmmH.1 pmmS.time
    # 探査の停止
    scoreboard players set #pmmH.ray064 pmmS. -2
    scoreboard players set #pmmH.ray032 pmmS. -2
    scoreboard players set #pmmH.ray016 pmmS. -2
    scoreboard players set #pmmH.ray008 pmmS. -2
    scoreboard players set #pmmH.ray004 pmmS. -2
    scoreboard players set #pmmH.ray002 pmmS. -2
    scoreboard players set #pmmH.1 pmmS.distance -129