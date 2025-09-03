say zz.pm_motion:ray/end_point
# 終点
# @within
#   function zz.pm_motion:**

## 終点
    execute if data storage pm_motion:zz data{rotate:true} run tp @s ~ ~ ~ ~ ~
    execute if data storage pm_motion:zz data{rotate:false} run tp @s ~ ~ ~
    scoreboard players set #pmmH.1 pmmS.time 0