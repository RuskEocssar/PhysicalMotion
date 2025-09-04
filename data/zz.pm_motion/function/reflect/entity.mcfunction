#> zz.pm_motion:reflect/main
# 反射
# @within
#   function zz.pm_motion:**

## 反射
    # 反射方向を取得
    execute facing entity @e[tag=pmmT.hitted,limit=1,sort=nearest] eyes facing ^ ^ ^-1 rotated ~ 0 positioned 0. 0. 0. run tp 4fe002bb-0-0-0-1 ^ ^ ^1
    data modify storage pm_motion:zz _.pos set from entity 4fe002bb-0-0-0-1 Pos
    execute store result score #pmmH.2 pmmS.1 store result score #pmmH.2 pmmS.x.2 run data get storage pm_motion:zz _.pos[0] 100
    execute store result score #pmmH.2 pmmS.y.1 store result score #pmmH.2 pmmS.y.2 run data get storage pm_motion:zz _.pos[1] 100
    execute store result score #pmmH.2 pmmS.z.1 store result score #pmmH.2 pmmS.z.2 run data get storage pm_motion:zz _.pos[2] 100
    # 法線の変化量を計算
    scoreboard players operation #pmmH.2 pmmS.1 *= @s pmmS.x.1
    scoreboard players operation #pmmH.2 pmmS.y.1 *= @s pmmS.y.1
    scoreboard players operation #pmmH.2 pmmS.z.1 *= @s pmmS.z.1
    scoreboard players operation #pmmH.2 pmmS.1 += #pmmH.2 pmmS.y.1
    scoreboard players operation #pmmH.2 pmmS.1 += #pmmH.2 pmmS.z.1
    scoreboard players operation #pmmH.2 pmmS.1 /= #c100 _
    scoreboard players operation #pmmH.2 pmmS.2 = #pmmH.2 pmmS.1
    scoreboard players operation #pmmH.2 pmmS.1 *= #pmmH.1 pmmS.1
    scoreboard players operation #pmmH.2 pmmS.1 /= #c1000 _
    scoreboard players operation #pmmH.2 pmmS.1 += #pmmH.2 pmmS.2
    # 変化量ベクトルを加算
    scoreboard players operation #pmmH.2 pmmS.x.2 *= #pmmH.2 pmmS.1
    scoreboard players operation #pmmH.2 pmmS.y.2 *= #pmmH.2 pmmS.1
    scoreboard players operation #pmmH.2 pmmS.z.2 *= #pmmH.2 pmmS.1
    scoreboard players operation #pmmH.2 pmmS.x.2 /= #c100 _
    scoreboard players operation #pmmH.2 pmmS.y.2 /= #c100 _
    scoreboard players operation #pmmH.2 pmmS.z.2 /= #c100 _
    scoreboard players operation @s pmmS.x.1 -= #pmmH.2 pmmS.x.2
    scoreboard players operation @s pmmS.y.1 -= #pmmH.2 pmmS.y.2
    scoreboard players operation @s pmmS.z.1 -= #pmmH.2 pmmS.z.2