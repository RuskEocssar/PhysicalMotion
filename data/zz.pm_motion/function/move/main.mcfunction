#> zz.pm_motion:move/main
# 移動
# @within
#   function zz.pm_motion:**

## 移動
    # 移動距離の計算
    scoreboard players operation #entity pmmS.distance = @s pmmS.x.1
    scoreboard players operation #pmmH.2 pmmS.y.1 = @s pmmS.y.1
    scoreboard players operation #pmmH.2 pmmS.z.1 = @s pmmS.z.1
    execute as 4fe002bb-0-0-0-1 run function zz.pm_motion:move/distance
    # 距離上限を反映
    scoreboard players operation #entity pmmS.distance < @s pmmS.distance
    # 衝突を判定
    scoreboard players set #pmmH.root pmmS. 0
    scoreboard players set #pmmH.2 pmmS.time 0
    scoreboard players operation #pmmH.1 pmmS.time = #entity pmmS.time
    scoreboard players operation #pmmH.1 pmmS.distance = #entity pmmS.distance
    data modify storage pm_motion:zz _.hit set value {x+:0b,x-:0b,y+:0b,y-:0b,z+:0b,z-:0b,entity:0b}
    execute rotated as 4fe002bb-0-0-0-1 run function zz.pm_motion:ray/start
    # 加速度を加算
    function zz.pm_motion:move/acceleration
    # 速度の計算
    function zz.pm_motion:move/velocity
    # 衝突時
    execute if score #pmmH.root pmmS. matches 1.. at @s rotated as 4fe002bb-0-0-0-1 run function zz.pm_motion:move/hit

## ループで実行
    execute if score #pmmH.2 pmmS.time matches 1.. at @s run function zz.pm_motion:move/main