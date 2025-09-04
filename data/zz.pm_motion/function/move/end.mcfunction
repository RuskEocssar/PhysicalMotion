#> zz.pm_motion:move/end
# 終了
# @within
#   function zz.pm_motion:**

## データの処理
    # イベント
    execute unless data storage pm_motion:zz data.events{time_last:""} run function zz.pm_motion:move/macro/time_last with storage pm_motion:zz data.events
    # スコア
    scoreboard players reset @s pmmS.x.1
    scoreboard players reset @s pmmS.y.1
    scoreboard players reset @s pmmS.z.1
    scoreboard players reset @s pmmS.time
    scoreboard players reset @s pmmS.distance
    scoreboard players reset @s pmmS.count
    # その他
    tag @s remove pmmT.motion