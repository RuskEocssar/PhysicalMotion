#> zz.pm_motion:move/hit
# 反射の終了
# @within
#   function zz.pm_motion:**

## 反射の終了
    scoreboard players set @s pmmS.time 0
    execute unless data storage pm_motion:zz data.events{hit_last:""} run function zz.pm_motion:ray/macro/hit_last with storage pm_motion:zz data.events