#> zz.pm_motion:move/tick
# 速度の計算
# @within
#   function zz.pm_motion:**

## 速度の計算
    # 加速度を加算
    scoreboard players operation #entity pmmS.x.2 *= #entity pmmS.time
    scoreboard players operation #entity pmmS.y.2 *= #entity pmmS.time
    scoreboard players operation #entity pmmS.z.2 *= #entity pmmS.time
    scoreboard players operation #entity pmmS.x.2 /= #c1000 _
    scoreboard players operation #entity pmmS.y.2 /= #c1000 _
    scoreboard players operation #entity pmmS.z.2 /= #c1000 _
    # 速度に加算
    scoreboard players operation @s pmmS.x.1 += #entity pmmS.x.2
    scoreboard players operation @s pmmS.y.1 += #entity pmmS.y.2
    scoreboard players operation @s pmmS.z.1 += #entity pmmS.z.2