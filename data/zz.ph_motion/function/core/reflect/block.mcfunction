#> zz.ph_motion:core/reflect/block
# 反射
# @within
#   function zz.ph_motion:core/**

## 反射
    # スコア
    scoreboard players operation #phmH.2 phmS.x.1 = @s phmS.x.1
    scoreboard players operation #phmH.2 phmS.y.1 = @s phmS.y.1
    scoreboard players operation #phmH.2 phmS.z.1 = @s phmS.z.1
    # 反転する
    execute if score #phmH.2 phmS.x.1 matches 1.. if block ~-0.01 ~ ~ #zz.ph_motion:through unless block ~0.01 ~ ~ #zz.ph_motion:through run scoreboard players operation @s phmS.x.1 *= #phmH.1 phmS.1
    execute if score #phmH.2 phmS.x.1 matches ..-1 if block ~0.01 ~ ~ #zz.ph_motion:through unless block ~-0.01 ~ ~ #zz.ph_motion:through run scoreboard players operation @s phmS.x.1 *= #phmH.1 phmS.1
    execute if score #phmH.2 phmS.y.1 matches 1.. if block ~ ~-0.01 ~ #zz.ph_motion:through unless block ~ ~0.01 ~ #zz.ph_motion:through run scoreboard players operation @s phmS.y.1 *= #phmH.1 phmS.1
    execute if score #phmH.2 phmS.y.1 matches ..-1 if block ~ ~0.01 ~ #zz.ph_motion:through unless block ~ ~-0.01 ~ #zz.ph_motion:through run scoreboard players operation @s phmS.y.1 *= #phmH.1 phmS.1
    execute if score #phmH.2 phmS.z.1 matches 1.. if block ~ ~ ~-0.01 #zz.ph_motion:through unless block ~ ~ ~0.01 #zz.ph_motion:through run scoreboard players operation @s phmS.z.1 *= #phmH.1 phmS.1
    execute if score #phmH.2 phmS.z.1 matches ..-1 if block ~ ~ ~0.01 #zz.ph_motion:through unless block ~ ~ ~-0.01 #zz.ph_motion:through run scoreboard players operation @s phmS.z.1 *= #phmH.1 phmS.1
    # 除算
    execute unless score #phmH.2 phmS.x.1 = @s phmS.x.1 run scoreboard players operation @s phmS.x.1 /= #c-1000 _
    execute unless score #phmH.2 phmS.y.1 = @s phmS.y.1 run scoreboard players operation @s phmS.y.1 /= #c-1000 _
    execute unless score #phmH.2 phmS.z.1 = @s phmS.z.1 run scoreboard players operation @s phmS.z.1 /= #c-1000 _