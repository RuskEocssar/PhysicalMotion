#> zz.pm_motion:move/end
# 終了
# @within
#   function zz.pm_motion:**

## データの処理
    # イベント
    execute unless data storage pm_motion:zz data.events{last:""} run function zz.pm_motion:move/macro/last with storage pm_motion:zz data.events
    execute if data storage pm_motion:zz data{kill:"this"} run kill @s
    execute if data storage pm_motion:zz data{kill:"all"} run function pm_motion:kill_all
    # スコア
    scoreboard players reset @s pmmS.x.1
    scoreboard players reset @s pmmS.y.1
    scoreboard players reset @s pmmS.z.1
    scoreboard players reset @s pmmS.time
    scoreboard players reset @s pmmS.distance
    scoreboard players reset @s pmmS.count
    # その他
    tag @s remove pmmT.motion