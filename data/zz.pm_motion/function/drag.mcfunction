#> zz.pm_motion:drag/main
# 加速度の計算
# @within
#   function zz.pm_motion:**

## 空気抵抗
    # 粘性抵抗 (速度に比例した抵抗)
    scoreboard players operation #pmmH.2 pmmS.x.1 = @s pmmS.x.1
    scoreboard players operation #pmmH.2 pmmS.y.1 = @s pmmS.y.1
    scoreboard players operation #pmmH.2 pmmS.z.1 = @s pmmS.z.1
    scoreboard players operation #pmmH.2 pmmS.x.1 *= #pmmH.1 pmmS.4
    scoreboard players operation #pmmH.2 pmmS.y.1 *= #pmmH.1 pmmS.4
    scoreboard players operation #pmmH.2 pmmS.z.1 *= #pmmH.1 pmmS.4
    scoreboard players operation #pmmH.2 pmmS.x.1 /= #c1000 _
    scoreboard players operation #pmmH.2 pmmS.y.1 /= #c1000 _
    scoreboard players operation #pmmH.2 pmmS.z.1 /= #c1000 _
    # 加算
    scoreboard players operation #entity pmmS.x.2 -= #pmmH.2 pmmS.x.1
    scoreboard players operation #entity pmmS.y.2 -= #pmmH.2 pmmS.y.1
    scoreboard players operation #entity pmmS.z.2 -= #pmmH.2 pmmS.z.1