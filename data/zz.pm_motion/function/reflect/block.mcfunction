#> zz.pm_motion:reflect/block
# 反射
# @within
#   function zz.pm_motion:**

## 反射
    # スコア
    scoreboard players operation #pmmH.2 pmmS.x.1 = @s pmmS.x.1
    scoreboard players operation #pmmH.2 pmmS.y.1 = @s pmmS.y.1
    scoreboard players operation #pmmH.2 pmmS.z.1 = @s pmmS.z.1
    # 反転する
    execute if score #pmmH.2 pmmS.x.1 matches 1.. if block ~-0.01 ~ ~ #zz.pm_motion:through unless block ~0.01 ~ ~ #zz.pm_motion:through run scoreboard players operation @s pmmS.x.1 *= #pmmH.1 pmmS.1
    execute if score #pmmH.2 pmmS.x.1 matches ..-1 if block ~0.01 ~ ~ #zz.pm_motion:through unless block ~-0.01 ~ ~ #zz.pm_motion:through run scoreboard players operation @s pmmS.x.1 *= #pmmH.1 pmmS.1
    execute if score #pmmH.2 pmmS.y.1 matches 1.. if block ~ ~-0.01 ~ #zz.pm_motion:through unless block ~ ~0.01 ~ #zz.pm_motion:through run scoreboard players operation @s pmmS.y.1 *= #pmmH.1 pmmS.1
    execute if score #pmmH.2 pmmS.y.1 matches ..-1 if block ~ ~0.01 ~ #zz.pm_motion:through unless block ~ ~-0.01 ~ #zz.pm_motion:through run scoreboard players operation @s pmmS.y.1 *= #pmmH.1 pmmS.1
    execute if score #pmmH.2 pmmS.z.1 matches 1.. if block ~ ~ ~-0.01 #zz.pm_motion:through unless block ~ ~ ~0.01 #zz.pm_motion:through run scoreboard players operation @s pmmS.z.1 *= #pmmH.1 pmmS.1
    execute if score #pmmH.2 pmmS.z.1 matches ..-1 if block ~ ~ ~0.01 #zz.pm_motion:through unless block ~ ~ ~-0.01 #zz.pm_motion:through run scoreboard players operation @s pmmS.z.1 *= #pmmH.1 pmmS.1
    # 除算
    execute unless score #pmmH.2 pmmS.x.1 = @s pmmS.x.1 run scoreboard players operation @s pmmS.x.1 /= #c-1000 _
    execute unless score #pmmH.2 pmmS.y.1 = @s pmmS.y.1 run scoreboard players operation @s pmmS.y.1 /= #c-1000 _
    execute unless score #pmmH.2 pmmS.z.1 = @s pmmS.z.1 run scoreboard players operation @s pmmS.z.1 /= #c-1000 _