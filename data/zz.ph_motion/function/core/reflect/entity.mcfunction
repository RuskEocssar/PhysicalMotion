#> zz.ph_motion:core/reflect/main
# 反射
# @within
#   function zz.ph_motion:core/**

## 反射
    # 反射方向を取得
    execute facing entity @e[tag=phmT.hitted,limit=1,sort=nearest] eyes facing ^ ^ ^-1 positioned 0. 0. 0. run tp 4fe002bb-0-0-0-1 ^ ^ ^1
    execute store result score #phmH.2 phmS.1 store result score #phmH.2 phmS.x.2 run data get entity 4fe002bb-0-0-0-1 Pos[0] 100
    execute store result score #phmH.2 phmS.y.1 store result score #phmH.2 phmS.y.2 run data get entity 4fe002bb-0-0-0-1 Pos[1] 100
    execute store result score #phmH.2 phmS.z.1 store result score #phmH.2 phmS.z.2 run data get entity 4fe002bb-0-0-0-1 Pos[2] 100
    # 法線の変化量を計算
    scoreboard players operation #phmH.2 phmS.1 *= @s phmS.x.1
    scoreboard players operation #phmH.2 phmS.y.1 *= @s phmS.y.1
    scoreboard players operation #phmH.2 phmS.z.1 *= @s phmS.z.1
    scoreboard players operation #phmH.2 phmS.1 *= #phmH.2 phmS.y.1
    scoreboard players operation #phmH.2 phmS.1 *= #phmH.2 phmS.z.1
    scoreboard players operation #phmH.2 phmS.1 /= #c100 _
    scoreboard players operation #phmH.2 phmS.2 = #phmH.2 phmS.1
    scoreboard players operation #phmH.2 phmS.1 *= #phmH.1 phmS.1
    scoreboard players operation #phmH.2 phmS.1 /= #c1000 _
    scoreboard players operation #phmH.2 phmS.1 += #phmH.2 phmS.2
    # 変化量ベクトルを加算
    scoreboard players operation #phmH.2 phmS.x.2 *= #phmH.2 phmS.1
    scoreboard players operation #phmH.2 phmS.y.2 *= #phmH.2 phmS.1
    scoreboard players operation #phmH.2 phmS.z.2 *= #phmH.2 phmS.1
    scoreboard players operation #phmH.2 phmS.x.2 /= #c100 _
    scoreboard players operation #phmH.2 phmS.y.2 /= #c100 _
    scoreboard players operation #phmH.2 phmS.z.2 /= #c100 _
    scoreboard players operation @s phmS.x.1 += #phmH.2 phmS.x.2
    scoreboard players operation @s phmS.y.1 += #phmH.2 phmS.y.2
    scoreboard players operation @s phmS.z.1 += #phmH.2 phmS.z.2