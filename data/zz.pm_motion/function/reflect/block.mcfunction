#> zz.pm_motion:reflect/block
# 反射
# @within
#   function zz.pm_motion:**

## 反転する
    execute if data storage pm_motion:zz _.hit{x+:1b} run scoreboard players operation @s pmmS.x.1 *= #pmmH.1 pmmS.1
    execute if data storage pm_motion:zz _.hit{x+:1b} run scoreboard players operation @s pmmS.x.1 /= #c-1000 _
    execute if data storage pm_motion:zz _.hit{x-:1b} run scoreboard players operation @s pmmS.x.1 *= #pmmH.1 pmmS.1
    execute if data storage pm_motion:zz _.hit{x-:1b} run scoreboard players operation @s pmmS.x.1 /= #c-1000 _
    execute if data storage pm_motion:zz _.hit{y+:1b} run scoreboard players operation @s pmmS.y.1 *= #pmmH.1 pmmS.1
    execute if data storage pm_motion:zz _.hit{y+:1b} run scoreboard players operation @s pmmS.y.1 /= #c-1000 _
    execute if data storage pm_motion:zz _.hit{y-:1b} run scoreboard players operation @s pmmS.y.1 *= #pmmH.1 pmmS.1
    execute if data storage pm_motion:zz _.hit{y-:1b} run scoreboard players operation @s pmmS.y.1 /= #c-1000 _
    execute if data storage pm_motion:zz _.hit{z+:1b} run scoreboard players operation @s pmmS.z.1 *= #pmmH.1 pmmS.1
    execute if data storage pm_motion:zz _.hit{z+:1b} run scoreboard players operation @s pmmS.z.1 /= #c-1000 _
    execute if data storage pm_motion:zz _.hit{z-:1b} run scoreboard players operation @s pmmS.z.1 *= #pmmH.1 pmmS.1
    execute if data storage pm_motion:zz _.hit{z-:1b} run scoreboard players operation @s pmmS.z.1 /= #c-1000 _