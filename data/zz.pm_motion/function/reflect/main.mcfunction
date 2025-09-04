#> zz.pm_motion:reflect/main
# 反射
# @within
#   function zz.pm_motion:**

## 反射
    # スコア
    scoreboard players remove @s pmmS.count 1
    # 衝突対象
    execute unless data storage pm_motion:zz _.hit{x+:0b,x-:0b,y+:0b,y-:0b,z+:0b,z-:0b} run function zz.pm_motion:reflect/block
    execute if data storage pm_motion:zz _.hit{entity:1b} run function zz.pm_motion:reflect/entity