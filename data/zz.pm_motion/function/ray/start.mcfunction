#> zz.pm_motion:ray/start
# 視線上を探査
# @within
#   function zz.pm_motion:**

## 衝突を判定
    # スルーするエンティティを検索
    execute store result storage pm_motion:zz _.id int 1 run scoreboard players get @s pmmS.id
    function zz.pm_motion:ray/macro/through_entity with storage pm_motion:zz _
    tag @s add pmmT.through
    # 探査を開始
    execute positioned 0.0 0.0 0.0 positioned ^ ^ ^2 positioned 0.0 ~ ~ positioned ^ ^ ^-1 facing 0.0 0.0 0.0 positioned as @s run tp 4fe002bb-0-0-0-1 ~ ~ ~ ~ ~
    function zz.pm_motion:ray/064
    # 衝突が起きなかった場合
    execute if score #pmmH.root pmmS. matches 0 store result storage pm_motion:zz _.distance float 0.01 run scoreboard players get #entity pmmS.distance
    execute if score #pmmH.root pmmS. matches 0 run function zz.pm_motion:ray/macro/end_point with storage pm_motion:zz _

## 後処理
    tag @e[tag=pmmT.through] remove pmmT.through