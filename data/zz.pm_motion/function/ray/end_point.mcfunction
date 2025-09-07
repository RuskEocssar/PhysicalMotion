#> zz.pm_motion:ray/end_point
# 終点
# @within
#   function zz.pm_motion:**

## 終点
    execute if data storage pm_motion:zz data{rotate:true} run tp @s ~ ~ ~ ~ ~
    execute if data storage pm_motion:zz data{rotate:false} run tp @s ~ ~ ~
    scoreboard players operation @s pmmS.distance -= #entity pmmS.distance
    execute if score @s pmmS.distance matches ..0 run scoreboard players set @s pmmS.time 0
    scoreboard players set #entity pmmS.time 0