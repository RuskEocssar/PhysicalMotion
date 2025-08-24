#> zz.ph_motion:core/drag/main
# 加速度の計算
# @within
#   function zz.ph_motion:core/**

## 空気抵抗
    # 粘性抵抗 (速度に比例した抵抗)
    scoreboard players operation #phmH.2 phmS.x.1 = @s phmS.x.1
    scoreboard players operation #phmH.2 phmS.y.1 = @s phmS.y.1
    scoreboard players operation #phmH.2 phmS.z.1 = @s phmS.z.1
    scoreboard players operation #phmH.2 phmS.x.1 *= #phmH.1 phmS.4
    scoreboard players operation #phmH.2 phmS.y.1 *= #phmH.1 phmS.4
    scoreboard players operation #phmH.2 phmS.z.1 *= #phmH.1 phmS.4
    scoreboard players operation #phmH.2 phmS.x.1 /= #c1000 _
    scoreboard players operation #phmH.2 phmS.y.1 /= #c1000 _
    scoreboard players operation #phmH.2 phmS.z.1 /= #c1000 _
    # 加算
    scoreboard players operation #entity phmS.x.2 -= #phmH.2 phmS.x.1
    scoreboard players operation #entity phmS.y.2 -= #phmH.2 phmS.y.1
    scoreboard players operation #entity phmS.z.2 -= #phmH.2 phmS.z.1